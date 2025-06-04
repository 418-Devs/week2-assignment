//
//  mandatory1.swift
//  Week2Assignment
//
//  Created by Yoon on 6/4/25.
//
// 필수문제 1

import Foundation

// 두 개의 Int값을 파라미터로 받고 하나의 String 값을 반환하는 클로저를 설계
// 상수 sum에 저장하고 정확한 타입을 명시
let sum: (Int, Int) -> String = {
    "두 수의 합은 \($0 + $1)입니다."
}

// sum과 동일한 타입의 클로저를 파라미터로 받고 반환값이 Void인 함수
// 파라미터로 전달받은 클로저를 호출
func calculate(_ a: Int, _ b: Int, with operation: (Int, Int) -> String) {
    print(operation(a, b))
}

func main1() {
    // sum을 호출하는 코드
    let result = sum(2, 7)
    print(result)

    // calculate함수 호출
    calculate(1, 9, with: sum)

    // 후행 클로저를 사용한 calculate함수 호출
    calculate(10, 20) { "두 수의 곱은 \($0 * $1)입니다" }
}
