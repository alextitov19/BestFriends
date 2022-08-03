//
//  subscription.swift
//  BestFriends
//
//  Created by Dhaval Desai on 7/20/22.
//

import Foundation

struct subscription: Identifiable{
    
var id = UUID()
var name: String
var price: Int
    
}

var subscriptionList = [subscription(name: "Purple monthly", price: Int(Double(1.00))),
                        subscription(name: "Purple yearly", price: Int(Double(10.00)))]
