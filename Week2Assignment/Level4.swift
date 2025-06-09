import Foundation

func runLevel4() {
    // Introducible 프로토콜 정의
    protocol Introducible {
        var name: String { get set }
        func introduce() -> String
    }

    // ✅ Robot 타입 - class로 정리
    class Robot: Introducible {
        var name: String {
            didSet {
                if oldValue != name {
                    print("name 변경 알림")
                    print("변경 이전 값: \(oldValue)")
                    print("변경 이후 값: \(name)")
                }
            }
        }
        
        var energy: Int
        var isPluggedIn: Bool
        
        init(name: String, energy: Int, isPluggedIn: Bool) {
            self.name = name
            self.energy = energy
            self.isPluggedIn = isPluggedIn
        }
        
        func turnOn() {
            print("\(name): 전원을 켰습니다. 🔌")
            energy -= 5
        }

        func turnOff() {
            print("\(name): 전원을 껐습니다. 📴")
        }

        func charge() {
            if energy < 100 {
                print("\(name): 지금 배터리는 \(energy)입니다. ⚡️")
            } else {
                print("\(name): 배터리는 100으로 충전했습니다. ⚡️")
            }
        }

        func introduce() -> String {
            return "BEEP! 안녕하세요, 저는 \(name)입니다."
        }

        func batteryCharge() {
            if isPluggedIn {
                print("\(name): 배터리를 충전 중입니다.🔋")
            } else {
                print("\(name): 배터리를 충전 중이 아닙니다. ⚡️")
            }
        }
    }

    // Cat 타입
    struct Cat: Introducible {
        var name: String{
            didSet {
            if oldValue != name {
                print("name 변경 알림")
                print("변경 이전 값: \(oldValue)")
                print("변경 이후 값: \(name)")
            }
        }
    }
        
        var isHungry: Bool
        
        func introduce() -> String {
            return "냐용~ 나는 고냥이 \(name)다냥냥"
        }
        
        func feeding() {
            if isHungry {
                print("\(name): 츄르 주세요 냥! 😿")
            } else {
                print("\(name): 지금은 배 안 고파요 냥~ 😽")
            }
        }
    }
    
    class Dog: Introducible {
        var name: String{
            didSet {
                if oldValue != name {
                    print("name 변경 알림")
                    print("변경 이전 값: \(oldValue)")
                    print("변경 이후 값: \(name)")
                }
            }
        }
        var didWalking: Bool
        var weight: Int
        
        init(name: String, didWalking: Bool, weight: Int){
            self.name = name
            self.didWalking = didWalking
            self.weight = weight
        }
        
        func introduce() -> String {
            return "멍멍 나는 멍멍 \(name)이다 멍!"
        }
        
        func walking() {
            if didWalking == true{
                print("\(name): 오늘 산책 완료! 🐕‍🦺")
            } else {
                print("\(name): 아직 산책 못했어요. 산책 가요! 🐾")
            }
        }
        
        func size() -> String {
            if weight < 8 {
                return "몸무게는 \(weight)kg 입니다. 소형 강아지 입니다.🐶"
            } else if  weight < 15 {
                return "몸무게는 \(weight)kg 입니다. 중형 강아지 입니다.🐶"
            } else {
                return "몸무게는 \(weight)kg 입니다. 대형 강아지 입니다.🐶"
            }
        }
        
        
    }


    // ✅ Robot 테스트
    let robot = Robot(name: "피규어", energy: 80, isPluggedIn: true)
    print(robot.introduce())
    robot.charge()
    robot.name = "옵티머스"               // 변경 감지
    robot.name = "옵티머스"               // 같은 값 → 출력 X

    // 인스턴스 생성
    let cat = Cat(name: "메이", isHungry: true)
    let dog = Dog(name: "구름", didWalking: false, weight: 6)
    dog.walking()            // 산책 상태 출력
    dog.name = "댕댕이"
    print(dog.size())
    
    print("=====================================")
    
    // Introducible 배열 생성 및 append
    var introducibles: [Introducible] = []
    introducibles.append(robot)
    introducibles.append(cat)
    introducibles.append(dog)

    // 배열 순회하며 각 타입 introduce() 및 고유 메서드 호출
    for item in introducibles {
        print(item.introduce())
        
        if let robot = item as? Robot {
            robot.batteryCharge()
        } else if let cat = item as? Cat {
            cat.feeding()
        } else if let dog = item as? Dog {
            dog.walking()
            print(dog.size())
        }
    }
}
