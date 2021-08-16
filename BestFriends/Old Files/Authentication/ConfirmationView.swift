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
    let password: String
    
    var body: some View {
        ZStack {
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                Text("Enter the confirmation code\nyou recieved in the email.")
                    .font(.system(size: 28, weight: .light))
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .padding()
                
                
                
                Spacer()
                    .frame(height: 150)
                
                Text("Username: \(username)")
                    .font(.title2)
                    .bold()
                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                
                Text("WARNING: DO NOT LEAVE THE APP WHILE ON THIS PAGE TO GET YOUR CODE - MIGHT CAUSE AN ERROR!")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)))
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 30)
                
                Text("Apologies for the inconvenience,\nwe're working on it")
                    .font(.system(size: 20, weight: .light))
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                
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
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                
                Spacer()
                    .frame(height: 30)
                
                Button("Confirm", action: {
                    sessionManager.confirm(username: username, password: password, code: confirmationCode)
                })
                .frame(width: 200, height: 50, alignment: .center)
                .font(.title)
                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                .cornerRadius(25)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                
                
            }
        }
    }
}

struct ConfirmationView_Previews : PreviewProvider {
    static var previews: some View {
        ConfirmationView(username: "AlexTitov1", password: " ")
    }
}
