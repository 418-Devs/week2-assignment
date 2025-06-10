# week2-assignment

## ✨ Summary

- 필수 문제 Essential1 ~ 1 ~ Challenge4 도전 과제 구현 완료
- 각 문제별 요구사항을 충족하며, IntroducibleProtocol 기반 설계 적용
- MVC 아키텍처 구조로 View, Model, Controller를 분리하였습니다.
- BaseBall 과제 처럼 사용자 입력을 받아 원하는 문제를 선택하여 볼 수 있게 처리하였습니다.

- 각 과제별 요구사항 충족 및 예외 처리 로직 포함
- 순환 참조, 제네릭 제약 조건, 프로토콜 기본 동작 등 다양한 Swift 개념 활용
---

🔍 부족한 점이나 개선할 부분 있다면 언제든지 피드백 부탁드립니다 🙇🏻‍♂️

## 📁 Folder Structure
├── Challenges                # 도전 과제 문제 풀이 (선택 과제)  
│   ├── 📁 Challenge1         # 자동차 시스템 설계 과제  
│   │   ├── Car.swift  
│   │   ├── Electric.swift  
│   │   ├── Gasoline.swift  
│   │   ├── Hybrid.swift  
│   │   └── Challenge1.swift  
│   ├── Challenge2.swift      # Introducible 프로토콜 기본 구현  
│   ├── Challenge3.swift      # 제네릭 + Comparable 정렬  
│   └── Challenge4.swift      # 클래스 순환 참조 및 해제  
├── Essentials               # 필수 문제 풀이  
│   ├── Essential1.swift  
│   ├── Essential2.swift  
│   ├── Essential3.swift  
│   ├── Essential4.swift  
│   └── Essential5.swift  
├── Protocols                # 프로토콜 정의  
│   └── IntroducibleProtocol.swift  
├── Controller.swift            # 뷰 로직 제어 컨트롤러  
├── Model.swift                # 데이터 구조 정의  
├── View.swift                     # 출력 관련 뷰  
├── Message.swift             # 출력 메시지 정의  
└── main.swift               # 진입점  

> 전체적으로 **MVC 구조**에 기반한 폴더 설계이며,  
필수 문제 및 선택 과제를 `Essentials`와 `Challenges`로 구분하여 관리했습니다.  

## ✅ 필수 문제 실행 결과

### 🧩 Essential1
<img width="382" alt="스크린샷 2025-06-08 21 51 07" src="https://github.com/user-attachments/assets/157161f7-a7d9-4083-b08f-69adb243807f" />

### 🧩 Essential2
<img width="247" alt="스크린샷 2025-06-08 21 51 54" src="https://github.com/user-attachments/assets/e4506c27-419a-4f0d-a60c-fe7aa84d1f87" />

### 🧩 Essential3
<img width="224" alt="스크린샷 2025-06-08 21 52 21" src="https://github.com/user-attachments/assets/67a118fa-4669-41f0-a8b2-a592d59ae549" />

### 🧩 Essential4
<img width="214" alt="스크린샷 2025-06-08 21 54 28" src="https://github.com/user-attachments/assets/dccc8243-3df4-4be6-8eb7-cb1478e208d1" />

### 🧩 Essential5
#### ✅ 정상 입력 처리
<img width="245" alt="스크린샷 2025-06-08 21 53 10" src="https://github.com/user-attachments/assets/8116e5e0-495d-412a-88aa-6df5d01af288" />

#### ❗️ 주소 누락 시 에러 처리
<img width="242" alt="스크린샷 2025-06-08 21 55 04" src="https://github.com/user-attachments/assets/823ade71-7347-4263-894c-09fad2a074d8" />

#### ❗️ 배송 전 상태 에러 처리
<img width="239" alt="스크린샷 2025-06-08 21 56 18" src="https://github.com/user-attachments/assets/bc38dd1a-532a-4596-8ebb-00c90d918e70" />

#### ❗️ 시스템 에러 처리
<img width="270" alt="스크린샷 2025-06-08 21 56 57" src="https://github.com/user-attachments/assets/af5f6982-972c-467d-80b9-3c32640db8af" />

## ✅ 도전 문제 실행 결과

### 🧩 Challenge1
<img width="389" alt="스크린샷 2025-06-10 02 48 28" src="https://github.com/user-attachments/assets/89eebcde-b199-446e-9916-b736610778e6" />

### 🧩 Challenge2
<img width="182" alt="스크린샷 2025-06-10 02 48 49" src="https://github.com/user-attachments/assets/0c72d6bb-c25d-4260-9225-f17c6ee6089f" />

### 🧩 Challenge3
<img width="417" alt="스크린샷 2025-06-10 02 49 13" src="https://github.com/user-attachments/assets/5f88ffc3-477f-4355-99c6-a04296306585" />

### 🧩 Challenge4
<img width="262" alt="스크린샷 2025-06-10 02 49 32" src="https://github.com/user-attachments/assets/34025930-cde6-4975-9aa2-e3e672a643ee" />


