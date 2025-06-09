//
//  problem02.swift
//  Week2Assignment
//
//  Created by 김우성 on 6/4/25.
//

import Foundation

/// 필수 문제 2
func problem02() {
    
    // 1. map을 사용하는 코드로 변환
    let numbers = [1, 2, 3, 4, 5]
    
    let result = numbers.map { String($0) }
    
    print(result)
    print(type(of: result))
    
    
    // 2. 고차함수 체이닝
    let numbers2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    let result2 = numbers2
        .filter { $0 % 2 == 0 }
        .map { String($0) }
    
    print(result2)
    print(type(of: result2))
    
    
    // 3. 고차함수 직접 만들기
    func myMap(_ array: [Int], _ transform: (Int) -> String) -> [String] {
        var result: [String] = []
        
        for element in array {
            result.append( transform(element) )
        }
        
        return result
    }
    
    let result3 = myMap([1, 2, 3, 4, 5]) { String($0) } // {}가 뜬금없이 있으면 대부분 클로저임을 기억하자
    
    print(result3)
}
