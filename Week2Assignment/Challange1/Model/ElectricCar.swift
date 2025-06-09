//
//  ElectricCar.swift
//  Week2Assignment
//
//  Created by Yoon on 6/5/25.
//

class ElectricCar: Car {
    init(brand: String, modelName: String, modelYear: String, engine _: ElectricEngine) {
        let defaultEngine = ElectricEngine()
        super.init(brand: brand, modelName: modelName, modelYear: modelYear, engine: defaultEngine)
    }
}
