//
//  Challenge1Main.swift
//  Week2Assignment
//
//  Created by Yoon on 6/5/25.
//

import Foundation

public func main6() {
    let testCar = HybridCar(brand: "Hyundai", modelName: "Tuscon", modelYear: "2025")
    testCar.drive()
    testCar.switchEngine(to: ElectricEngine())
    testCar.switchEngine(to: HybridEngine())
    testCar.stop()
    testCar.switchEngine(to: HybridEngine())
}
