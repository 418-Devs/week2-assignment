//
//  Lavel3.swift
//  Week2Assignment
//
//  Created by 이서린 on 6/4/25.


//1. Int 배열의 짝수번째 요소를 제거해서 반환하는 함수 a 를 작성
import Foundation
func runLevel3(){
    func a(_ input: [Int]) -> [Int]{
        return input.enumerated()
            .filter { (index, _) in index % 2 == 0}
            .map {(_, value) in value }
    }
    let testInput = [1, 2, 3, 4, 5]
    let testOutput = a(testInput)
    print(testOutput)
    
    
// 2. String 배열의 짝수번째 요소를 제거해서 반환하는 함수 `b` 를 작성
    func b(_ input2: [String]) -> [String]{
        return input2.enumerated()
            .filter {(index, _)in index % 2 == 0}
            .map{(_, value) in value }
    }
    let testInput2 = ( ["가" , "나" , "다" , "라" , "마"])
    let testOput2 = b(testInput2)
    print(testOput2)
    
    
// 3. 제네릭을 활용하여 위 두 함수를 하나의 함수로 만들어 , 함수 c 로 작성
    func c<T>(_ input3: [T]) -> [T] {
        return input3.enumerated()
            .filter {(index, _)in index % 2 == 0}
            .map{(_, value) in value }
    }
    let numbers = [1, 2, 3, 4, 5]
    print(c(numbers))
    
    let words = ( ["가" , "나" , "다" , "라" , "마"])
    print(c(words))
    
    
// 4. 파라미터의 타입을 << 'Numeric 프로토콜'을 준수하는 타입의 요소를 가진 배열 >> 로 변경합니다.
    func d<T: Numeric>(_ input3: [T]) -> [T] {
        return input3.enumerated()
            .filter {(index, _)in index % 2 == 0}
            .map{(_, value) in value }
    }
    let number = [1, 2, 3, 4, 5]
    print(d(number))

}

