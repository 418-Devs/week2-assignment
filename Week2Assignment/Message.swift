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
    case invalid

    var text: String {
        switch self {
        case .start:
            return "문제를 선택하여 주세요! 🤔"
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
        case .invalid:
            return "essential1 ~ essential5, challenge1 ~ challenge4 중 선택해주세요! 🤔"
        }
    }
    
}
