//
//  BlueModeLP.swift
//  BestFriends
//
//  Created by Robert Roe on 5/18/21.
//


import SwiftUI

struct BlueModeLP: View {

    var body: some View {
  
        ZStack {
            Image("Shayla3 copy")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                ZStack {
                    Image("ChatBubbleTrans")
                        .resizable()
                        .frame(width: 400, height: 250)
                        .scaledToFill()
                    
                    Text("Before you start 'unfriending' each other on IG & Snap, or repost private messages that will be hurtful - let's try 'BlueMode'.")
                        .italic()
                        .font(.system(size: 21))
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 250, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                .padding()
                
            VStack {
                Spacer()
                
                Text("We can help.")
                    .font(.system(size: 25))
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 385, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                NavigationLink(destination: DarkModeView()) {
                        Text("Ok, activate 'BlueMode'")
                            .font(.system(size: 30))
                            .fontWeight(.ultraLight)
                            .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                            .frame(width: 350, height: 50)
                            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .cornerRadius(25)
           
                    }
                
                Spacer()
                    .frame(height: 160)
                }
            }
        }
    }
}


struct BlueModeLP_Previews : PreviewProvider {
    static var previews: some View {
        BlueModeLP()
    }
}
