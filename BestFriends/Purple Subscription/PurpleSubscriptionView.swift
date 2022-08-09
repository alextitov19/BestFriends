//
//  PurpleSubscriptionView.swift
//  BestFriends
//
//  Created by Alex Titov on 8/5/22.
//

import SwiftUI
import StoreKit

struct PurpleSubscriptionView: View {
    
//    @EnvironmentObject var sessionManager: SessionManager
    
    @StateObject var storeManager: StoreManager
    
    var body: some View {

//        Spacer ()
//            .frame(height: 50)
//        
//        Button(action: {
//            sessionManager.showLogin()
//        },
//            label: {
//                Text("Home / Chat")
//                    .fontWeight(.thin)
//                    .frame(width: 200, height: 40)
//                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                    .font(.system(size: 30))
//                    .background(ColorManager.purple3)
//                    .cornerRadius(15)
//                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//            })
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
            }            .navigationTitle("PURPLE Subscription")
                .toolbar(content: {
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


