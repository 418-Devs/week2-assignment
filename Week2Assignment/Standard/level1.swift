//
//  level1.swift
//  Week2Assignment
//
//  Created by 서광용 on 6/4/25.
//

struct Level1 {
    static func run() {
        let sum: (Int, Int) -> String = { a, b in
            return "두 수의 합은 \(a + b)입니다."
        }
        
        // sum 계산 방식을 calculate 함수에 전달
        calculate(closure: sum)
    }
    
    static func calculate(closure: (Int, Int) -> String) {
        // 내부에서 sum(3, 7) 호출과 동일
        print(closure(3, 7))
    }
}
