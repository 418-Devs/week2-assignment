//
//  Challange3.swift
//  Week2Assignment
//
//  Created by Yoon on 6/5/25.
//
// 도전문제 3

import Foundation

// Introducible 프로토콜 확장으로 자기소개 메소드를 기본구현
extension Introducible {
    func introduce() -> String {
        return "안녕하세요, 저는 \(name)입니다."
    }
}

class RobotCh3: Introducible {
    var name: String {
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

    // Robot의 introduce는 재정의
    func introduce() -> String {
        return "어서와라 인간, 나는 \(name)(이)라고 한다."
    }

    init(name: String) {
        self.name = name
    }

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

class CatCh3: Introducible {
    var name: String
    var isSleep = false

    init(name: String) {
        self.name = name
    }

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

struct DogCh3: Introducible {
    var name: String

    init(name: String) {
        self.name = name
    }

    func bark() -> String {
        return "멍멍"
    }
}

func main8() {
    // 동작 확인용 코드
    let robotSkynet = RobotCh3(name: "스카이넷")
    let catPersian = CatCh3(name: "페르시안")
    let dogMartiz = DogCh3(name: "말티즈")
    print(robotSkynet.introduce())
    print(catPersian.introduce())
    print(dogMartiz.introduce())
}
