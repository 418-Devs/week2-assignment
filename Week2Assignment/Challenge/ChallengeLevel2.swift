//
//  ChallengeLevel2.swift
//  Week2Assignment
//
//  Created by 서광용 on 6/9/25.
//

struct ChallengeLevel2 {
    static func run() {
        print("\n👉 [도전 문제 2-1] Comparable을 따를 때만 정렬 가능한 구조체  ")
        challengeLevel2_1()
    }
    
    private static func challengeLevel2_1() {
        struct SortableBox<T> {
            var items: [T]
            
            // Comparable을 준수할 경우에만 sortItems 메서드가 존재함.
            // 타입이 조건을 만족하지 않으면 컴파일 에러가 발생
            // 구조체 내의 값을 변경하기에 mutating 키워드 추가
            mutating func sortItems() where T: Comparable {
                self.items = items.sorted(by: <)
            }
        }
        
        var sorted = SortableBox(items: [1, 4, 6, 5, 2, 9])
        sorted.sortItems()
        print(sorted.items)
        print("\nComparable을 따르지 않으면 컴파일 오류 발생")
    }
}
