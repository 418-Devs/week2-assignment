//
//  mandatory5.swift
//  Week2Assignment
//
//  Created by Yoon on 6/5/25.
//
// 필수문제 5

import Foundation

enum DeliveryStatus {
    case notStarted
    case inTransit(daysRemaining: Int)
    case error
}

enum DeliveryError: Error {
    case invalidAddress
    case notStarted
    case systemError(reason: String)
}

func predictDeliveryDay(for address: String, status: DeliveryStatus) throws -> String {
    if address.isEmpty {
        throw DeliveryError.invalidAddress
    }

    switch status {
    case .notStarted:
        throw DeliveryError.notStarted
    case .error:
        throw DeliveryError.systemError(reason: "시스템 에러")
    case let .inTransit(daysRemaining):
        return "배송까지 \(daysRemaining)일 남았습니다."
    }
}

func main5() {
    
//    let address = ""
    let address = "경기도 수원시 영통구"
    
//    let status = DeliveryStatus.notStarted
//    let status = DeliveryStatus.error
    let status = DeliveryStatus.inTransit(daysRemaining: 2)

    var result: String

    do {
        result = try predictDeliveryDay(for: address, status: status)

    } catch DeliveryError.invalidAddress {
        result = "잘못된 주소입니다."
    } catch DeliveryError.notStarted {
        result = "배송이 아직 시작되지 않았습니다."
    } catch DeliveryError.systemError(let reason) {
        result = reason
    } catch {
        result = "알 수 없는 오류코드 : \(error)"
    }

    print(result)
}
