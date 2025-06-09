//
//  Challenge4.swift
//  Week2Assignment
//
//  Created by 이태윤 on 6/5/25.
//

class Challenge4 {
    func run() {
        var a: A? = A()
        var b: B? = B()
        
        a?.b = b
        b?.a = a
        b?.closure?()
        
        // 모든 참조 해제
        b?.closure = nil
        b?.a = nil
        a?.b = nil

        // 마지막으로 참조 해제
        a = nil // 이 시점에서 A가 해제되고 deinit 출력됨
        b = nil // 이 시점에서 B가 해제되고 deinit 출력됨
    }
}


class A{
    // 클래스 B 인스턴스를 참조 (강한 참조)
    var b: B?
    
    // A 인스턴스가 메모리에서 해제될 때 호출됨
    deinit{
        controller.printMessage(.adeinit)
    }
}

class B {
    // 클래스 A 인스턴스를 참조 (강한 참조)
    var a: A?
    // 클로저 내부에서 self.a를 참조하여 클로저 기반의 순환 참조 발생 가능
    var closure: (() -> Void)?
    
    init() {
        closure = { [weak self] in
            guard let self = self else {
                controller.printMessage(.nilB)
                return
            }
            guard let a = self.a else {
                controller.printMessage(.nilA)
                return
            }
            controller.printMessage(.closureBtoA)
        }

    }

    // B 인스턴스가 메모리에서 해제될 때 호출됨
    deinit {
        controller.printMessage(.bdeinit)
    }
}
