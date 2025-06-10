//
//  Hydrogen.swift
//  Week2Assignment
//
//  Created by 이태윤 on 6/10/25.
//

class HydrogenCar: Car {
    private let hydrogenEngine: HydrogenEngine

    init(brand: String, model: String, year: String, engine: HydrogenEngine) {
        self.hydrogenEngine = engine
        super.init(brand: brand, model: model, year: year, engine: engine)
    }
    func hydrogen() {
        hydrogenEngine.chargehydrogen()
    }
}

class HydrogenEngine: Engine {
    var engineType: String = "Hydrogen"
    // 수소 엔진 전용 메서드
    func chargehydrogen() {
        controller.printMessage(.chargehydrogen(engineType: engineType))
    }
}

