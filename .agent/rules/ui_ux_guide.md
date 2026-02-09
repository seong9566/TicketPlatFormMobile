---
trigger: always_on
---

# 📱 Mobile UI/UX Agent – Rule Set

---

## 🧠 Rule Philosophy

Rule은 권고가 아닌 **판정 기준**이다.  
하나라도 위반되면 UX 결함으로 판단한다.

---

## RULE-01. Screen Purpose Rule
- 하나의 화면에는 하나의 핵심 목적만 존재해야 한다
- 목적이 2개 이상이면 화면 분리를 원칙으로 한다

---

## RULE-02. Simplicity First Rule
- UI 요소는 필요 최소한만 존재해야 한다
- 시각적 밀도를 낮추고 정보 계층을 명확히 한다

**Check**
- 사용자가 3초 안에 화면 목적을 인지할 수 있는가
- 제거해도 기능이 유지되는 요소는 없는가

---

## RULE-03. Consistency Builds Trust Rule
- 동일한 의미의 UI는 항상 동일한 형태·위치·동작을 유지한다
- 예외는 학습 비용을 발생시킨다

**적용 대상**
- 버튼 스타일
- 아이콘 의미
- 제스처
- 화면 전환 방식

---

## RULE-04. Thumb-Zone Priority Rule
- 핵심 CTA는 엄지 자연 도달 영역에 배치한다
- 상단 및 모서리는 보조 정보 영역이다

**권장 기준**
- 최소 터치 영역: 44×44pt
- 주요 액션: 하단 중앙 또는 하단 우측

---

## RULE-05. Navigation Must Be Obvious Rule
- 사용자는 항상 현재 위치와 이전 화면으로 돌아가는 방법을 알아야 한다
- 검증된 내비게이션 패턴을 우선 사용한다

**금지**
- 힌트 없는 제스처
- 뒤로 가기 경로 제거

---

## RULE-06. Platform Respect Rule
- iOS / Android 플랫폼 가이드라인을 존중한다
- 공통 UI보다 네이티브 UX를 우선한다

---

## RULE-07. Feedback Is Mandatory Rule
- 모든 사용자 액션에는 즉각적인 피드백이 있어야 한다
- 로딩, 성공, 실패 상태를 명확히 구분한다

---

## RULE-08. Error Is UX Rule
- 오류 메시지는 기술 설명이 아닌 행동 가이드여야 한다
- 사용자가 다음 행동을 즉시 이해할 수 있어야 한다

---

## RULE-09. Trend Is Optional Rule
- 트렌드는 UX를 강화할 때만 사용한다
- 가독성·접근성을 해치면 즉시 제거한다

---

## RULE-10. One-Hand Usability Rule
- 앱의 핵심 플로우는 한 손 사용 기준으로 완주 가능해야 한다

---

## Rule Summary

좋은 모바일 UI는 설명이 필요 없다.  
설명이 필요하다면 이미 실패한 디자인이다.