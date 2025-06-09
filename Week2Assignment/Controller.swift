//
//  Controller.swift
//  Week2Assignment
//
//  Created by 이태윤 on 6/5/25.
//
import Foundation

class Controller {
    var model = Model()
    let es1 = Essential1()
    let es2 = Essential2()
    let es3 = Essential3()
    let es4 = Essential4()
    let es501 = Essential5(address: "부산광역시 진구", status: .inTransit(daysRemaining: 2))
    let es502 = Essential5(address: "", status: .inTransit(daysRemaining: 2))
    let es503 = Essential5(address: "부산광역시 진구", status: .notStarted)
    let es504 = Essential5(address: "부산광역시 진구", status: .error)
    let ch1 = Challenge1()
    let ch2 = Challenge2()
    let ch3 = Challenge3()
    let ch4 = Challenge4()
    
    // 메시지 출력
    func printMessage(_ message: Message) {
            print(message.text)
    }
    
    //  문제 선택 사용자 입력
    func inputStatus(_ input: String) {
        model.stateSelect = input
    }
    
    // MARK: getter
    // input getter
    func inputCheck() -> String {
        return model.stateSelect
    }
    
    // isRunning getter
    func isRunning() -> Bool {
            return model.isRunning
        }
    
    // 프로그램 종료
    func exit() {
        model.isRunning = false
    }
    
    
    // MARK: 필수문제
    // 필수 문제 1번
    func essential1() {
        print(es1.sum(es1.a,es1.b))
        es1.calculate(a: es1.a, b: es1.b, sum: es1.sum)
    }
    // 필수 문제 2번
    func essential2() {
        print(es2.result)
        print(es2.result2)
        let result = es2.myMap(array: [1, 2, 3, 4, 5], transform: {String($0)})
        print(result)
    }
    // 필수 문제 3번
    func essential3() {
        print(es3.a())
        print(es3.b())
        print(es3.c(array: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))
        print(es3.c(array: ["가", "나", "다", "라", "마", "바", "사", "아", "자", "차"]))
        print(es3.d(array: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))
        
        
    }
    // 필수 문제 4번
    func essential4() {
        for figure in es4.figures {
            if var robot = figure as? Robot {
                print(robot.introduce())
                robot.name = "옵티머스"
                print(robot.introduce())
                robot.shootLaser()
                robot.shootLaser()
                robot.chargeBattery()
            }
            else if var cat = figure as? Cat {
                print(cat.introduce())
                cat.feed()
                cat.feed()
            }
            else if var dog = figure as? Dog {
                print(dog.introduce())
                dog.play()
                dog.play()
            }
        }
    }
    // 필수 문제 5번
    func essential5() {
        // 정상 작동
        do {
            let result = try es501.predictDeliveryDay()
            print(result)
        } catch DeliveryError.invalidAddress {
            controller.printMessage(.addresserror)
        } catch DeliveryError.notStarted {
            controller.printMessage(.notStarted)
        } catch DeliveryError.systemError(let reason) {
            controller.printMessage(.systemerror(reason: reason))
        } catch {
            controller.printMessage(.unknownerror)
        }
        // 주소 누락시 에러
        do {
            let result = try es502.predictDeliveryDay()
            print(result)
        } catch DeliveryError.invalidAddress {
            controller.printMessage(.addresserror)
        } catch DeliveryError.notStarted {
            controller.printMessage(.notStarted)
        } catch DeliveryError.systemError(let reason) {
            controller.printMessage(.systemerror(reason: reason))
        } catch {
            controller.printMessage(.unknownerror)
        }
        // 배송 전 상태 에러
        do {
            let result = try es503.predictDeliveryDay()
            print(result)
        } catch DeliveryError.invalidAddress {
            controller.printMessage(.addresserror)
        } catch DeliveryError.notStarted {
            controller.printMessage(.notStarted)
        } catch DeliveryError.systemError(let reason) {
            controller.printMessage(.systemerror(reason: reason))
        } catch {
            controller.printMessage(.unknownerror)
        }
        // 시스템 에러
        do {
            let result = try es504.predictDeliveryDay()
            print(result)
        } catch DeliveryError.invalidAddress {
            controller.printMessage(.addresserror)
        } catch DeliveryError.notStarted {
            controller.printMessage(.notStarted)
        } catch DeliveryError.systemError(let reason) {
            controller.printMessage(.systemerror(reason: reason))
        } catch {
            controller.printMessage(.unknownerror)
        }
    }
    // MARK: 도전문제
    // 도전 문제 1번
    func challenge1() {
        ch1.run()

    }
    // 도전 문제 2번
    func challenge2() {
        printMessage(.notavatar)
    }
    // 도전 문제 3번
    func challenge3() {
        printMessage(.notavatar)
    }
    // 도전 문제 4번
    func challenge4() {
        printMessage(.notavatar)
    }
}
