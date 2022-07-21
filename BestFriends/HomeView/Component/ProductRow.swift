//
//  ProductRow.swift
//  BestFriends
//
//  Created by Dhaval Desai on 7/20/22.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: cartManager
    var product: subscription
    
    var body: some View {
        HStack(spacing: 20) {
            Text(product.name)
                .frame(width: 50)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(product.name)
                    .bold()

                Text("$\(product.price)")
            }
            
            Spacer()

            Image(systemName: "trash")
                .foregroundColor(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: subscriptionList[2])
            .environmentObject(cartManager())
    }
}

