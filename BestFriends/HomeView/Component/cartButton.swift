//
//  cartButton.swift
//  BestFriends
//
//  Created by Dhaval Desai on 7/20/22.
//

import SwiftUI

struct cartButton: View {
    var numberOfProdcuts:Int
    
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart")
                .padding(.top,5)
            
            if numberOfProdcuts > 0{
                Text("\(numberOfProdcuts)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                    .cornerRadius(50)
            }
            
        }
    }
}

struct cartButton_Previews: PreviewProvider {
    static var previews: some View {
        cartButton(numberOfProdcuts: 1)
    }
}
