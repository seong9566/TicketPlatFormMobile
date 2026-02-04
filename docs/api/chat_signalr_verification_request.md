# SignalR 신규 채팅방 메시지 수신 검증 요청

## 목적
신규 채팅방 생성 후 상대방이 앱을 사용 중이어도 메시지가 수신되지 않는 현상을 확인하기 위한 백엔드 검증 요청입니다.

## 재현 시나리오
1. 사용자 A가 티켓 상세에서 채팅방 생성
2. 사용자 A가 채팅방에서 메시지 전송
3. 사용자 B가 앱을 실행 중(홈/다른 화면)
4. 기대: 사용자 B가 즉시 메시지 수신 + 채팅 목록 업데이트

## 현재 관찰 로그 (요약)
- 서버 로그에 `Broadcasting message to room_{roomId} ... user_{receiverId}` 기록됨
- `User {id} joined room {roomId}` 로그는 존재
- `user_{userId}` 그룹 가입 로그는 확인되지 않음

## 검증 요청 항목 (필수)
1. **user 그룹 가입 여부**
   - `OnConnectedAsync` 또는 인증 직후 `Groups.AddToGroupAsync(connectionId, $"user_{userId}")` 실행 여부
   - 실제 가입 로그 출력 여부 (connectionId, userId, groupName)

2. **UserIdentifier 설정 확인**
   - SignalR `UserIdentifier`가 JWT claim에서 정상 설정되는지 확인
   - claim 타입 (예: `sub`, `userId`, `nameidentifier`) 정확히 매핑되는지 확인

3. **브로드캐스트 대상 검증**
   - `Clients.Group($"user_{receiverId}")` 호출이 실제로 실행되는지
   - 브로드캐스트 직전에 `receiverId`가 올바른지

4. **연결 상태/다중 연결 확인**
   - 동일 사용자 다중 연결 시 모든 connectionId가 user 그룹에 들어가는지
   - 연결 재시도/재연결 시 group 재가입 여부

5. **수신자 앱 상태 테스트**
   - 홈 화면/채팅 목록/다른 화면 각각에서 메시지 수신 여부 확인

## 요청 로그 추가 (가능하면)
아래 로그를 추가/확인 부탁드립니다.
- OnConnected: `User {userId} connected. ConnectionId={connectionId}`
- JoinUserGroup: `User {userId} joined group user_{userId}. ConnectionId={connectionId}`
- SendMessage: `Broadcast to room_{roomId} and user_{receiverId}`

## 기대 결과
- 수신자가 채팅방에 진입하지 않아도 **user_{receiverId}** 그룹으로 메시지를 실시간 수신
- 채팅 목록/배지 업데이트 즉시 반영

## 회신 요청
검증 결과와 수정 여부(또는 추가 작업 필요 여부) 공유 부탁드립니다.
