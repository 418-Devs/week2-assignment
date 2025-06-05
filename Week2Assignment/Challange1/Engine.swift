//
//  Engine.swift
//  Week2Assignment
//
//  Created by Yoon on 6/5/25.
//

// 엔진 프로토콜 정의
public protocol Engine {
    var engineName: String { get }
}

// 각 엔진 타입 정의

struct GasolineEngine: Engine {
    let engineName = EngineMessage.gasolineEngineName
}

struct HydrogenEngine: Engine {
    let engineName = EngineMessage.hydrogenEngineName
}

struct ElectricEngine: Engine {
    let engineName = EngineMessage.electricEngineName
}

struct HybridEngine: Engine {
    let engineName = EngineMessage.hybridEngineName
}
