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
    let es5 = Essential5()
    let ch1 = Challenge1()
    let ch2 = Challenge2()
    let ch3 = Challenge3()
    let ch4 = Challenge4()
    
    // 메시지 출력
    func printMessage(_ message: Message) {
            print(message.text)
    }
    
    //  문제 선택 사용자 입력
    func inputStatus() {
        let input = readLine() ?? " "
        model.stateSelect = input
    }
    
    // 필수 문제
    func essential1() {
        print(es1.sum(es1.a,es1.b))
        es1.calculate(a: es1.a, b: es1.b, sum: es1.sum)
    }
    func essential2() {
        print(es2.result)
        print(es2.result2)
        let result = es2.myMap(array: [1, 2, 3, 4, 5], transform: {String($0)})
        print(result)
    }
    func essential3() {
        print(es3.a())
        print(es3.b())
        print(es3.c(array: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))
        print(es3.c(array: ["가", "나", "다", "라", "마", "바", "사", "아", "자", "차"]))
        print(es3.d(array: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))
        
        
    }
    func essential4() {
        printMessage(.notavatar)
    }
    func essential5() {
        printMessage(.notavatar)
    }
    // 도전 문제
    func challenge1() {
        printMessage(.notavatar)
    }
    func challenge2() {
        printMessage(.notavatar)
    }
    func challenge3() {
        printMessage(.notavatar)
    }
    func challenge4() {
        printMessage(.notavatar)
    }
}
