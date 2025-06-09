//
//  problem08.swift
//  Week2Assignment
//
//  Created by 김우성 on 6/9/25.
//

import Foundation

/// 도전 문제 4

class Person {
    let name: String
    var motorcycle: Motorcycle?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print ("\(name) is deinitialized")
    }
}

class Motorcycle {
    let modelName: String
    weak var owner: Person? // 1. 클래스 A, B 사이에 순환참조가 발생하도록 구현 -> 3. weak를 사용해 순환 참조 해결
    
    var closure: (() -> Void)? // 2. 클로저 기반의 순환 참조
    
    init(modelName: String) {
        self.modelName = modelName
    }
    
    deinit {
        print ("\(modelName) is deinitialized")
    }
}

// 순환 참조 발생 버전
func problem08_gotARealProblem() {
    var person: Person? = Person(name: "김우성")
    var motorcycle: Motorcycle? = Motorcycle(modelName: "R12 G/S")
    
    // 순환 참조 발생
    person?.motorcycle = motorcycle
    motorcycle?.owner = person
    
    // 순환 참조 유발 클로저
    motorcycle?.closure = {
        print("\(person!.name) 이 \(person!.motorcycle!.modelName) 을 타고 있다.")
    }
    
    motorcycle?.closure?()
    
    person = nil
    motorcycle = nil
}

// 순환 참조 해결 버전
func problem08() {
    var person: Person? = Person(name: "김우성")
    var motorcycle: Motorcycle? = Motorcycle(modelName: "R12 G/S")
    
    // 순환 참조 발생
    person?.motorcycle = motorcycle
    motorcycle?.owner = person
    
    motorcycle?.closure = { [weak person] in
        guard let person = person else { return }
        print("\(person.name) 이 \(person.motorcycle!.modelName) 을 타고 있다.")
    }
    
    motorcycle?.closure?()
    
    person = nil
    motorcycle = nil
}
