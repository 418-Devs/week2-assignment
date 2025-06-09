//
//  problem03.swift
//  Week2Assignment
//
//  Created by 김우성 on 6/4/25.
//

import Foundation

/// 필수 문제 3
func problem03() {
    
    // 1. Int 배열 짝수번째 요소 제거 함수
    func a(_ input: [Int]) -> [Int] {
        input.filter { $0 % 2 == 1 }
    }
    
    print(a([1, 2, 3, 4, 5]))
    
    
    // 2. String 배열 짝수번째 요소 제거 함수
    func b(_ input: [String]) -> [String] {
        input.enumerated().compactMap { $0.offset % 2 == 0 ? $0.element : nil
        }
        // .enumerated() = 컬렉션의 각 요소에 대해 (offset: Int, element: String) 튜플 생성
        // .compactMap = 각 요소를 확인하며 변환 (map과 다르게 nil을 걸러냄)
        // { 조건 } - 현재 확인중인 튜플의 offset을 2로 나눈 나머지가 0이면 (짝수면) element 반환, 아니면 nil 반환
    }
    
    print(b(["가", "나", "다", "라", "마"]))
    
    
    // 3. 제네릭 짝수번째 요소 제거 함수
    func c<T>(_ input: [T]) -> [T] {
        input.enumerated().compactMap { $0.offset % 2 == 0 ? $0.element : nil
        }
//        var result: [T] = []
//        for (index, element) in input.enumerated() {
//            if index % 2 == 0 { result.append(element) }
//        }
//        return result
    }
    
    print(c([1, 2, 3, 4, 5]))
    print(c(["가", "나", "다", "라", "마"]))
    
    
    // 4. Numeric 프로토콜을 준수하는 제네릭 짝수번째 요소 제거 함수
    func d<T: Numeric>(_ input: [T]) -> [T] {
        var result: [T] = []
        for (index, element) in input.enumerated() {
            if index % 2 == 0 { result.append(element) }
        }
        return result
    }
    
    print(d([1, 2, 3, 4, 5]))
    //    print(d(["가", "나", "다", "라", "마"])) // Numeric 이 아니기 때문에 컴파일 에러
}
