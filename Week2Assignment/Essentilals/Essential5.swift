//
//  Essential5.swift
//  Week2Assignment
//
//  Created by 이태윤 on 6/5/25.
//

class Essential5 {
    var address: String
    var status: DeliveryStatus
    
    init(address: String, status: DeliveryStatus) {
        self.address = address
        self.status = status
    }

    func predictDeliveryDay() throws -> String {
        if address.isEmpty {
            throw DeliveryError.invalidAddress
        }
        switch status {
        case .notStarted:
            throw DeliveryError.notStarted
        case .error:
            throw DeliveryError.systemError(reason: "시스템에 문제가 발생했습니다.")
        case .inTransit(daysRemaining: let daysRemaining):
            controller.printMessage(.transit(daysRemaining: daysRemaining))
            return ""
        }
    }
}

enum DeliveryStatus {
    case notStarted
    case inTransit (daysRemaining: Int)
    case error
}

enum DeliveryError: Error {
    case invalidAddress
    case notStarted
    case systemError(reason: String)
}


