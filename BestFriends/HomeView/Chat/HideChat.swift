//
//  HideChat.swift
//  BestFriends
//
//  Created by Social Tech on 6/1/22.
//

import SwiftUI

struct HideChatView: View {
    @State private var pin = ""
    
    var body: some View {
        ZStack {
            
            
            Image("settingsBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
           
            VStack {
            
        TextField("Enter your Pin ...", text: $pin)
            .keyboardType(.decimalPad)
            .foregroundColor(Color.white)
            .font(.system(size: 35))
//            .fontWeight(.ultraLight)
           
            .frame(width: 310, height: 50, alignment: .leading)
            .background(ColorManager.purple2)
            .cornerRadius(20)
            .submitLabel(.done)
            .onSubmit {  }
            
            Text("Retreive Your Messages")
                .font(.system(size: 80))
                .foregroundColor(.purple)
                .fontWeight(.ultraLight)
                .padding()
            
            Spacer ()
                .frame(height: 50)
            
            }
        }
    }
}



struct HideChatView_Previews : PreviewProvider {
    static var previews: some View {
        HideChatView()
    }
}



//
//    .fontWeight(.ultraLight)
//    .foregroundColor(Color.white)
//    .italic()
////                    .multilineTextAlignment(.center)
//    .frame(width: 320, height: 100, alignment: .leading)
//    .font(.system(size: 35))
//    .padding(10)
//   .background(Color.green)
//    .cornerRadius(40)
//    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
