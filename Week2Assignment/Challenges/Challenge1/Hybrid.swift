//
//  Hybrid.swift
//  Week2Assignment
//
//  Created by 이태윤 on 6/9/25.
//

import Foundation

class HybridCar: Car {
    init(brand: String, model: String, year: String, engine: ElectricEngine) {
        super.init(brand: brand, model: model, year: year, engine: engine)
    }
    
    // 엔진 교체 기능
    func switchEngine(to newEngine: Engine) {
        // 교체하려는 엔진이 동일하면 교체할 수 없다는 메시지 출력
        if newEngine.engineType == engine.engineType {
            controller.printMessage(.notswitchEngine(engine: newEngine))
        }
        else {
            self.engine = newEngine
            controller.printMessage(.switchEngine(engine: engine))
        }
        
    }
    
    // 현재 엔진 타입에 따라 충전 또는 주유 메서드 호출
    func energyCharge() {
        if let electricEngine = engine as? ElectricEngine {
            electricEngine.chargeBattery()
        } else if let gasolineEngine = engine as? GasolineEngine {
            gasolineEngine.chargeOil()
        } else {
            controller.printMessage(.notEngine)
        }
    }
}
    
class HybridEngine: Engine {
    var engineType: String = "Hybrid"
}
