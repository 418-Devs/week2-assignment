//
//  level1.swift
//  Week2Assignment
//
//  Created by 서광용 on 6/4/25.
//

struct StandardLevel1 {
    static func run() {
        print("\n👉 [필수 문제 1] 클로저를 매개변수로 전달하여 두 수의 합 계산")
        level1()
    }
    
    // 클로저를 매개변수로 전달하여 두 수의 합 계산
    private static func level1() {
        // 두 개의 Int 값을 파라미터로 받고, 하나의 String 값을 반환하는 클로저
        let sum: (Int, Int) -> String = {
            return "두 수의 합은 \($0 + $1)입니다."
        }
        print(sum(3, 7))
        
        // sum 계산 방식을 calculate 함수에 전달
        calculate(closure: sum)
    }
    
    // sum과 동일한 타입의 클로저를 파라미터로 받고, 반환 값이 없는(void) 함수
    private static func calculate(closure: (Int, Int) -> String) {
        // 내부에서 sum(3, 7) 호출과 동일
        print(closure(3, 7))
    }
}
