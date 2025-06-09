//
//  Challenge1/Model/HybridCar.swift
//  Week2Assignment
//
//  Created by Yoon on 6/5/25.
//

class HybridCar: Car {
    init(brand: String, modelName: String, modelYear: String) {
        let defaultEngine = HybridEngine()
        super.init(brand: brand, modelName: modelName, modelYear: modelYear, engine: defaultEngine)
    }

    public func switchEngine(to newEngine: Engine) {
        setEngine(newEngine)
        print(String(format: EngineMessage.changedEngine, newEngine.engineName))
    }
}
