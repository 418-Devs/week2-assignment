//
//  Level1.swift
//  Week2Assignment
//
//  Created by 이서린 on 6/4/25.
//
import Foundation

// 1. 클로저 정의
let sum: (Int, Int) -> String = { (a: Int, b: Int) -> String in
    let total = a + b
    return "두 수의 합은 \(total) 입니다"
}

// 2. 클로저를 파라미터로 받는 함수 정의
func calculate(operation: (Int, Int) -> String) -> Void {
    let message = operation(5, 8)
    print("계산 결과: \(message)")
}

// 3. 모든 실행 코드를 함수 안에 넣음
func run() {
    let result = sum(3, 7)
    print(result)

    calculate(operation: sum)
}
