//
//  level1.swift
//  Week2Assignment
//
//  Created by 서광용 on 6/4/25.
//

struct StandardLevel1 {
    static func run() {
        print("\n👉 [필수 문제 1] 클로저를 이용한 덧셈 전달 및 실행")
        level1()
    }
    
    // MARK: - 클로저를 함수에 전달하여 합계 출력
    private static func level1() {
        // Int 두 개를 받아 String을 반환하는 클로저 정의
        let sum: (Int, Int) -> String = {
            return "두 수의 합은 \($0 + $1)입니다."
        }
        print(sum(3, 7))
        
        // 클로저를 calculate 함수에 전달
        calculate(closure: sum)
    }
    
    // 동일한 형태의 클로저를 받아 실행하는 함수
    private static func calculate(closure: (Int, Int) -> String) {
        // 전달된 클로저를 통해 동일한 동작 실행
        print(closure(3, 7))
    }
}
