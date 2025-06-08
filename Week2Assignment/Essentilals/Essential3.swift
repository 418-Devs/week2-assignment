//
//  Essential3.swift
//  Week2Assignment
//
//  Created by 이태윤 on 6/5/25.
//

class Essential3 {
    // 역방향으로 순회하며 일반인 시점에서 짝수번째 인덱스를 제외하고 Int 타입의 배열에 추가하여 리턴하는 함수 a
    func a() -> [Int] {
        var a: [Int] = [1, 2, 3, 4, 5]
        for i in stride(from: a.count - 1, through: 0, by: -1) {
            if i % 2 != 0{
                a.remove(at: i)
            }
        }
        return a
    }
    
    // 역방향으로 순회하며 일반인 시점에서 짝수번째 인덱스를 제외하고 String 타입의 배열에 추가하여 리턴하는 함수 b
    func b() -> [String] {
        var b: [String] = ["가", "나", "다", "라", "마"]
        for i in stride(from: b.count - 1, through: 0, by: -1) {
            if i % 2 != 0{
                b.remove(at: i)
            }
        }
        return b
    }
    
    // 함수 a와 b를 합친 함수 c
    // 정방향으로 순회하며 일반인 시점에서 짝수번째 인덱스를 제외하고 제네릭 타입의 배열에 추가하여 리턴하는 함수 c
    func c<T>(array: [T]) -> [T] {
        var c: [T] = []
        for i in 0...array.count - 1 {
            if i % 2 == 0{
                c.append(array[i])
            }
        }
        return c
    }
    
    // 함수 c에 Numberic 프로토콜을 채택하여 만든 함수 d
    func d <T: Numeric>(array: [T]) -> [T] {
        var d: [T] = []
        for i in 0...array.count - 1 {
            if i % 2 == 0{
                d.append(array[i])
            }
        }
        return d
    }
    
}
