//
//  cartManager.swift
//  BestFriends
//
//  Created by Dhaval Desai on 7/20/22.
//

import Foundation

class cartManager: ObservableObject{
    @Published private(set) var products: [subscription] = []
    @Published private(set) var total: Int = 0
    
    let paymentHandler = PaymentHandler()
    @Published var paymentSuccess = false
    
    func addtoCart(product : subscription){
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: subscription) {
        products = products.filter { $0.id != product.id }
        total -= product.price
    }
    func pay() {
        paymentHandler.startPayment(products: products,total:total) { success in
            self.paymentSuccess = success
            self.products = []
            self.total = 0
        }
    }
    
    // Call the startPayment function from the PaymentHandler. In the completion handler, set the paymentSuccess variable
    }
