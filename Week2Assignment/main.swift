//
//  main.swift
//  Week2Assignment
//
//  Created by Hamakko on 6/4/25.
//

import Foundation

func main() {
    let activeTask = 8

    let taskMap: [Int: () -> Void] = [
        1: main1, //  필수문제 1
        2: main2, //  필수문제 2
        3: main3, //  필수문제 3
        4: main4, //  필수문제 4
        5: main5, //  필수문제 5
        6: main6, //  도전문제 1
        7: main7, //  도전문제 2
        8: main8, //  도전문제 3
    ]

    if let task = taskMap[activeTask] {
        task()
    } else {
        print("유효한 과제 번호가 아닙니다.")
    }
}

main()
