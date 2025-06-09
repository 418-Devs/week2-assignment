//
//  level2.swift
//  Week2Assignment
//
//  Created by 서광용 on 6/4/25.
//

struct StandardLevel2 {
    static func run() {
        print("\n👉 [필수 문제 2-1] for-in 대신 map 사용")
        level2_1()
        
        print("\n👉 [필수 문제 2-2] map을 직접 구현한 myMap 함수")
        level2_2()
    }
    
    // MARK: - filter 후 map으로 짝수만 문자열로 변환
    private static func level2_1() {
        let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] // 정수 배열
        let result = numbers.filter { $0 % 2 == 0 }.map { String($0) } // 짝수만 걸러서 문자열로 변환한 배열
        print(result)
    }
    
    // MARK: - map 기능을 직접 구현한 myMap 함수
    private static func level2_2() {
        func myMap(_ array: [Int], _ transform: (Int) -> String) -> [String] {
            var outArray: [String] = []
            
            // 각 요소에 transform 클로저 적용 후, String으로 변한 결과를 outArray 배열에 추가
            for i in array {
                let a = transform(i)
                outArray.append(a)
            }
            
            return outArray
        }
        
        // myMap을 이용해 정수 배열을 문자열로 변환
        let result = myMap([1, 2, 3, 4, 5]) {
            String($0)
        }
        
        print(result)
    }
}
