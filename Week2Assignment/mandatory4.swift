//
//  mandatory4.swift
//  Week2Assignment
//
//  Created by Yoon on 6/4/25.
//
// 필수문제 4


protocol Introducible {
    var name: String { get set }
    func introduce() -> String
}

class Robot: Introducible{
    
    var name: String {
        didSet{
            if name != oldValue{
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
    
    init(name: String){
        self.name = name
    }
    
    var batteryLevel = 70
    
    func batteryCharge(charge: Int) -> String {
        if self.batteryLevel + charge >= 100 {
            self.batteryLevel = 100
            return "배터리가 완전 충전되었습니다."
        }  else {
            self.batteryLevel+=charge
            return "배터리 잔량은 \(batteryLevel)%입니다."
        }
    }
    
    
}

struct Cat: Introducible{
    
    var name: String
    var isSleep = false
    
    func introduce() -> String {
        return "안녕하세요, 저는 \(name)입니다."
    }
    
    init(name: String){
        self.name = name
    }
    
    mutating func fallAsleep() -> String {
        if isSleep == false {
            self.isSleep = true
            return "고양이가 잠듭니다."
        } else {
            return "이미 잠들어 있습니다"
        }
    }
    
    mutating func awake() -> String {
        if isSleep == true{
            self.isSleep = false
            return "고양이가 깨어납니다"
        } else {
            return "이미 깨어있습니다."
        }
    }
    
}

struct Dog: Introducible{
    
    var name: String
    
    func introduce() -> String {
        return "안녕하세요, 저는 \(name)입니다."
    }
    
    init(name: String){
        self.name = name
    }
    
    func bark() -> String {
        return "멍멍"
    }
    
}


func main4(){
    let robot = Robot(name: "롸봇")
    print(robot.introduce())
    print("----")
    robot.name = "옵티머스"
    print(robot.introduce())
    print(robot.batteryCharge(charge: 20))
    print(robot.batteryCharge(charge: 20))
//    var cat = Cat(name: "애옹")
//    print(cat.introduce())
//    print(cat.fallAsleep())
//    print(cat.fallAsleep())
//    print(cat.awake())
//    print(cat.awake())
    
    var arr: [Introducible] = []
}
