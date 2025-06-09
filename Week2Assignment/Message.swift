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
            return "🔹 4. 필수 문제 (자기소개)"
        case .essential5:
            return "🔹 5. 필수 문제 (택배 도착 예측 시스템)"
        case .challenge1:
            return "🔸 1. 도전 문제 (자동차)"
        case .challenge2:
            return "🔸 2. 도전 문제 (정렬 상자 part.1)"
        case .challenge3:
            return "🔸 3. 도전 문제 (정렬 상자 part.2)"
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
        }
    }
    
}
