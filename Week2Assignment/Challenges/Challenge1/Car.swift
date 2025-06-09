//
//  Challenge1.swift
//  Week2Assignment
//
//  Created by 이태윤 on 6/5/25.
//
import Foundation

class Car {
    public let brand: String
    public let model: String
    public let year: String
    private(set) var speed: Int = 0
    var engine: Engine
    
    init(brand: String, model: String, year: String, engine: Engine) {
        self.brand = brand
        self.model = model
        self.year = year
        self.engine = engine
    }
    
    public func carInfo() {
        controller.printMessage(.carInfo(brand: brand, model: model, year: year, engine: engine))
    }
    
    public func driving() {
        if speed == 0{
            controller.printMessage(.nodriving(brand: brand, model: model))
        }
        else {
            controller.printMessage(.driving(brand: brand, model: model, speed: speed))
        }
    }
    
    public func speedup() {
        speed += 10
        controller.printMessage(.acceleratorpedal(brand: brand, model: model))
        
    }
    
    public func speeddown() {
        if speed == 0{
            controller.printMessage(.nodriving(brand: brand, model: model))
        }
        else{
            speed -= 10
            controller.printMessage(.brakepedal(brand: brand, model: model))
            
        }
        
    }
    
    public func printEngineInfo() {
        controller.printMessage(.engineInfo(engineType: engine.engineType))
    }
}




