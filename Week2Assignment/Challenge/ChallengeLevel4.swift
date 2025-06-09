//
//  ChallengeLevel3.swift
//  Week2Assignment
//
//  Created by 서광용 on 6/9/25.
//

struct ChallengeLevel4 {
    static func run() {
        print("\n👉 [도전 문제 4-1] 순환 참조와 메모리 해제 확인")
        challengeLevel4_1()
    }
    
    static func challengeLevel4_1() {
        let person = Person(name: "Mori")
        let pet = Pet()

        person.pet = pet
        pet.owner = person

        pet.closure?()
        
        person.pet = nil
        pet.owner = nil
    }
}

// MARK: - Person(A)
class Person {
    var name: String
    var pet: Pet?
    
    init(name: String) {
        self.name = name
    }
    
    // deinit을 사용하여 메모리 해제 여부 확인
    deinit {
        print("Person 인스턴스가 메모리에서 해제됩니다.")
    }
}

// MARK: - Pet(B)
class Pet {
    // Person을 약하게 참조
    weak var owner: Person?
    // 클로저 프로퍼티 정의할 때 self를 초기화 전에 접근하면 에러가 발생하기에, lazy로 초기화를 미룸
    // closure는 owner을 약한 참조로 캡처해서 순환 참조를 피함
    lazy var closure: (() -> Void)? = { [weak owner] in
        print(owner?.name ?? "nil")
    }
    
    deinit {
        print("Pet 인스턴스가 메모리에서 해제됩니다.")
    }
}
