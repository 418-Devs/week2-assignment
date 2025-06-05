import Foundation

func runLevel4() {
    // Introducible 프로토콜 정의
    protocol Introducible {
        var name: String { get set }
        func introduce() -> String
    }
    
    // Robot 타입
    struct Robot: Introducible {
        var name: String {
            didSet {
                if oldValue != name {
                    print("name 변경 알림")
                    print("변경 이전 값: \(oldValue)")
                    print("변경 이후 값: \(name)")
                }
            }
        }
        var isPluggedIn: Bool
        
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
        var name: String
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

    // Dog 타입
    struct Dog: Introducible {
        var name: String
        var didWalking: Bool
        
        func introduce() -> String {
            return "멍멍 나는 멍멍 \(name)이다 멍!"
        }
        
        func walking() {
            if didWalking {
                print("\(name): 오늘 산책 완료! 🐕‍🦺")
            } else {
                print("\(name): 아직 산책 못했어요. 산책 가요! 🐾")
            }
        }
    }

    // Robot 테스트
    var robot = Robot(name: "피규어", isPluggedIn: true)
    print(robot.introduce())              // 첫 인사
    robot.name = "옵티머스"               // 변경 감지
    robot.name = "옵티머스"               // 같은 값 → 출력 X

    // 인스턴스 생성
    let cat = Cat(name: "메이", isHungry: true)
    let dog = Dog(name: "구름", didWalking: false)

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
        }
    }
}
