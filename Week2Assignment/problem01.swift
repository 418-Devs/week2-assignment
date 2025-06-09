//
//  problem01.swift
//  Week2Assignment
//
//  Created by 김우성 on 6/4/25.
//

import Foundation

/// 필수 문제 1
func problem01() {
    // 1. 클로저 설계
    let sum: (Int, Int) -> String = { a, b in
        "두 수의 합은 \(a + b) 입니다."
    }
    
    // 2. sum 호출
    print(sum(10, 20))
    
    // 3. sum과 같은 타입의 클로저를 파라미터로 받는 함수
    func calculate(closure: (Int, Int) -> String) {
        let result = closure(10, 20)
        
        print(result)
    }
    
    calculate(closure: sum)
}
