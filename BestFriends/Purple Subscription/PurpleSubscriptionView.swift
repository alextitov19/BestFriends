//
//  PurpleSubscriptionView.swift
//  BestFriends
//
//  Created by Alex Titov on 8/5/22.
//

import SwiftUI

struct PurpleSubscriptionView: View {
    
    var body: some View {
        NavigationView {
            List {
                HStack {
                    VStack(alignment: .leading) {
                        Text("PURPLE Monthly")
                            .font(.headline)
                        Text("Try our plan for one month")
                            .font(.caption2)
                    }
                    
                    Spacer()
                    
                    if UserDefaults.standard.bool(forKey: "*ID of IAP Product*") {
                        Text("Purchased")
                            .foregroundColor(.green)
                    } else {
                        Button(action: {
                            //Purchase particular IAO product
                        }) {
                            Text("Buy for 0.99 $")
                        }
                        .foregroundColor(.blue)
                    }
                }
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("PURPLE Yearly")
                            .font(.headline)
                        Text("Get our plan for the year at a discount")
                            .font(.caption2)
                    }
                    
                    Spacer()
                    
                    if UserDefaults.standard.bool(forKey: "*ID of IAP Product*") {
                        Text("Purchased")
                            .foregroundColor(.green)
                    } else {
                        Button(action: {
                            //Purchase particular IAO product
                        }) {
                            Text("Buy for 9.99 $")
                        }
                        .foregroundColor(.blue)
                    }
                }
            }
            .navigationTitle("PURPLE")
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        //Restore products already purchased
                    }) {
                        Text("Restore Purchases ")
                    }
                }
            })
        }
    }
}
