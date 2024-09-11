//
//  UPIPaymentStrategy.swift
//  StrategyDesignPattern
//
//  Created by Kushal Tyagi on 07/09/24.
//

import Foundation

class UPIPaymentStrategy : PaymentStrategy{
    let upiID : String
    
    init(upiID: String) {
        self.upiID = upiID
    }
    
    func makePayment(amount: Double) {
        print("Payment of \(amount) using UPI ID \(upiID) is successful")
    }
}
