//
//  Essential2.swift
//  Week2Assignment
//
//  Created by 이태윤 on 6/5/25.
//

class Essential2 {
    let numbers: [Int] = [1, 2, 3 ,4 ,5]
    lazy var result: [String] = numbers.map { String($0) }
    
    let numbers2: [Int] = [1, 2, 3 ,4 ,5, 6, 7, 8, 9, 10]
    lazy var result2: [String] = numbers2
        .filter{ $0 % 2 == 0 }
        .map{ String($0) }
    
    
    
    func myMap(array: [Int], transform: (Int) -> String) -> [String] {
        var result: [String] = []
        for value in array {
            result.append(transform(value))
        }
        return result
    }
}

