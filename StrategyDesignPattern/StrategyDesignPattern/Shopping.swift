//
//  Shopping.swift
//  StrategyDesignPattern
//
//  Created by Kushal Tyagi on 07/09/24.
//

import Foundation

class Shopping{
    var paymentStrategy: PaymentStrategy?
    
    func addPaymentStrategy(_ strategy: PaymentStrategy){
        self.paymentStrategy = strategy
    }
    
    func pay(amount: Double){
        guard let strategy = paymentStrategy else {
            print("No Payment options selected")
            return
        }
        strategy.makePayment(amount: amount)
    }
}
