//
//  ConfirmationView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/16/21.
//

import SwiftUI

struct ConfirmationView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @State var confirmationCode = ""
    
    let username: String
    
    var body: some View {
        ZStack {
            Image("Earth")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                Spacer()
                    .frame(height: 5)
                
                Text("Confirm your email")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                
                Spacer()
                    .frame(height: 300)
                
                Text("Username: \(username)")
                    .font(.title2)
                    .bold()
                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                
                Spacer()
                    .frame(height: 30)
                
                TextField("Confirmation Code", text: $confirmationCode)
                    .frame(width: 300, height: 50, alignment: .center)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .cornerRadius(25)
                    .autocapitalization(.none)
                
                Spacer()
                    .frame(height: 30)
                
                Button("Confirm", action: {
                    sessionManager.confirm(username: username, code: confirmationCode)
                })
                .frame(width: 200, height: 50, alignment: .center)
                .font(.title)
                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                .cornerRadius(25)
                
               
            }
        }
    }
}

struct ConfirmationView_Previews : PreviewProvider {
    static var previews: some View {
        ConfirmationView(username: "AlexTitov1")
    }
}
