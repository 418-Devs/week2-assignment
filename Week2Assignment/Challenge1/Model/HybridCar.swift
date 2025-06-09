//
//  Challenge1/Model/HybridCar.swift
//  Week2Assignment
//
//  Created by Yoon on 6/5/25.
//

public class HybridCar: Car {
    init(brand: String, modelName: String, modelYear: String) {
        super.init(brand: brand, modelName: modelName, modelYear: modelYear, engine: HybridEngine())
    }

    public func switchEngine(to newEngine: Engine) {
        setEngine(newEngine)
        print(String(format: EngineMessage.changedEngine, newEngine.engineName))
    }
}
