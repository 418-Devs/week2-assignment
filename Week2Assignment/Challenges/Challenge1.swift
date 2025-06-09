//
//  Challenge1.swift
//  Week2Assignment
//
//  Created by 이태윤 on 6/9/25.
//

class Challenge1 {
    let evcar = ElectricCar(brand: "Porsche", model: "Taycan", year: "2024", engine: ElectricEngine())
    let gascar = GasolineCar(brand: "BMW", model: "M550i", year: "2023", engine: GasolineEngine())
    let hybridcar = HybridCar(brand: "Lamborghini", model: "Revuelto", year: "2025", engine: ElectricEngine())
    
    func run() {
        evcar.carInfo()
        gascar.carInfo()
        hybridcar.carInfo()
        
        evcar.speedup()
        evcar.driving()
        evcar.speeddown()
        evcar.battery()
        
        gascar.driving()
        gascar.speeddown()
        gascar.oil()
        
        hybridcar.printEngineInfo()
        hybridcar.switchEngine(to: ElectricEngine())
        hybridcar.energyCharge()
        hybridcar.switchEngine(to: GasolineEngine())
        hybridcar.energyCharge()
    }
    
/**
 상속(Inheritance)
장점: 부모 클래스의 기능을 그대로 물려받아 재사용할 수 있어 코드 중복이 줄어들고 구조가 명확해 이해하기가 쉬운거 같다.
단점: 대신 다중 상속이 불가능하여 구조가 제한되고 클래스 간 결합이 생겨 테스트나 유지보수에 불리한거 같다.

 프로토콜(Protocol)
 장점: 다중 채택이 가능해 유연한 설계가 가능하고, 클래스 뿐만아니라 struct, enum에도 적용이 가능하여 코드의 범용성이 높다.
 단점: 기본 구현을 제공하지 않으면 중복 코드가 생길 수 있고 여러 프로토콜을 조합할 경우 타입 추론이나 제네릭에서 복잡성이 생기는거같다.
 
 처음에 프로토콜을 여러개 생성하여 서브프로토콜하는 식으로 채택을 하면서 하였는데 복잡하여서 다시 클래스로 바꿔서 작성하였다...
 확실히 상속은 기능을 계층적으로 확장할 때 유용하지만 클래스간의 결합 때문에 구조적 제약 때문에 테스트나 유지보수에 불리한거 같다.
 또 반면 프로토콜은 유연하고 확장성이 뛰어난거 같다.
 
**/
     

    
}
