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
        while true{
            controller.printMessage(.start)
            controller.printMessage(.problem)
            controller.inputStatus()
            
            switch controller.model.stateSelect{
            case "essential1":
                controller.printMessage(.essential1)
                controller.essential1()
            case "essential2":
                controller.printMessage(.essential2)
                controller.essential2()
            case "essential3":
                controller.printMessage(.essential3)
                controller.essential3()
            case "essential4":
                controller.printMessage(.essential4)
                controller.essential4()
            case "essential5":
                controller.printMessage(.essential5)
                controller.essential5()
            case "challenge1":
                controller.printMessage(.challenge1)
                controller.challenge1()
            case "challenge2":
                controller.printMessage(.challenge2)
                controller.challenge2()
            case "challenge3":
                controller.printMessage(.challenge3)
                controller.challenge3()

            case "challenge4":
                controller.printMessage(.challenge4)
                controller.challenge4()

                

            default:
                controller.printMessage(.invalid)
                
            }
        }
        
        
        
    }
}
