//
//  ContentView.swift
//  BestFriends
//
//  Created by Dhaval Desai on 7/20/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var CartManager = cartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(subscriptionList, id: \.id) { product in
                        subscriptionCard(product: product)
                            .environmentObject(CartManager)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Subscriptions"))
            
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(CartManager)
                } label: {
                    cartButton(numberOfProdcuts: CartManager.products.count)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

