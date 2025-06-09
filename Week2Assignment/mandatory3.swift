//
//  mandatory3.swift
//  Week2Assignment
//
//  Created by Yoon on 6/4/25.
//
// 필수문제 3

import Foundation

// Int배열의 짝수번째 요소를 제거해서 반환하는 함수 a
func a(_ arr: [Int]) -> [Int] {
    arr.enumerated()
        .filter { $0.offset % 2 == 0 }
        .map { $0.element }
}

// String 배열의 짝수번째 요소를 제거해서 반환하는 함수 b
func b(_ arr: [String]) -> [String] {
    arr.enumerated()
        .filter { $0.offset % 2 == 0 }
        .map { $0.element }
}

// a와 b를 제네릭을 사용하여 하나로 대체한 함수 c
func c<T>(_ arr: [T]) -> [T] {
    arr.enumerated()
        .filter { $0.offset % 2 == 0 }
        .map { $0.element }
}

// 파라미터의 타입을 << 'Numeric 프로토콜'을 준수하는 타입의 요소를 가진 배열 >>로 변경한 함수

func d<T: Numeric>(_ arr: [T]) -> [T] {
    arr.enumerated()
        .filter { $0.offset % 2 == 0 }
        .map { $0.element }
}

// 추가 과제 isMultiple(of: 2) 사용해보기
func e<T: Numeric>(_ arr: [T]) -> [T] {
    arr.enumerated()
        .filter { $0.offset.isMultiple(of: 2) }
        .map { $0.element }
}

func main3() {
    print(a([1, 2, 3, 4, 5]))
    print(b(["가", "나", "다", "라", "마"]))
    print("함수 c")
    print(c([1, 2, 3, 4, 5]))
    print(c(["가", "나", "다", "라", "마"]))
}
