//
//  Level5.swift
//  Week2Assignment
//
//  Created by 이서린 on 6/6/25.
//
import Foundation

func runLevel5() {
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
        guard !address.isEmpty else {
            throw DeliveryError.invalidAddress
        }
    
        switch status {
        case .notStarted:
            throw DeliveryError.notStarted
        case .error:
            throw DeliveryError.systemError(reason: "시스템 에러로 예측할 수 없습니다.")
        case .inTransit(let daysRemaining):
            return "배송까지 \(daysRemaining)일 남았습니다."
        }
    }
    
    let address = "경기도 시흥시 능곡동"
    let status = DeliveryStatus.inTransit(daysRemaining: 3)

    
    do {
        let message = try predictDeliveryDay(for: address, status: status)
        print("📦 배송 안내: \(message)")
    } catch DeliveryError.invalidAddress {
        print("⚠️ 주소가 올바르지 않습니다. 다시 입력해주세요.")
    } catch DeliveryError.notStarted {
        print("🚚 배송이 아직 시작되지 않았습니다. 잠시 후 다시 확인해주세요.")
    } catch DeliveryError.systemError(let reason) {
        print("🛑 시스템 에러로 예측할 수 없습니다. 사유: \(reason)")
    } catch {
        print("❓ 알 수 없는 오류가 발생했습니다.")
    }
}
