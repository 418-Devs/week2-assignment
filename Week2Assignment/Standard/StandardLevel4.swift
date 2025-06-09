//
//  level4.swift
//  Week2Assignment
//
//  Created by 서광용 on 6/5/25.
//

// MARK: - Introducible 프로토콜 정의
private protocol Introducible {
    var name: String { get set }
    func introduce() -> String
}

// Introducible 채택하는 타입들에게 기본 introduce() 동작 생성
extension Introducible {
    func introduce() -> String {
        return "안녕! 내 이름은 \(name)야!"
    }
}

struct StandardLevel4 {
    private static var robot = Robot()
    private static let cat = Cat()
    private static let dog = Dog()
    
    static func run() {
        print("\n👉 [필수 문제 4-1] Introducible 소개 메서드 실행 + Robot 변경 로직 테스트")
        level4_1()
        
        print("\n👉 [필수 문제 4-2] Introducible 배열 순회하며 각 타입 고유 메서드 실행")
        level4_2()
    }
    
    private static func level4_1() {
        // Robot 소개 및 이름 변경 확인
        print("<로봇>")
        robot.name = "AI-01"
        print(robot.introduce())
        
        // Cat 소개
        print("\n<고양이>")
        print(cat.name)
        print(cat.introduce())
        
        // Dog 소개
        print("\n<강아지>")
        print(dog.name)
        print(dog.introduce())
    }
    
    private static func level4_2() {
        // Introducible 배열 생성 후, 각 인스턴스 추가
        var animals: [Introducible] = []
        animals.append(robot)
        animals.append(cat)
        animals.append(dog)
        
        // 배열을 순회하며 타입 캐스팅 후, 각 타입의 고유 메서드 호출
        animals.forEach { animal in
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
private struct Robot: Introducible {
    // 이름 변경 감지 및 변경 사항 출력
    var name: String = "AI" {
        didSet(oldValue) {
            // 변경 이전값과 이후값이 같다면 출력하지 않음
            if name != oldValue {
                print("""
                name 변경 알림
                변경 이전 값: \(oldValue)
                변경 이후 값: \(name)
                """)
            }
        }
    }
    
    // 로봇 커스텀 소개
    func introduce() -> String {
        return "010101.. 로봇 \(name), 사용자 인식 완료."
    }
    
    // Robot의 고유 메서드
    func charge() {
        print("\(name)가 충전을 시작합니다.")
    }
}

// MARK: - Cat
private struct Cat: Introducible {
    var name: String = "나비"
    
// 기본 introduce() 동작 실행
//    func introduce() -> String {
//        return "고양이 나비"
//    }
    
    // Cat의 고유 메서드
    func scratch() {
        print("\(name)가 발톱으로 긁어요!")
    }
}

// MARK: - Dog
private struct Dog: Introducible {
    var name: String = "송이"
    
// 기본 introduce() 동작 실행
//    func introduce() -> String {
//        return "안녕! 난 강아지 \(name)야!"
//    }
    
    // Dog의 고유 메서드
    func wagTail() {
        print("\(name)가 꼬리를 흔들어요.")
    }
}
