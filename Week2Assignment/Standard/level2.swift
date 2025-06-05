//
//  level2.swift
//  Week2Assignment
//
//  Created by 서광용 on 6/4/25.
//

struct Level2 {
    static func run() {
        print("\n👉 [필수 문제 2-1] for-in -> map 변환")
        level2_1()
        
        print("\n👉 [필수 문제 2-2] myMap 직접 구현")
        level2_2()
    }
    
    // 2-1. for-in을 map으로 바꿔보기
    private static func level2_1() {
        let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] // Array<Int>
        let result = numbers.filter { $0 % 2 == 0 }.map { String($0) } // Array<String>
        print(result)
    }
    
    
    // 2-2. 고차함수(myMap)를 직접 만들기
    private static func level2_2() {
        func myMap(_ array: [Int], _ transform: (Int) -> String) -> [String] {
            var outArray: [String] = []
            
            // 배열 요소들을 순회하며 transform 클로저를 호출해 String으로 변환 뒤 outArray에 추가
            for i in array {
                let a = transform(i)
                outArray.append(a)
            }
            
            return outArray
        }
        
        // 전달된 배열의 각 요소를 문자열로 변환하기 위해 myMap 함수 호출
        let result = myMap([1, 2, 3, 4, 5]) {
            String($0)
        }
        
        print(result)
    }
}

