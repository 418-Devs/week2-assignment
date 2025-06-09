//
//  Challenge1/Model/ElectricCar.swift
//  Week2Assignment
//
//  Created by Yoon on 6/5/25.
//

public class ElectricCar: Car {
    init(brand: String, modelName: String, modelYear: String) {
        super.init(brand: brand, modelName: modelName, modelYear: modelYear, engine: ElectricEngine())
    }
}
