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
    
    // Phone 참조
    var phone: Phone?

    deinit {
        print("Person \(name) 해제됨")
        fflush(stdout)
    }
}

class Phone {
    let model: String
    init(model: String) {
        self.model = model
    }
    
    // Pesron 참조
    var owner: Person?

    deinit {
        print("Phone \(model) 해제됨")
        fflush(stdout)
    }
    
    // 클로저 프로퍼티 선언
    var printOwnerName: (() -> Void)?
}

func main9() {
    print("도전문제 4 진입")
    
    var person: Person? = Person(name: "철수")
    var phone: Phone? = Phone(model: "아이폰")

    person?.phone = phone
    phone?.owner = person
    
    // 클로저가 외부의 person 인스턴스를 참조 (순환 참조 유도)
//    phone?.printOwnerName = {
//        print("소유자 이름: \(phone?.owner?.name ?? "없음")")
//    }
//    

    
    phone?.printOwnerName = { [weak phone] in
        print("소유자 이름: \(phone?.owner?.name ?? "없음")")
    }
    
    // 클로저 프로퍼티 호출
    phone?.printOwnerName?()
    
    // 인스턴스 참조 해제
    print("도전문제 종료 직전")
    person = nil
    phone = nil
    sleep(1)
    print("종료 완료")
}

