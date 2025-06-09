//
//  Gasoline.swift
//  Week2Assignment
//
//  Created by 이태윤 on 6/9/25.
//

class GasolineCar: Car {
    private let gasolineEngine: GasolineEngine

    init(brand: String, model: String, year: String, engine: GasolineEngine) {
        self.gasolineEngine = engine
        super.init(brand: brand, model: model, year: year, engine: engine)
    }
    func oil() {
        gasolineEngine.chargeOil()
    }
}

class GasolineEngine: Engine {
    var engineType: String = "Gasoline"
    // 가솔린 엔진 전용 메서드
    func chargeOil() {
        controller.printMessage(.chargeOil(engineType: engineType))
    }
}
