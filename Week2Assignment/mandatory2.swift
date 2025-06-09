//
//  mandatory2.swift
//  Week2Assignment
//
//  Created by Yoon on 6/4/25.
//
// 필수문제 2

import Foundation

func main2() {
    print("----요구사항 1----")
    // 요구사항 1 for-in 문을 map을 사용하는 코드로 변환

    let numbers = [1, 2, 3, 4, 5]
    let result = numbers.map{ String($0) }
    print(result)

    print("----요구사항 2----")
    // 요구사항 2
    // - 입력: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] - 타입: Array<Int>
    // - 출력: [”2”, “4”, “6”, “8”, “10”] - 타입: Array<String>

    // 값이 짝수인 숫자를 추출하는 경우
    let numbers2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    let result2 = numbers2
        .filter { $0 % 2 == 0 }
        .map { String($0) }

    print(result2)

    // 짝수 번째(홀수 인덱스)를 추출하는 경우
    let resultOddIndex = numbers2
        .enumerated()
        .filter { $0.offset % 2 != 0 }
        .map { String($0.element) }
    
    print(resultOddIndex)

    print("----myMap----")
    let resultMyMap = myMap([1, 2, 3, 4, 5]) {
        String($0)
    }
    print(resultMyMap)
}

// myMap 구현
func myMap(_ a: [Int], with operation: (Int) -> String) -> [String] {
    var result: [String] = []
    for number in a {
        result.append(operation(number))
    }
    return result
}
