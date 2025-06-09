//
//  Challenge1Main.swift
//  Week2Assignment
//
//  Created by Yoon on 6/5/25.
//
// 도전문제 1

import Foundation

public func main6() {
    let testCar = HybridCar(brand: "Hyundai", modelName: "Tuscon", modelYear: "2025")
    
    //기능 확인용 코드
    testCar.drive()
    testCar.switchEngine(to: ElectricEngine())
    testCar.switchEngine(to: HybridEngine())
    testCar.stop()
    testCar.switchEngine(to: HybridEngine())
    
    /*
     상속을 사용하여 기능을 추가하는 것과, 프로토콜 채택을 통해서 기능을 추가하는 것의 장단점, 차이를 고민하고 주석으로 서술해주세요.
     - 상속
     장점 : 코드를 그대로 재사용 가능.
     단점 : 스위프트는 단일 상속만 지원
     - 프로토콜채택
     장점 : 다중채택이 가능하고 구조체 열거형에 적용이 가능해 유연성이 높음
     단점 : 코드가 중복되어 다중 채택 시 분기 처리가 복잡해지고 필수 구현을 빠트려 에러가 발생할 위험 증가
     */
}
