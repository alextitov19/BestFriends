//
//  MyAccountView.swift
//  BestFriends
//
//  Created by Alex Titov on 8/10/21.
//

import SwiftUI

struct MyAccountView: View {

    var body: some View {
        VStack {
            HStack {
                Text("Change Password")
                    .font(.system(size: 20))
                
                Spacer().frame(maxHeight: 0)
                
                Image("arrowRight")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .scaledToFit()
                    .colorInvert()
            }
            
            Divider()
            
            HStack {
                Text("Change PIN for Hide Chat")
                    .font(.system(size: 20))
                
                Spacer().frame(maxHeight: 0)
                
                Image("arrowRight")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .scaledToFit()
                    .colorInvert()
            }
            
            Divider()
            
            HStack {
                Text("Delete Account")
                    .font(.system(size: 20))
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)))
                
                Spacer().frame(maxHeight: 0)
                
                Image("arrowRight")
                    .renderingMode(.template)
                    .resizable()
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)))
                    .frame(width: 25, height: 25)
            }
            
            Spacer()
        }
        .padding(30)
        .navigationBarTitle("My Account", displayMode: .large)
    }
    
}
