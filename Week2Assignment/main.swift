//
//  main.swift
//  Week2Assignment
//
//  Created by 서광용 on 6/3/25.
//

// 사용자가 출력 결과를 읽을 수 있도록 잠시 대기
private func waitForEnter() {
    print("\n 💬 엔터를 누르면 처음으로 돌아갑니다.", terminator: "")
    _ = readLine()
}

outerLoop: while true {
    print("""
📚 실행 가능한 과제 목록

[✅ 필수 구현]
 1. 필수 1번 문제
 2. 필수 2번 문제
 3. 필수 3번 문제
 4. 필수 4번 문제
 5. 필수 5번 문제

[🚀 도전 구현]
 6. 도전 1번 문제
 7. 도전 2번 문제
 8. 도전 3번 문제
 9. 도전 4번 문제
 0. 실행 종료

📌 실행할 번호를 입력해주세요: 
""", terminator: "")
    
    if let input = readLine(), let number = Int(input) {
        
        switch number {
        case 0:
            print("프로그램을 종료합니다.")
            break outerLoop
        case 1:
//            StandardLevel1.run()
            waitForEnter()
            continue
        case 2:
//            StandardLevel2.run()
            waitForEnter()
            continue
        case 3:
//            StandardLevel3.run()
            waitForEnter()
            continue
        case 4:
//            StandardLevel4.run()
            waitForEnter()
            continue
        case 5:
//             StandardLevel5.run()
            waitForEnter()
            continue
        case 6:
            print("ChallengeLevel1 구현 예정")
            // ChallengeLevel1.run()
            waitForEnter()
            continue
        case 7:
            print("ChallengeLevel2 구현 예정")
            // ChallengeLevel2.run()
            waitForEnter()
            continue
        case 8:
            print("ChallengeLevel3 구현 예정")
            // ChallengeLevel3.run()
            waitForEnter()
            continue
        case 9:
            print("ChallengeLevel4 구현 예정")
            // ChallengeLevel4.run()
            waitForEnter()
            continue
        default:
            // 입력값이 0~9 이외의 숫자를 입력한 경우
            print("❌ 올바른 번호를 입력해주세요.")
            waitForEnter()
            continue
        }
    }
    else {
        // 입력값이 Int타입이 아닌 경우
        print("❌ 올바른 번호를 입력해주세요.")
        waitForEnter()
        continue
    }
}

/// case 문에서 0이 입력되었을 경우에, return으로 반복을 종료하려 했었는데
/// return을 써도 while true { ... }가 전역에 있기 때문에 return으로 반복이 끝나지 않았다.
///
/// 그래서 찾은 `outerLoop`
/// outerLoop는 Swift의 "레이블 반복문(labelled loop)" 기능이다.
/// 중첩된 반복문이나 switch문 안에서, 지정한 바깥쪽 반복문을 정확히 종료하고 싶을 때 사용한다고 한다.
///
/// 지금같은 경우, outerLoop: while true { ... } 로 while 루프의 레이블 이름을 지정해주고
/// break outerLoop를 호출하면, 그 레이블이 붙은 while 루프 전체를 종료하게 된다.
