//
//  ViewController.swift
//  StrategyDesignPattern
//
//  Created by Kushal Tyagi on 07/09/24.
//

import UIKit

class ViewController: UIViewController {
    let cart = Shopping()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        checkOut()
    }
    
    
    func checkOut(){
    // NO Strategy Added
        cart.pay(amount: 350)
        
        let creditCardPayment = CreditCardStrategy(cardNumber: "0987-6543-1234-2345")
        cart.addPaymentStrategy(creditCardPayment)
        cart.pay(amount: 350)
        
        let payPalPayment = PayPalStrategy(email: "User@domain.com")
        cart.addPaymentStrategy(payPalPayment)
        cart.pay(amount: 980)
    }
}

