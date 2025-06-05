//
//  Message.swift
//  Week2Assignment
//
//  Created by Yoon on 6/5/25.
//

// 차량 관련 메시지
public enum CarMessage {
    static let drivingStarted = "주행 시작했습니다."
    static let drivingStopped = "주행 정지했습니다."
    static let alreadyDriving = "이미 주행 중입니다."
    static let alreadyStopped = "이미 정지 중입니다."
}

// 엔진 관련 메시지
public enum EngineMessage {
    static let gasolineEngineName = "가솔린 엔진"
    static let electricEngineName = "전기 엔진"
    static let hydrogenEngineName = "수소 엔진"
    static let hybridEngineName = "하이브리드 엔진"
    static let changedEngine = "엔진이 %@로 교체되었습니다."
}
