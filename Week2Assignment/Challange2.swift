//
//  Challange2.swift
//  Week2Assignment
//
//  Created by Yoon on 6/5/25.
//
// 도전문제 2

import Foundation

struct SortableBox<T> {
    var items: [T]

    mutating func sortItems() where T: Comparable {
        items.sort()
    }
}

func main7() {
    var test = SortableBox<Int>(items: [9, 14, 3, 2, 43, 11, 58, 22])

    // 컴파일 에러 확인 코드
//    var test = SortableBox<String>(items: [[1],[2]])

    test.sortItems()
    print(test)
}
