//
//  Challange4.swift
//  Week2Assignment
//
//  Created by Yoon on 6/6/25.
//
// 도전문제 4

import Foundation

class Person {
    let name: String

    init(name: String) {
        self.name = name
    }
    
    // 순환참조 테스트용 변수 (Phone 참조)
//    var phone: Phone?
    
    // weak로 약한참조로 변경
    weak var phone: Phone?

    deinit {
        print("Person \(name) 해제됨")
    }
}

class Phone {
    let model: String
    init(model: String) {
        self.model = model
    }
    
    // 순환참조 테스트용 변수(Person 참조)
//    var owener: Person?
    
    // weak로 약한참조로 변경
    weak var owner: Person?

    deinit {
        print("Phone \(model) 해제됨")
    }
    
    // 클로저 프로퍼티 선언
    var printOwnerName: (() -> Void)?
}

func main9() {
    print("도전문제 4 진입")
    
    let person: Person? = Person(name: "철수")
    let phone: Phone? = Phone(model: "아이폰")
    
    //순환참조 코드
    person?.phone = phone
    phone?.owner = person
    
    // 클로저가 외부의 person 인스턴스를 참조 (순환 참조 확인 구문)
//    phone?.printOwnerName = {
//        print("소유자 이름: \(phone?.owner?.name ?? "없음")")
//    }
//    

    // 순환참조를 해결하는 클로저 구문
    phone?.printOwnerName = { [weak phone] in
        print("소유자 이름: \(phone?.owner?.name ?? "없음")")
    }
    
    // 클로저 프로퍼티 호출
    phone?.printOwnerName?()
    
    print("도전문제 4 종료")
}

