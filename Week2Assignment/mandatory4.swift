//
//  mandatory4.swift
//  Week2Assignment
//
//  Created by Yoon on 6/4/25.
//
// 필수문제 4

import Foundation

// Introducible 프로토콜 정의
protocol Introducible {
    var name: String { get set }
    func introduce() -> String
}

// Introducible 프로토콜을 채택한 클래스 Robot
class Robot: Introducible {
    var name: String {
        // name 변경 감지 후 메시지 출력
        didSet {
            if name != oldValue {
                print(
                    """
                    name 변경 알림
                    변경 이전 값 : \(oldValue)
                    변경 이후 값 : \(name)
                    """
                )
            }
        }
    }

    func introduce() -> String {
        return "안녕하세요, 저는 \(name)입니다."
    }

    init(name: String) {
        self.name = name
    }

    // 고유 메소드 batteryCharge 구현
    var batteryLevel = 70

    func batteryCharge(_ charge: Int) -> String {
        if batteryLevel + charge >= 100 {
            batteryLevel = 100
            return "배터리가 완전 충전되었습니다."
        } else {
            batteryLevel += charge
            return "배터리 잔량은 \(batteryLevel)%입니다."
        }
    }
}

// Introducible 프로토콜을 채택한 클래스 Cat
class Cat: Introducible {
    var name: String
    var isSleep = false

    func introduce() -> String {
        return "안녕하세요, 저는 \(name)입니다."
    }

    init(name: String) {
        self.name = name
    }

    // 고유 메소드 fallAsleep, awake 구현
    func fallAsleep() -> String {
        if isSleep == false {
            isSleep = true
            return "고양이가 잠듭니다."
        } else {
            return "이미 잠들어 있습니다"
        }
    }

    func awake() -> String {
        if isSleep == true {
            isSleep = false
            return "고양이가 깨어납니다"
        } else {
            return "이미 깨어있습니다."
        }
    }
}

// Introducible 프로토콜을 채택한 구조체 Dog
struct Dog: Introducible {
    var name: String

    func introduce() -> String {
        return "안녕하세요, 저는 \(name)입니다."
    }

    init(name: String) {
        self.name = name
    }

    // 고유 메소드 bark 구현
    func bark() -> String {
        return "멍멍"
    }
}

func main4() {
    let robot = Robot(name: "롸봇")
    print(robot.introduce())
    print("----")
    robot.name = "옵티머스"
    print(robot.introduce())
    print(robot.batteryCharge(20))
    print(robot.batteryCharge(20))

    let cat = Cat(name: "애옹")
    print(cat.introduce())
    print(cat.fallAsleep())
    print(cat.fallAsleep())
    print(cat.awake())
    print(cat.awake())

    let dog = Dog(name: "댕댕이")
    print(dog.introduce())
    print(dog.bark())

    print("========배열 출력 구분선===========")

    let robotEva = Robot(name: "에반게리온")
    let catNorway = Cat(name: "노르웨이숲")
    let dogSiba = Dog(name: "시바견")
    var arr: [Introducible] = []

    arr.append(robotEva)
    arr.append(catNorway)
    arr.append(dogSiba)

    // 배열을 순회하며 각자의 메소드를 호출
    for item in arr {
        if item is Robot {
            let robot = item as? Robot
            print(robot?.introduce() ?? "Error!")
            print(robot?.batteryCharge(20) ?? "Error!")
        } else if item is Cat {
            let cat = item as? Cat
            print(cat?.introduce() ?? "Error!")
            print(cat?.fallAsleep() ?? "Error!")
            print(cat?.awake() ?? "Error!")
        } else if item is Dog {
            let dog = item as? Dog
            print(dog?.introduce() ?? "Error!")
            print(dog?.bark() ?? "Error!")
        }
    }
}
