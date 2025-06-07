//
//  StandardLevel5.swift
//  Week2Assignment
//
//  Created by 서광용 on 6/7/25.
//

// 배송 상태를 표현하는 열거형
enum DeliveryStatus: Equatable {
    case notStarted
    case isTransit(daysRemaining: Int)
    case error
}

// 에러가 발생할 수 있는 열거형
enum DeliveryError: Error {
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
        
        // MARK: - 에러를 던질 수 있는 함수
        /// 주소와 배송 상태를 바탕으로 배송 예상일을 반환함
        func predictDeliveryDay(for address: String, status: DeliveryStatus) throws -> String {
            // 주소가 빈 문자열일 경우 -> 주소 유효성 검사
            if address.isEmpty {
                throw DeliveryError.invalidAddress
            }
            // 배송 상태에 따라 분기
            switch status {
            case .notStarted:
                throw DeliveryError.notStarted
            case .error:
                throw DeliveryError.systemError(reason: "404 Not Found")
            case .isTransit(let dayRemaining): // 값을 dayRemaining 상수에 저장하여 출력
                return "배송까지 \(dayRemaining)일 남았습니다."
            }
        }
        
        // MARK: - do-catch로 호출
        /// 에러가 발생할 수 있는 함수를 안전하게 호출하기 위함
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
                // 위에서 처리되지 않은 모든 에러가 있을 경우 처리
                print("❌ 알 수 없는 에러가 발생했습니다: \(error)")
            }
        }
    }
}
