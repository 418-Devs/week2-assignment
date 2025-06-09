//
//  Electric.swift
//  Week2Assignment
//
//  Created by 이태윤 on 6/9/25.
//

class ElectricCar: Car {
    private let electricEngine: ElectricEngine

    
    init(brand: String, model: String, year: String, engine: ElectricEngine) {
        self.electricEngine = engine
        super.init(brand: brand, model: model, year: year, engine: engine)
    }
    func battery() {
        electricEngine.chargeBattery()
    }
    
}

class ElectricEngine: Engine {
    var engineType: String = "Electric"
    // 전기 엔진 전용 메서드
    public func chargeBattery() {
        controller.printMessage(.chargeBattery(engineType: engineType))
    }
}
