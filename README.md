# 📘 Week2Assignment - 필수 구현 과제 모듈화 프로젝트

## 📖 목차  
1. [프로젝트 소개]
2. [주요 기능]
3. [프로젝트 구조]
4. [Trouble Shooting]
5. [레벨별 구현 요약]

---

## 👨‍🏫 프로젝트 소개  
- Swift 언어 학습을 위한 콘솔 기반 과제 프로젝트입니다.  
- 필수 구현 과제(`StandardLevel1 ~ 5`)는 클로저, 고차함수, 제네릭, 열거형, 에러 처리 등 Swift의 기초 개념을 중심으로 구성되어 있습니다.
- 도전 구현 과제(`ChallengeLevel1 ~ 4`)는 상속, 연산 프로퍼티, 프로토콜, ARC, 클로저 순환 참조 등 심화 개념을 다룹니다.
- 모든 문제는 각각의 파일로 모듈화되어 있으며, `main.swift`에서 실행할 수 있도록 구성되어 있습니다.

---

## 🍏 주요 기능  
- 각 레벨 별 문제 모듈 분리  
- `main.swift`에서 사용자 선택을 통한 문제 실행  
- `readLine()` 및 switch 문을 이용한 메뉴 구조  
- 문제별 `run()` 함수로 독립 실행 가능  
- 열거형과 에러 처리 포함한 예외 상황 처리 로직  
- **UX 개선**: 단계별 출력, 엔터 입력 대기, 0 입력 시 종료 가능

---

## 🗂 프로젝트 구조
> ChallengeLevel3의 내용은 StandardLevel4에 포함되어 있습니다.
```
📦 Week2Assignment
├── 📁 standard
│   ├── StandardLevel1.swift
│   ├── StandardLevel2.swift
│   ├── StandardLevel3.swift
│   ├── StandardLevel4.swift
│   ├── StandardLevel5.swift
├── 📁 challenge
│   ├── ChallengeLevel1.swift
│   ├── ChallengeLevel2.swift
│   ├── ChallengeLevel4.swift
├── main.swift
└── README.md
```

---

## 🧯 Trouble Shooting  

### 📌 출력이 너무 길게 한 번에 표시됨  
- 개선: switch 문 구조로 선택 실행  
- UX 향상: 메뉴, 대기(Enter 입력), 종료 조건(0 입력) 추가  

### 📌 반복문 종료 문제 해결 (outerLoop 사용)
- 전역 while true에서 return으로는 탈출 불가 → outerLoop 레이블로 명시적 종료 처리
- break outerLoop 사용으로 종료 흐름 명확화

---

## 📗 Standard 구현 요약

### ✅ StandardLevel1.swift
- **클로저 기본 개념 학습**
- `(Int, Int) -> String` 형태의 클로저를 정의 및 사용
- 클로저를 파라미터로 받는 함수에 전달하고 호출 흐름 확인

### ✅ StandardLevel2.swift
- 고차 함수(map) 이해 및 직접 구현
- filter + map 조합으로 짝수만 필터링 후 문자열 변환
- myMap 함수를 직접 구현하여 고차 함수 구조 이해

### ✅ StandardLevel3.swift
- 배열의 짝수 번째 요소 필터링
- [Int], [String] 배열에서 짝수 번째 요소만 추출
- enumerated() 기반 반복문 사용
- 제네릭 + where절을 활용해 Numeric 타입 조건부 처리 구현

### ✅ StandardLevel4.swift
- 프로토콜 기반 다형성 구현
- Introducible 프로토콜 정의 및 Robot, Cat, Dog에 적용
- Robot.name에 didSet 활용하여 변경 감지
- 타입 캐스팅(as?)으로 고유 메서드 호출 로직 구현

### ✅ StandardLevel5.swift
- 열거형 및 에러 처리 학습
- DeliveryStatus, DeliveryError 열거형 정의
- throws, do-catch를 활용한 예외 흐름 처리
- 연관값을 가진 enum 케이스 처리 및 메시지 분기

---

## 📕 Challenge 구현 요약

### ✅ ChallengeLevel1.swift
- Engine 프로토콜 및 커스텀 엔진 타입 정의
- Car, ElectricCar, HybridCar 클래스 설계 및 상속 구조 구현
- 하이브리드 차량의 엔진 변경 기능 구현 및 출력 테스트

### ✅ ChallengeLevel2.swift
- 제네릭과 where절을 활용한 타입 제약
- Comparable 제약 조건이 있을 때만 정렬 가능하도록 메서드 정의
- 조건을 만족하지 않으면 컴파일 에러 발생하는 구조 구현

### ✅ ChallengeLevel3.swift
- StandardLevel4와 연결된 기능 확장
- Introducible 프로토콜 기반 기본 동작 구조 재정의
- Robot만 커스텀 동작 유지, 나머지는 기본 동작 활용

### ✅ ChallengeLevel4.swift
- 클래스 간 strong 참조를 통한 순환 참조 상황 구성
- 클로저 내부에서 Person(A) → Pet(B) → Person(A) 구조 발생
- 캡처 리스트를 활용해 [weak owner]로 순환 참조 방지
- weak 키워드를 통해 메모리 누수 해결 및 deinit 호출 확인

---

📍 모든 `StandardLevelX.swift` 및 `ChallengeLevelX.swift` 파일은 `run()` 함수로 구성되어 있으며, `main.swift`에서 직접 실행 가능하도록 연동되어 있습니다.
