//
//  main.swift
//  Week2Assignment
//
//  Created by 서광용 on 6/3/25.
//

import Foundation

while true {
    print("출력 결과를 확인할 문제의 번호를 입력해주세요. (종료: 0) : ", terminator: "")
    let inputNumber: String = readLine() ?? ""
    
    switch inputNumber {
    case "0":
        exit(0)
    case "1":
        problem01() // 필수 문제 1
    case "2":
        problem02() // 필수 문제 2
    case "3":
        problem03() // 필수 문제 3
    case "4":
        problem04() // 필수 문제 4 + 도전 문제 3
    case "5":
        problem05() // 필수 문제 5
    case "6":
        problem06() // 도전 문제 1
    case "7":
        problem07() // 도전 문제 2
    case "8":
        problem08() // 도전 문제 4
    default:
        print("올바른 번호를 입력해주세요. (1 ~ 8)... 종료는 0")
    }
}
