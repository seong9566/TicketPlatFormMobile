# SignalR 실시간 채팅 문제 - 서버 측 확인 사항

## 📌 현재 상황
- 클라이언트 측 레이스 컨디션 수정 완료
- 여전히 실시간 메시지 수신 불가
- **HTTP API로 메시지 전송은 성공** (200 응답)
- 재진입 시에만 메시지 확인 가능

---

## 🔍 서버 측 확인 필요 사항

### 1. SignalR Hub의 `JoinRoom` 메서드

**확인 질문**: 클라이언트가 `JoinRoom(roomId)`을 호출할 때 해당 유저가 SignalR 그룹에 정상 추가되나요?

**기대 구현**:
```csharp
public async Task JoinRoom(int roomId)
{
    // ✅ 이 로그가 서버에 찍히는지 확인
    Console.WriteLine($"User {Context.UserIdentifier} joining room {roomId}");
    
    await Groups.AddToGroupAsync(Context.ConnectionId, $"room_{roomId}");
    
    // 입장 알림 브로드캐스트
    await Clients.Group($"room_{roomId}").SendAsync("UserJoined", new {
        userId = int.Parse(Context.UserIdentifier),
        roomId = roomId,
        timestamp = DateTime.UtcNow
    });
}
```

**서버 로그 확인**: 클라이언트가 `JoinRoom`을 호출했을 때 서버 로그에 해당 메시지가 찍히나요?

---

### 2. 메시지 전송 시 브로드캐스트

**확인 질문**: `POST /api/chat/messages` 호출 시 SignalR로 그룹에 브로드캐스트하나요?

**기대 구현**:
```csharp
// ChatController.cs 또는 ChatService.cs
public async Task<MessageResponse> SendMessage(...)
{
    // 1. DB에 메시지 저장
    var message = await _messageRepository.CreateAsync(...);
    
    // 2. SignalR로 그룹에 브로드캐스트 
    await _hubContext.Clients.Group($"room_{roomId}").SendAsync("ReceiveMessage", new {
        messageId = message.Id,
        roomId = message.RoomId,
        senderId = message.SenderId,
        senderNickname = user.Nickname,
        senderProfileImage = user.ProfileImageUrl,
        message = message.Content,
        imageUrl = message.ImageUrl,
        createdAt = message.CreatedAt
    });
    
    return new MessageResponse { ... };
}
```

**확인 사항**:
- `IHubContext<ChatHub>` 주입이 되어있나요?
- `Clients.Group(...)` 호출이 정상 실행되나요?
- 그룹 이름이 `JoinRoom`에서 사용한 것과 일치하나요? (예: `room_1`)

---

### 3. 그룹 이름 일관성

**확인 질문**: `JoinRoom`과 브로드캐스트에서 사용하는 그룹 이름이 동일한가요?

| 위치 | 그룹 이름 |
|------|----------|
| `JoinRoom` | `room_{roomId}` or `Room_{roomId}` |
| `SendMessage` 브로드캐스트 | 동일해야 함 |

**흔한 실수**: 대소문자 차이, 접두사 차이 (`room_` vs `Room_` vs `ChatRoom_`)

---

### 4. JWT 인증 및 UserIdentifier

**확인 질문**: SignalR 연결 시 JWT 토큰이 정상 파싱되어 `Context.UserIdentifier`가 설정되나요?

**기대 구현**:
```csharp
// Program.cs 또는 Startup.cs
services.AddSignalR();

app.UseAuthentication();
app.UseAuthorization();

app.MapHub<ChatHub>("/hubs/chat");
```

**확인 사항**:
```csharp
public async Task JoinRoom(int roomId)
{
    var userId = Context.UserIdentifier;  // ← null이면 문제!
    Console.WriteLine($"UserIdentifier: {userId}");
}
```

---

### 5. 서버 측 디버그 로그 추가 요청

다음 로그를 추가해서 확인 부탁드립니다:

```csharp
public class ChatHub : Hub
{
    public override async Task OnConnectedAsync()
    {
        Console.WriteLine($"[ChatHub] Connected: {Context.ConnectionId}, User: {Context.UserIdentifier}");
        await base.OnConnectedAsync();
    }

    public override async Task OnDisconnectedAsync(Exception? exception)
    {
        Console.WriteLine($"[ChatHub] Disconnected: {Context.ConnectionId}, Error: {exception?.Message}");
        await base.OnDisconnectedAsync(exception);
    }

    public async Task JoinRoom(int roomId)
    {
        Console.WriteLine($"[ChatHub] JoinRoom: roomId={roomId}, connectionId={Context.ConnectionId}, user={Context.UserIdentifier}");
        await Groups.AddToGroupAsync(Context.ConnectionId, $"room_{roomId}");
        Console.WriteLine($"[ChatHub] Added to group: room_{roomId}");
    }
}
```

메시지 전송 시:
```csharp
public async Task<...> SendMessage(...)
{
    Console.WriteLine($"[ChatService] Broadcasting to group: room_{roomId}");
    await _hubContext.Clients.Group($"room_{roomId}").SendAsync("ReceiveMessage", messageDto);
    Console.WriteLine($"[ChatService] Broadcast complete");
}
```

---

## 📋 서버 확인 체크리스트

- [ ] `JoinRoom` 호출 시 서버 로그에 출력되는가?
- [ ] `Groups.AddToGroupAsync`가 정상 호출되는가?
- [ ] 메시지 전송 시 `IHubContext.Clients.Group(...).SendAsync("ReceiveMessage", ...)` 호출되는가?
- [ ] 그룹 이름이 일관되게 사용되는가? (대소문자 주의)
- [ ] `Context.UserIdentifier`가 null이 아닌가?

---

## 🧪 빠른 테스트 방법

서버에서 직접 테스트 브로드캐스트:
```csharp
// 테스트 엔드포인트 추가
[HttpPost("test-broadcast")]
public async Task<IActionResult> TestBroadcast([FromBody] int roomId)
{
    await _hubContext.Clients.Group($"room_{roomId}").SendAsync("ReceiveMessage", new {
        messageId = 999,
        roomId = roomId,
        senderId = 0,
        senderNickname = "테스트",
        message = "테스트 메시지",
        createdAt = DateTime.UtcNow.ToString("o")
    });
    return Ok("Broadcast sent");
}
```
---

# 토스페이먼츠 결제 연동 - 현황 및 인계 사항

## 📌 현재 상황
- `tosspayments_widget_sdk_flutter` (결제위젯 SDK) 기반 연동 완료.
- `PaymentWebView`를 통해 결제 수단 선택 및 이용 약관 동의 영역 활성화.
- 안드로이드 플랫폼 뷰 등록 오류 및 린트 이슈 해결 완료.

---

## 🔍 결제 연동 핵심 확인 사항

### 1. 인증되지 않은 키 에러 (4000) 해결
- **현상**: `PaymentWidget` 로드 시 `errorCode: 4000` 발생.
- **원인**: **'API 개별 연동 키'**와 **'결제위젯 연동 키'**의 혼용.
- **해결책**:
  1. 토스페이먼츠 개발자 센터 접속.
  2. 상단 **[결제위젯 연동 키]** 섹션에서 '이용 신청하기' 완료 (테스트 환경은 사업자 번호 불필요).
  3. 여기서 발급된 전용 클라이언트 키를 `PaymentWebView`의 `clientKey` 변수에 적용.

### 2. UI 커스텀 방식 결정
- **현재 방식 (결제위젯)**: 토스가 제공하는 UI 위젯을 사용. 관리자 페이지에서 결제 수단을 실시간 제어 가능.
- **개별 UI 구현 시**: 사용자가 직접 디자인한 버튼을 사용하려면 일반 결제용 SDK(`tosspayments_flutter`)로 교체하거나 직접 API 연동 필요.

---

## 🛠️ 안드로이드 플랫폼 설정 변경 내역

결제창(InAppWebView)의 정상 작동을 위해 다음 설정이 변경되었습니다:

1. **Manifest 보강** (`android/app/src/main/AndroidManifest.xml`):
   - `android:hardwareAccelerated="true"`: 플랫폼 뷰 렌더링 필수.
   - `android:usesCleartextTraffic="true"`: 일부 결제 완료/실패 페이지 리다이렉트 대응.
   - `android:enableOnBackInvokedCallback="true"`: 안드로이드 13 이상 시스템 백 제스처 대응.

2. **빌드 사양 변경** (`android/app/build.gradle.kts`):
   - `minSdkVersion = 21`: 최신 웹뷰 플러그인 요구 사항 충족.

---

## 📋 결제 연동 체크리스트

- [ ] `PaymentWebView` 내 `clientKey`가 **결제위젯 전용** 테스트 키인가?
- [ ] 서버에서 실제 결제 승인을 담당하는 API(`payment/confirm`)가 토스 시크릿 키로 정상 연동되어 있는가?
- [ ] 안드로이드 에뮬레이터 또는 기기에서 `flutter clean` 후 재빌드 시 웹뷰가 정상 로드되는가?
