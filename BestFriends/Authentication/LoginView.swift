//
//  LoginView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/16/21.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @State var username = ""
    @State var password = ""

    var body: some View {
        ZStack {
            Image("blueBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                Spacer()
                    .frame(height: 75)
                
                Text("Login")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))

                Spacer()
                
                TextField("Username", text: $username)
                    .frame(width: 200, height: 50, alignment: .center)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .cornerRadius(25)
                
                Spacer()
                    .frame(height: 50)
                
                SecureField("Password", text: $password)
                    .frame(width: 200, height: 50, alignment: .center)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .cornerRadius(25)

                Spacer()
                    .frame(height: 75)
                
                Button("Login", action: {
                    sessionManager.login(
                        username: username,
                        password: password
                    )
                })
                .frame(width: 150, height: 50, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                .cornerRadius(25)
                
                Spacer()
                
                Button("Don't have an account? Sign up.", action: sessionManager.showSignUp)
                    .frame(width: 300, height: 50)
                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), lineWidth: 1)
                            )
          
            }
        }
    }
}

struct LoginView_Previews : PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(SessionManager())
    }
}
