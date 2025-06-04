//
//  Level2.swift
//  Week2Assignment
//
//  Created by 이서린 on 6/4/25.
//

import Foundation

// 1. 실행 코드를 함수로 감싸기
func runLevel2() {
    let numbers = [1, 2, 3, 4, 5]
    
    // map을 사용해서 숫자들을 문자열로 변환
    let result = numbers.map { String($0) }
    
    // 결과 출력
    print(result)
    
    //2. 주어진 입력값을 고차함수를 체이닝하여 주어진 출력값이 나오도록 구현
    let input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    let output = input
        .filter { $0 % 2 == 0 } // filter 함수 사용: 짝수만 골라내고, map 함수로 문자열로 변환
        .map { String($0) }
    print(output)
    
    // 3.  직접 만든 myMap 함수 정의: 배열과 변환 클로저를 받아서 새로운 문자열 배열을 만듦
    func myMap(_ array:[Int], _ transform:(Int) -> String) -> [String]{
        var result2: [String] = []
        
        //입력받은 배열의 모든 숫자를 하나씩 꺼내서 변환 클로저에 넣기
        for number2 in array {
            let transformed = transform(number2)
            result2.append(transformed)
        }
        return result2
    }
    
    // myMap 함수 호출: 숫자 배열을 문자열 배열로 변환
    let result2 = myMap([5, 4, 3, 2, 1, 0]) { number2 in
        return String(number2)
    }
    print(result2)
}

