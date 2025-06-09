//
//  problem04.swift
//  Week2Assignment
//
//  Created by 김우성 on 6/8/25.
//

import Foundation

/// 필수 문제 4 + 도전 문제 3

// 1. Introducible 프로토콜 정의
protocol Introducible {
    var name: String { get }
    
    func introduce() -> String
}


// MARK: 도전 문제 3 확장
extension Introducible {
    func introduce() -> String { // 도전3-1. 기본 동작 제공
        return "안녕하세요, 저는 \(name) 입니다."
    }
}


// 2-1. Robot 타입 정의 (Introducible 프로토콜 채택)
class Robot: Introducible {
    var name: String {
        didSet { // 3. name이 변경될 때마다 알림 출력
            if oldValue != name {
                print("""
                name 변경 알림
                변경 이전 값: \(oldValue)
                변경 이후 값: \(name)
                """)
            }
        }
    }
    
    init(name: String) {
        self.name = name
    }
    
    func introduce() -> String { // 도전3-2. 커스텀 동작 구현
        return "안 녕 하 세 요 , 저 는 [\(name)] 입 니 다 🤖"
    }
    
    // 4. 각 타입 고유의 메서드 추가
    func batteryCharge() {
        print("\(name)의 배터리를 충전중...")
    }
}


// 2-2. Cat 타입 정의 (Introducible 프로토콜 채택)
class Cat: Introducible {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func introduce() -> String {
        return "나는 \(name)이다 야옹."
    }
    
    // 4. 각 타입 고유의 메서드 추가
    func makeScar() {
        print("당신은 \(name)에게 할퀴어져 상처를 입었다!")
    }
}


// 2-3. Dog 타입 정의 (Introducible 프로토콜 채택)
class Dog: Introducible {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    // 4. 각 타입 고유의 메서드 추가
    func furMaker() {
        print("\(name)가 털을 뿜어댄다!")
    }
}

func problem04() {
    let robot: Robot = Robot(name: "피규어")
    print(robot.introduce())
    robot.name = "옵티머스"
    robot.name = "옵티머스" // 이름 변경이 되지 않았을 때 예외처리 테스트용
    print(robot.introduce())
    robot.batteryCharge()
    
    let cat: Cat = Cat(name: "봄이")
    print(cat.introduce())
    cat.makeScar()
    
    let dog: Dog = Dog(name: "메시")
    print(dog.introduce())
    dog.furMaker()
    
    print("\n\n\n")
    
    // 5. [Introducible] 타입 배열 정의 & 순회 호출
    var introducible: [Introducible] = []
    introducible.append(robot)
    introducible.append(cat)
    introducible.append(dog)
    
    // as? 를 사용한 타입 캐스팅. 타입이 맞으면 옵셔널로 캐스팅되고, 아니면 nil을 반환하여 안전하다.
    for item in introducible {
        if let robot = item as? Robot {
            print(robot.introduce())
            robot.batteryCharge()
        } else if let cat = item as? Cat {
            print(cat.introduce())
            cat.makeScar()
        } else if let dog = item as? Dog {
            print(dog.introduce())
            dog.furMaker()
        }
    }
}
