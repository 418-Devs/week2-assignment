//
//  Message.swift
//  Week2Assignment
//  
//  Created by 이태윤 on 6/5/25.
//
import Foundation

enum Message {
    case start
    case problem
    case essential1
    case essential2
    case essential3
    case essential4
    case essential5
    case challenge1
    case challenge2
    case challenge3
    case challenge4
    case notavatar
    case exit
    case invalid
    case shot
    case charged
    case needcharge
    case hungrytrue
    case hungryfalse
    case playtrue
    case playfalse
    case addresserror
    case notStarted
    case systemerror(reason: String)
    case unknownerror
    case transit(daysRemaining: Int)
    case driving(brand: String, model: String, speed: Int)
    case nodriving(brand: String, model: String)
    case brakepedal(brand: String, model: String)
    case acceleratorpedal(brand: String, model: String)
    case engineInfo(engineType: String)
    case chargeBattery(engineType: String)
    case chargeOil(engineType: String)
    case switchEngine(engine: Engine)
    case notswitchEngine(engine: Engine)
    case carInfo(brand: String, model: String, year: String, engine: Engine)
    case notEngine
    
    var text: String {
        switch self {
        case .start:
            return "문제를 선택하여 주세요! ('exit' 입력시 종료) 🤔"
            
        case .problem:
            return "필수 문제 1~5 (essential1 ~ essential5), 도전 문제 1~4 (challenge1 ~ challenge4) 중 선택해주세요! 🤔"
            
        case .essential1:
            return "🔹 1. 필수 문제 (클로저 함수를 파라미터로)"
            
        case .essential2:
            return "🔹 2. 필수 문제 (for-in문을 고차함수로)"
            
        case .essential3:
            return "🔹 3. 필수 문제 (짝수 요소 제거하기)"
            
        case .essential4:
            return "🔹 4. 필수 문제 (자기소개 part.1)"
            
        case .essential5:
            return "🔹 5. 필수 문제 (택배 도착 예측 시스템)"
            
        case .challenge1:
            return "🔸 1. 도전 문제 (자동차)"
            
        case .challenge2:
            return "🔸 2. 도전 문제 (정렬 상자)"
            
        case .challenge3:
            return "🔸 3. 도전 문제 (자기소개 part.2 )"
            
        case .challenge4:
            return "🔸 4. 도전 문제 (클래스 순환 참조)"
            
        case .notavatar:
            return "❌ 아직 구현되지 않았습니다."
            
        case .exit:
            return "👋 안녕! 다음에 또 봐요! 👋"
            
        case .invalid:
            return "essential1 ~ essential5, challenge1 ~ challenge4 중 선택해주세요! 🤔"
            
        case .shot:
            return "레이저를 발사합니다.🔫"
            
        case .charged:
            return "배터리가 10 충전 됐습니다. 🔋"
            
        case .needcharge:
            return "배터리 충전이 필요합니다. 🔋"
            
        case .hungrytrue:
            return "밥을 먹고 만족해합니다 🐱"
            
        case .hungryfalse:
            return "배가 부릅니다 😼"
            
        case .playtrue:
            return "아직 행복하기에 나중에 놀아주세요 🐶"
            
        case .playfalse:
            return "놀고 행복해집니다 🐶"
            
        case .addresserror:
            return "❌ 주소가 올바르지 않습니다."
            
        case .notStarted:
            return "🚚 배송이 아직 시작되지 않았습니다."
            
        case .systemerror(let reason):
            return "⚠️ 시스템 오류: \(reason)"
            
        case .unknownerror:
            return "⚠️ 알 수 없는 오류"
            
        case .transit(daysRemaining: let daysRemaining):
            return "🚚 \(daysRemaining)일 후 배송합니다."
            
        case .driving(brand: let brand, model: let model, speed: let speed):
            return "🏎️ \(brand)\(model) 현재 \(speed)km/h로 주행 중..."
            
        case .nodriving(brand: let brand, model: let model):
            return " \(brand)\(model)은(는) 현재 주행 중이 아닙니다..."
            
        case .brakepedal(brand: let brand, model: let model):
            return "⏬ \(brand)\(model)의 10km/h만큼 감속합니다..."
            
        case .acceleratorpedal(brand: let brand, model: let model):
            return "⏫ \(brand)\(model)의 10km/h만큼 가속합니다..."
            
        case .engineInfo(engineType: let type):
            return "⚙️ 엔진 타입: \(type)"
            
        case .chargeBattery(engineType: let type):
            return "🔋 \(type): 전기 충전 중...!"
        
        case .chargeOil(engineType: let type):
            return "⛽️ \(type): 고급 휘발유 주입 중...!"
            
        case .switchEngine(engine: let engine):
            return "🔁 \(engine.engineType) 모드로 전환합니다. 🚀"
            
        case .notswitchEngine(engine: let engine):
            return "⚠️ 이미 엔진이 \(engine.engineType)Mode 입니다. 다른 모드로 변경해 주세요"
            
        case .carInfo(brand: let brand, model: let model, year: let year, engine: let engine):
            return """
            🚘 차량 정보
            - 브랜드: \(brand)
            - 모델: \(model)
            - 연식: \(year)
            - 엔진 타입: \(engine.engineType)
            """
        case .notEngine:
            return "⛽️ ⚠️ 주유 및 충전이 불가능한 엔진 입니다. 🔋"
        }
    }
}
