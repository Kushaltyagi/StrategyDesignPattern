//
//  PayPalStrategy.swift
//  StrategyDesignPattern
//
//  Created by Kushal Tyagi on 07/09/24.
//

import Foundation

class PayPalStrategy: PaymentStrategy{
    let email: String
    
    init(email: String) {
        self.email = email
    }
    
    func makePayment(amount: Double) {
        print("Payment of \(amount) using account \(email) is successful ")
    }
}
