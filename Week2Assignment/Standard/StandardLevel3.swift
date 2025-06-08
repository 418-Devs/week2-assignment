//
//  level3.swift
//  Week2Assignment
//
//  Created by 서광용 on 6/4/25.
//

struct StandardLevel3 {
    static func run() {
        print("\n👉 [필수 문제 3-1] 짝수 인덱스의 Int 요소만 추출")
        level3_1()
        
        print("\n👉 [필수 문제 3-2] 짝수 인덱스의 String 요소만 추출")
        level3_2()
        
        print("\n👉 [필수 문제 3-3] 제네릭 함수로 Int/String 처리")
        level3_3()
        
        print("\n👉 [필수 문제 3-4] Numeric 타입만 처리하는 제네릭 함수")
        level3_4()
    }
    
    private static func level3_1() {
        // MARK: - 짝수 인덱스의 Int 요소만 추출하는 함수 a
        func a(_ array: [Int]) -> [Int] {
            var result: [Int] = []
            
            for (index, arr) in array.enumerated() {
                if index % 2 == 0 {
                    result.append(arr)
                }
            }
            
            return result
        }
        
        let array: [Int] = a([1, 2, 3, 4, 5])
        print(array)
    }
    
    private static func level3_2() {
        // MARK: - 짝수 인덱스의 String 요소만 추출하는 함수 b
        func b(_ array: [String]) -> [String] {
            var result: [String] = []
            
            for (index, arr) in array.enumerated() {
                if index % 2 == 0 {
                    result.append(arr)
                }
            }
            
            return result
        }
        
        let array: [String] = b(["가", "나", "다", "라", "마"])
        print(array)
    }
    
    private static func level3_3() {
        // MARK: - 제네릭을 사용한 함수 c
        /// T.Element는 배열 등 컬렉션 내부의 실제 요소 타입을 의미함
        func c<T: Sequence>(_ array: T) -> [T.Element] {
            // T.Element로 어떤 타입이 들어오던 그 안의 요소 타입에 맞춰 배열을 만들 수 있음
            var result: [T.Element] = []
            
            for (index, arr) in array.enumerated() {
                if index % 2 == 0 {
                    result.append(arr)
                }
            }
            
            return result
        }
        let array1: [Int] = c([1, 2, 3, 4, 5])
        let array2: [String] = c(["가", "나", "다", "라", "마"])
        
        print(array1, terminator: ", ")
        print(array2)
    }
    
    private static func level3_4() {
        // MARK: - Numeric 프로토콜을 만족하는 요소만 받는 함수 d
        // where절을 이용해 T.Element가 Numeric을 따르도록함
        func d<T: Sequence>(_ array: T) -> [T.Element] where T.Element: Numeric {
            // T.Element로 어떤 타입이 들어오던 그 안의 요소 타입에 맞춰 배열을 만들 수 있음
            var result: [T.Element] = []
            
            for (index, arr) in array.enumerated() {
                if index % 2 == 0 {
                    result.append(arr)
                }
            }
            
            return result
        }
        let array1: [Int] = d([1, 2, 3, 4, 5])
        
        print(array1)
    }
}



/// T: Sequence일 때, [Int], [String]같은 전체 컨테이너 타입
/// T.Element: 컨테이너 내부의 실제 타입 (예: Int, Float)
/// 예시) T = [Int] → T.Element = Int / T = Set<Float> → T.Element = Float
/// 문제에서 요구하는 ‘Numeric 프로토콜을 따르는 요소’를 처리하기 위해,
/// T.Element: Numeric 제약을 통해 해당 조건을 만족하도록 함
