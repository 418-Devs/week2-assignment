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
    
    func introduce() -> String {
        return Message.robotIntroduce(name: name, bttery: bttery).text
    }
    
    // 배터리 잔량 프로퍼티 접근자 제어 private(set)으로 값을 임의로 변경 불가하게 설정
    private(set) var bttery: Int = 10
    
    // 배터리 충전 메서드
    mutating func chargeBattery() {
        controller.printMessage(.charged)
        bttery += 10
    }
    
    // 레이저 발사 메서드
    mutating func shootLaser() {
        if bttery >= 10 {
            // 레이저 발사 메시지
            controller.printMessage(.shot)
            bttery -= 10
        } else {
            // 충전 필요 메시지
            controller.printMessage(.needcharge)
        }
    }
}

struct Cat: Introducible {
    var name: String = "춘식이"
    var isHungry: Bool = true
    
    // 밥주기 메서드
    mutating func feed() {
            if isHungry {
                isHungry = false
                controller.printMessage(.hungrytrue)
            } else {
                controller.printMessage(.hungryfalse)
                isHungry = true
            }
        }
}

struct Dog: Introducible {
    var name: String = "라이언"
    var isHappy: Bool = false

    
    // 놀아주기 메서드
    mutating func play() {
        if !isHappy {
            controller.printMessage(.playfalse)
            isHappy = true
        }
        else {
            controller.printMessage(.playtrue)
            isHappy = false
        }
    }
}
