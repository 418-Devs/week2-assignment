//
//  Challenge2.swift
//  Week2Assignment
//
//  Created by 이태윤 on 6/5/25.
//

class Challenge2 {
    func run() {
        var intManager = SortableBox(items: [3, 1, 2])
        intManager.sortItems()
        print(intManager.items)
    }
}

struct SortableBox<T> {
    var items: [T]
    
    mutating func sortItems() where T: Comparable {
        items.sort()
    }
}

/*
struct Person {
    let name: String
}

func run2() {
   let p1 = Person(name: "A")
   let p2 = Person(name: "B")
   
   var personManger = SortableBox(items: [p1, p2])
   personManger.sortItems()
   print(personManger.items)
}
 
 위처럼 SortableBox에 접근하면 에러가 난다 그 이유는 p1, p2를 어떻게 크기 비교가 되는지 모르기 때문이다. 이것을 해결하기 위해서는
 이 부분을 var personManger = SortableBox(items: [p1.name, p2.name]) 이렇게 수정하면 비교가 된다.
 
 즉 Comparable은 “속성은 비교 가능하지만 구조체는 비교 불가” -> 비교 방법을 직접 알려줘야 한다.
 
*/



