//
//  CreditCardStrategy.swift
//  StrategyDesignPattern
//
//  Created by Kushal Tyagi on 07/09/24.
//

import Foundation

class CreditCardStrategy : PaymentStrategy{
    private let cardNumber: String
    
    init(cardNumber: String) {
        self.cardNumber = cardNumber
    }
    
    func makePayment(amount: Double) {
        print("Payment of \(amount) using card \(cardNumber) is successful")
    }
}
