//
//  ChallengeLevel1.swift
//  Week2Assignment
//
//  Created by 서광용 on 6/8/25.
//

// MARK: - Engine 커스텀 타입 정의
protocol Engine {
    var engine: String { get }
}

// MARK: - GasolineEngine
private struct GasolineEngine: Engine {
    internal let engine: String = "가솔린 엔진"
}

// MARK: - ElectricEngine
private struct ElectricEngine: Engine {
    internal let engine: String = "전기 엔진"
}

// MARK: - HydrogenEngine
private struct HydrogenEngine: Engine {
    internal let engine: String = "수소 엔진"
}

struct ChallengeLevel1 {
    static func run() {
        print("\n👉 [도전 문제 1-1] 일반 자동차(Car) 정보 출력 및 동작 테스트")
        ChallengeLevel1_1()
        
        print("\n👉 [도전 문제 1-2] 전기 자동차(ElectricCar) 정보 출력 테스트")
        ChallengeLevel1_2()
        
        print("\n👉 [도전 문제 1-3] 하이브리드 자동차(HybridCar) 엔진 변경 테스트")
        ChallengeLevel1_3()
    }
    
    // Car 테스트
    private static func ChallengeLevel1_1() {
        let car = Car(brandName: "Hyundai", modelName: "Sonata", modelYear: "2010년 모델", engine: GasolineEngine())
        print(car.brandName)
        print(car.engineName)
        print(car.modelName)
        print(car.modelYear)
        car.drive()
        car.stop()
    }
    
    // ElectricCar 테스트
    private static func ChallengeLevel1_2() {
        let electricCar = ElectricCar(brandName: "Tesla", modelName: "Model 3", modelyear: "2023년 모델")
        print(electricCar.brandName)
        print(electricCar.engineName)
        print(electricCar.modelName)
        print(electricCar.modelYear)

    }
    
    // HybridCar 테스트
    private static func ChallengeLevel1_3() {
        let hybridCar = HybridCar(brandName: "Hyundai", modelName: "Nexo", modelyear: "2022년 모델")
        print(hybridCar.engineName)
        print(hybridCar.switchEngine(to: GasolineEngine()))
        print(hybridCar.switchEngine(to: ElectricEngine()))
        print(hybridCar.switchEngine(to: HydrogenEngine()))
    }
}

// MARK: - Car
private class Car {
    internal var brandName: String
    internal var modelName: String
    internal var modelYear: String
    internal var engine: Engine
    internal var engineName: String {
        engine.engine
    }
    
    internal init(brandName: String, modelName: String, modelYear: String, engine: Engine) {
        self.brandName = brandName
        self.modelName = modelName
        self.modelYear = modelYear
        self.engine = engine
    }
    
    internal func drive() {
        print("Car가 운전 중입니다.")
    }
    
    internal func stop() {
        print("Car가 정지합니다.")
    }
    
    internal func charge() {
        print("Car가 주유중입니다.")
    }
}

// MARK: - Car를 상속한 ElectricCar
private class ElectricCar: Car {
    internal init(brandName: String, modelName: String, modelyear: String) {
        // Engine을 ElectricEngine으로 고정
        super.init(brandName: brandName, modelName: modelName, modelYear: modelyear, engine: ElectricEngine())
    }
}

// MARK: - Car를 상속한 HybridCar
private class HybridCar: Car {
    internal init(brandName: String, modelName: String, modelyear: String) {
        // Engine을 HydrogenEngine으로 고정
        super.init(brandName: brandName, modelName: modelName, modelYear: modelyear, engine: HydrogenEngine())
    }
    
    // 엔진 변경 메서드
    internal func switchEngine(to changeEngine: Engine) -> String {
        engine = changeEngine
        return "엔진이 \(engineName)으로 변경되었습니다."
    }
}

// MARK: - 상속과 프로토콜 채택을 통해 기능을 추가하는 것의 장단점, 차이점
/// - 상속은 부모 클래스에 정의된 기능을 물려받아 필요한 것만 골라서 사용할 수 있다. 다만, 클래스는 하나의 클래스만 상속받을 수 있다는 단점이 있다.
/// - 프로토콜은 여러 타입을 일괄적으로 맞출 수 있고, 다중 채택이 가능하다는 장점이 있지만, 상속과 다르게 정의된 요구사항을 전부 구현해야 한다는 단점이 있다.
