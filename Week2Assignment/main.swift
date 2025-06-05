//
//  main.swift
//  Week2Assignment
//
//  Created by 이서린 on 6/3/25.
//

import Foundation

print("실행할 문제를 선택하세요: ", terminator: "")
if let input = readLine() {
    switch input {
    case "1":
        runLevel1()
    case "2":
        runLevel2()
    case"3":
        runLevel3()
    default:
        print("잘못된 입력입니다.")
    }
} else {
    print("입력을 읽을 수 없습니다.")
    
}


