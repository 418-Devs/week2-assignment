//
//  level3.swift
//  Week2Assignment
//
//  Created by 서광용 on 6/4/25.
//

struct level3 {
    static func run() {
        print("\n👉 [필수 문제 3-1] [Int]의 짝수번째 요소 제거하여 반환")
        level3_1()
        
        print("\n👉 [필수 문제 3-2] [String]의 짝수번째 요소 제거하여 반환")
        level3_2()
        
        print("\n👉 [필수 문제 3-3] [Int], [String]의 짝수번째 요소 제거하여 반환")
        level3_3()
        
        print("\n👉 [필수 문제 3-4] 함수 c를 기반으로 수정하여 함수 d를 작성")
        level3_4()
    }
    
    private static func level3_1() {
        // MARK: - [Int]의 짝수번째 요소를 제거해서 반환하는 함수 a
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
        // MARK: - [String]의 짝수 번째 요소를 제거해서 반환하는 함수 b
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
        // MARK: - [Int], [String]을 하나의 함수로 대체하는 함수 c
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
        // MARK: - c를 기반으로 Numeric 프로토콜을 준수하는 함수 d
        // where T.Element: Numeric를 통해 Numeric 프로토콜 준수
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
/// T.Element는 그 안에 있는 타입. 즉, 하나하나 꺼냈을 때 나오는 타입.
/// T = [Int] 일 때, T.Element = Int / T = Set<Float>이면, T.Element = Float
/// 요구사항이 ‘Numeric 프로토콜을 준수하는 타입의 요소를 가진 배열’이기 때문에, 그 요소 타입(T.Element)이 Numeric을 따르도록 제약을 건다.
/// T.Element: Numeric을 통해 해당 요소가 Numeric을 따르도록 제약을 건다.
