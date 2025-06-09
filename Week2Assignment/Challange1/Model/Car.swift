//
//  Challenge1/Model/Car.swift
//  Week2Assignment
//
//  Created by Yoon on 6/5/25.
//

class Car {
    public let brand: String
    public let modelName: String
    public let modelYear: String
    private(set) var engine: Engine
    private(set) var isMove = false
    private(set) var status = CarStatus.stopped

    public init(brand: String, modelName: String, modelYear: String, engine: Engine) {
        self.brand = brand
        self.modelName = modelName
        self.modelYear = modelYear
        self.engine = engine
    }

    public func drive() {
        if isMove == false {
            isMove = true
            status = .driving
            print(CarMessage.drivingStarted)
        } else {
            print(CarMessage.alreadyDriving)
        }
    }

    public func stop() {
        if isMove == true {
            isMove = false
            status = .stopped
            print(CarMessage.drivingStopped)
        } else {
            print(CarMessage.alreadyStopped)
        }
    }

    public func setEngine(_ newEngine: Engine) {
        engine = newEngine
    }
}
