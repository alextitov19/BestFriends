//
//  PurpleSubscriptionView.swift
//  BestFriends
//
//  Created by Alex Titov on 8/5/22.
//

import SwiftUI
import StoreKit

struct PurpleSubscriptionView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @StateObject var storeManager: StoreManager
    
    var body: some View {
        NavigationView {
            List(storeManager.myProducts, id: \.self) { product in
                HStack {
                    VStack(alignment: .leading) {
                        Text(product.localizedTitle)
                            .font(.headline)
                        Text(product.localizedDescription)
                            .font(.caption2)
                    }
                    Spacer()
                    if UserDefaults.standard.bool(forKey: product.productIdentifier) {
                        Text ("Purchased")
                            .foregroundColor(.green)
                    } else {
                        Button(action: {
                            storeManager.purchaseProduct(product: product)
                        }) {
                            Text("Buy for \(product.price) $")
                        }
                        .foregroundColor(.blue)
                    }
                }
            }
            .navigationTitle("PURPLE Subscription")
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        sessionManager.showHome()
                    }) {
                        Text ("< Back")
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        storeManager.restoreProducts()
                    }) {
                        Text ("Restore Purchases ")
                    }
                }
            })
        }
    }
}


