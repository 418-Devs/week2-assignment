//
//  StandardLevel5.swift
//  Week2Assignment
//
//  Created by 서광용 on 6/7/25.
//

// MARK: - 배송 상태 열거형
private enum DeliveryStatus: Equatable {
    case notStarted
    case isTransit(daysRemaining: Int)
    case error
}

// MARK: - 배송 관련 에러 열거형
private enum DeliveryError: Error {
    case invalidAddress // 주소가 잘못된 경우
    case notStarted // 배송이 시작되지 않은 경우
    case systemError(reason: String) // 시스템 에러
}

struct StandardLevel5 {
    static func run () {
        print("\n👉 [필수 문제 5-1] 에러 처리 중심의 택배 배송 예측 시스템")
        level5_1()
    }
    
    private static func level5_1() {
        printDeliveryStatus(address: "", status: .isTransit(daysRemaining: 1))
        printDeliveryStatus(address: "서울", status: .notStarted)
        printDeliveryStatus(address: "경기도", status: .error)
        printDeliveryStatus(address: "부산", status: .isTransit(daysRemaining: 2))
        
        // MARK: - 배송 예상일 예측 함수 (에러 가능)
        /// 주소와 상태를 기반으로 배송 예정일 반환, 에러 발생 가능
        func predictDeliveryDay(for address: String, status: DeliveryStatus) throws -> String {
            // 주소가 비어 있으면 에러 발생
            if address.isEmpty {
                throw DeliveryError.invalidAddress
            }
            // 배송 상태에 따라 결과 분기
            switch status {
            case .notStarted:
                throw DeliveryError.notStarted
            case .error:
                throw DeliveryError.systemError(reason: "404 Not Found")
            case .isTransit(let dayRemaining): // 남은 일수를 메시지로 반환
                return "배송까지 \(dayRemaining)일 남았습니다."
            }
        }
        
        // MARK: - do-catch 구문을 통한 에러 처리
        /// 예측 함수 호출 후 결과 출력 또는 에러 메시지 처리
        func printDeliveryStatus(address: String, status: DeliveryStatus) {
            do {
                let message = try predictDeliveryDay(for: address, status: status)
                print(message)
            } catch DeliveryError.invalidAddress {
                print("❌ 주소가 비어 있습니다.")
            } catch DeliveryError.notStarted {
                print("❌ 아직 배송이 시작되지 않았습니다.")
            } catch DeliveryError.systemError(let reason) {
                print("❌ 시스템 에러입니다. 에러 코드: \(reason)")
            } catch {
                // 기타 에러 처리
                print("❌ 알 수 없는 에러가 발생했습니다: \(error)")
            }
        }
    }
}
