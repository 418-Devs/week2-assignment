//
//  View.swift
//  Week2Assignment
//
//  Created by 이태윤 on 6/5/25.
//
import Foundation

class View {
    let controller = Controller()
    
    func run() {
        while controller.isRunning() {
            controller.printMessage(.start)
            controller.printMessage(.problem)
            guard let input = readLine() else {
                controller.printMessage(.invalid)
                continue
            }
            controller.inputStatus(input)
            
            switch controller.inputCheck(){
                
            // 필수문제 1번
            case "essential1":
                controller.printMessage(.essential1)
                controller.essential1()
                
            // 필수문제 2번
            case "essential2":
                controller.printMessage(.essential2)
                controller.essential2()
                
            // 필수문제 3번
            case "essential3":
                controller.printMessage(.essential3)
                controller.essential3()
                
            // 필수문제 4번
            case "essential4":
                controller.printMessage(.essential4)
                controller.essential4()
                
            // 필수문제 5번
            case "essential5":
                controller.printMessage(.essential5)
                controller.essential5()
            
            // 도전문제 1번
            case "challenge1":
                controller.printMessage(.challenge1)
                controller.challenge1()
                
            // 도전문제 2번
            case "challenge2":
                controller.printMessage(.challenge2)
                controller.challenge2()
                
            // 도전문제 3번
            case "challenge3":
                controller.printMessage(.challenge3)
                controller.challenge3()

            // 도전문제 4번
            case "challenge4":
                controller.printMessage(.challenge4)
                controller.challenge4()

            case "exit":
                controller.printMessage(.exit)
                controller.exit()
                
                
            // 잘못된 입력 메시지 출력
            default:
                controller.printMessage(.invalid)
                
            }
        }
        
        
        
    }
}
