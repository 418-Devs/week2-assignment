//
//  level4.swift
//  Week2Assignment
//
//  Created by 서광용 on 6/5/25.
//

// Introducible 프로토콜 정의
protocol Introducible {
    var name: String { get set }
    func introduce() -> String
}

var robot = Robot()
let cat = Cat()
let dog = Dog()

struct Level4 {
    static func run() {
        print("\n👉 [필수 문제 4-1] Introducible 프로토콜 구현 및 각 타입 소개 / Robot name 변경 추적 구현")
        level4_1()
        
        print("\n👉 [필수 문제 4-2] 고유 메서드를 추가 및 각 타입의 고유 메서드를 하나씩 호출")
        level4_2()
    }
    
    private static func level4_1() {
        // robot
        print("<로봇>")
        robot.name = "AI"
        print(robot.introduce())
        
        // cat
        print("\n<고양이>")
        print(cat.name)
        print(cat.introduce())
        
        // dog
        print("\n<강아지>")
        print(dog.name)
        print(dog.introduce())
    }
    
    private static func level4_2() {
        // [Introducible] 타입 배열 정의 및 Robot, Cat, Dog 인스턴스 1개씩을 append
        var animals: [Introducible] = []
        animals.append(robot)
        animals.append(cat)
        animals.append(dog)
        
        // 배열을 순회하며 각 타입의 고유 메서드를 호출
        animals.forEach { animal in
            // 배열을 순회하며 각 인스턴스를 실제 타입으로 캐스팅하여 고유의 메서드를 호출
            if let robot = animal as? Robot {
                robot.charge()
            } else if let cat = animal as? Cat {
                cat.scratch()
            } else if let dog = animal as? Dog {
                dog.wagTail()
            }
        }
    }
}

// MARK: - Robot
struct Robot: Introducible {
    // 기본 값을 "Robot"으로 해주고, 값이 변경될 경우 출력
    var name: String = "로봇" {
        didSet(oldValue) {
            // 변경 이전값과 이후값이 같다면 출력하지 않도록 if문 사용
            if name != oldValue {
                print("name 변경 알림")
                print("변경 이전 값: \(oldValue)")
                print("변경 이후 값: \(name)")
            }
        }
    }
    
    func introduce() -> String {
        return "안녕하세요, 저는 \(name)입니다."
    }
    
    // Robot의 고유 메서드
    func charge() {
        print("\(name)가 충전을 시작합니다.")
    }
}

// MARK: - Cat
struct Cat: Introducible {
    var name: String = "나비"
    
    func introduce() -> String {
        return "고양이 나비"
    }
    
    // Cat의 고유 메서드
    func scratch() {
        print("\(name)가 발톱으로 긁어요!")
    }
}

// MARK: - Dog
struct Dog: Introducible {
    var name: String = "송이"
    
    func introduce() -> String {
        return "강아지 송이"
    }
    
    // Dog의 고유 메서드
    func wagTail() {
        print("\(name)가 꼬리를 흔들어요.")
    }
}
