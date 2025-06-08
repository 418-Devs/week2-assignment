//
//  Essential4.swift
//  Week2Assignment
//
//  Created by 이태윤 on 6/5/25.
//

class Essential4 {
    var figures: [Introducible] = []
    
    var robot = Robot()
    var cat = Cat()
    var dog = Dog()
        
    init() {
        figures.append(robot)
        figures.append(cat)
        figures.append(dog)
    }
}


struct Robot: Introducible {
    var name: String = "피규어"{
        willSet{
            print("name 변경 알림 \n변경 이전 값: \(name)")
        }
        didSet {
            if oldValue != name {
                print("변경 이후 값: \(name)")
            }
        }
    }
    
    // 배터리 잔량 프로퍼티
    private(set) var bttery: Int = 10
    
    
    func introduce() -> String {
        return "안녕하세요, 저는 \(name)입니다."
    }
    
    // 배터리 충전 메서드
    mutating func chargeBattery() {
        print("배터리가 10 충전 됐습니다. 🔋")
        bttery += 10
    }
    
    // 레이저 발사 메서드
    mutating func shootLaser() {
        if bttery >= 10 {
            print("레이저를 발사합니다.🔫")
            bttery -= 10
        } else {
            print("배터리 충전이 필요합니다. 🔋")
        }
    }
}

struct Cat: Introducible {
    var name: String = "춘식이"
    var isHungry: Bool = true
    
    func introduce() -> String {
        return "안녕하세요, 저는 \(name)입니다."
    }
    // 밥주기 메서드
    mutating func feed() {
            if isHungry {
                isHungry = false
                print("\(name)가 밥을 먹고 만족해합니다 🐱")
            } else {
                print("\(name)는 배가 부릅니다 😼")
                isHungry = true
            }
        }
}

struct Dog: Introducible {
    var name: String = "라이언"
    var isHappy: Bool = false

    func introduce() -> String {
        return "안녕하세요, 저는 \(name) 입니다."
    }
    
    // 놀아주기 메서드
    mutating func play() {
        if !isHappy {
            print("\(name)이 놀고 행복해집니다 🐶")
            isHappy = true
        }
        else {
            print("\(name)은 아직 행복하기에 나중에 놀아주세요 🐶")
            isHappy = false
        }
    }
}
