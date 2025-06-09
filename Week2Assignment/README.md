# 📦 418-Devs Week2 Assignment

Swift의 클로저, 고차함수, 제네릭, 프로토콜 및 에러 처리 등 핵심 개념을 실습합니다.  
총 5개의 레벨로 구성되어 있으며, 각 레벨은 `level1`부터 `level5`까지 디렉토리로 나뉘어 있습니다.

---

## ✅ 구현 문제 목록

### ✔️ Level 1 – 클로저 & 고차함수 사용
- [x] Int 두 개를 받아 합을 출력하는 클로저 정의
- [x] 해당 클로저를 파라미터로 받는 함수 `calculate` 정의
- [x] for-in → map 변환
- [x] map + filter 체이닝으로 짝수만 문자열로 변환
- [x] 직접 구현한 고차함수 `myMap` 만들기

### ✔️ Level 2 – 배열 필터링 함수 구현
- [x] Int 배열에서 짝수 인덱스 제거하는 함수 `a`
- [x] String 배열에서 짝수 인덱스 제거하는 함수 `b`
- [x] 위 두 함수를 제네릭으로 통합한 함수 `c`
- [x] Numeric 프로토콜 기반의 제네릭 함수 `d`

### ✔️ Level 3 – Introducible 프로토콜 설계
- [x] name 및 introduce 메서드를 요구하는 Introducible 프로토콜 정의
- [x] Robot, Cat, Dog 타입이 해당 프로토콜 채택
- [x] Robot은 이름 변경 시 이전/이후 값 출력
- [x] 각 타입 고유의 메서드 정의
- [x] Introducible 배열에 인스턴스를 담고 순회하며 메서드 호출

### ✔️ Level 4 – 택배 예측 시스템 구현
- [x] `DeliveryStatus` 열거형 정의
- [x] `DeliveryError` 사용자 정의 에러 정의
- [x] 주소와 배송 상태를 기반으로 배송 예측하는 `predictDeliveryDay` 함수 구현
- [x] do-catch로 오류 처리 및 사용자 메시지 출력

---

## 🛠 작업한 내용 요약

- Swift 클로저 문법과 고차함수의 실전 적용
- 제네릭과 프로토콜을 통한 타입 추상화 연습
- 사용자 정의 에러 타입과 throw-catch 구문 이해
- 객체지향 설계의 기본 구성 요소인 protocol, struct, enum 익히기

---

## 📁 Folder Structure

```plaintext
📦 week2-assignment
├── 📂 level1
│   ├── ClosureExamples.swift          // 클로저 및 calculate 함수
│   ├── HighOrderFunctions.swift       // map, filter, myMap
│
├── 📂 level2
│   ├── FilterIntArray.swift           // 함수 a
│   ├── FilterStringArray.swift        // 함수 b
│   ├── GenericFilter.swift            // 함수 c, d
│
├── 📂 level3
│   ├── Introducible.swift             // 프로토콜 및 채택 타입
│   ├── Robot.swift                    // Robot 타입 구현
│   ├── Cat.swift                      // Cat 타입 구현
│   ├── Dog.swift                      // Dog 타입 구현
│
├── 📂 level4
│   ├── DeliveryStatus.swift           // enum DeliveryStatus
│   ├── DeliveryError.swift            // enum DeliveryError
│   ├── PredictDelivery.swift          // throw 함수 및 예외 처리
│
├── 📂 level5
│   └── (Reserved for 확장 과제)
│
└── 📄 main.swift                       // 진입점, 테스트 및 실행 코드


---

## ✅ 실행 결과 
/Users/seorinlee/Desktop/Screenshot 2025-06-09 at 10.30.55 am.png
/Users/seorinlee/Desktop/Screenshot 2025-06-09 at 10.31.09 am.png
/Users/seorinlee/Desktop/Screenshot 2025-06-09 at 10.31.22 am.png
/Users/seorinlee/Desktop/Screenshot 2025-06-09 at 10.31.43 am.png
/Users/seorinlee/Desktop/Screenshot 2025-06-09 at 10.31.56 am.png
/Users/seorinlee/Desktop/Screenshot 2025-06-09 at 10.33.37 am.png
/Users/seorinlee/Desktop/Screenshot 2025-06-09 at 10.34.03 am.png
