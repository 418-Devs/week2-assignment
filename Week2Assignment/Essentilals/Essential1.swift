//
//  Essential1.swift
//  Week2Assignment
//
//  Created by 이태윤 on 6/5/25.
//
import Foundation

class Essential1 {
    var a: Int = 10
    var b: Int = 20
    
    // 두 수를 더하는 클로저 함수
    let sum: (Int, Int) -> String = {
        return  "두 수의 합은 \($0 + $1) 입니다."
    }
    
    // 클로저와 변수 두개를 매개변수로 받아서 값을 출력하는 함수
    func calculate(a: Int, b: Int ,sum: (Int, Int) -> String) -> Void {
        let result: String = sum(a, b)
        print(result)
    }
}

