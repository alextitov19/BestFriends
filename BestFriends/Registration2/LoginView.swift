//
//  LoginView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/16/21.
//

import SwiftUI
import Amplify

struct LoginView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @State var username = ""
    @State var password = ""
    @State var isErrorHidden = true
    
    var body: some View {
        NavigationView {
            ZStack {
                ColorManager.purple1
                    .ignoresSafeArea()
                
                Circle()
                    .frame(width: 400, height: 400)
                    .foregroundColor(ColorManager.purple3)
                    .offset(x: 200, y: -400)
                
                Circle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(ColorManager.purple3)
                    .offset(x: -200, y: 400)
                
                VStack {
                    Text("Welcome Back")
                        .font(.custom("MainFont", size: 40).bold())
                        .foregroundColor(ColorManager.grey3)
                        .padding(30)
                    
                    MainTextField(text: $username, placeholder: "Username")
                    
                    MainSecureField(text: $password, placeholder: "Password")
                    
                    Text("Double check the credentails")
                        .font(.system(size: 20, weight: .light))
                        .italic()
                        .foregroundColor(ColorManager.red)
                        .multilineTextAlignment(.center)
                        .isHidden(isErrorHidden)
                    
                    Button(action: {
                        let value = sessionManager.login(
                            username: username.lowercased(),
                            password: password
                        )
                        if value == false {
                            isErrorHidden = false
                        }
                    }) {
                        CustomButtonInterior(text: "Login", backgroundColor: ColorManager.purple4, textColor: ColorManager.grey1)
                    }
                    
                    
                    Text("Sign Up")
                        .underline()
                        .frame(width: 150, height: 30)
                        .foregroundColor(ColorManager.purple5)
                        .onTapGesture {
                            sessionManager.showSignUp()
                        }
                    
                    HStack {
                        NavigationLink(
                            destination: ForgotUsername().environmentObject(sessionManager),
                            label: {
                                Text("Forgot Username")
                                    .underline()
                                    .frame(width: 150, height: 30)
                                    .foregroundColor(ColorManager.purple7)

                            })
                            .padding(5)
                        
                        NavigationLink(
                            destination: ForgotPassword(),
                            label: {
                                Text("Forgot Password")
                                    .underline()
                                    .frame(width: 150, height: 30)
                                    .foregroundColor(ColorManager.purple7)
                            })
                            .padding(5)
                    }
                }
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
