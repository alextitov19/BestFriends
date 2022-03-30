//
//  LoginView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/16/21.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
        
    @State var email = ""
    @State var password = ""
    @State private var errorString = ""

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
                    
                    MainTextField(text: $email, placeholder: "Email")
                    
                    MainSecureField(text: $password, placeholder: "Password")
                    
                    Text(errorString)
                        .font(.system(size: 20, weight: .light))
                        .italic()
                        .foregroundColor(ColorManager.red)
                        .multilineTextAlignment(.center)
                    
                    Button(action: {
                        // Check if email and password are empty
                        if email.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty || password.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                            errorString = "All fields must be properly filled in"
                            return
                        }
                        
                        // Login
                        RestApi.instance.login(email: email, password: password).then{ tokens in
                            //   self.removeActivityIndicator(myActivityIndicator)
                            print("Tokens: ", tokens)
                        }.catch { err in
                            print("Got error")
                            print(err)
                            //  self.removeActivityIndicator(myActivityIndicator)
                            errorString = "Cannot login. Try again"
                        }
                        
                    }) {
                        CustomButtonInterior(text: "Login", backgroundColor: ColorManager.purple4, textColor: ColorManager.grey1)
                    }
                    
                    
                    Text("Sign Up")
                        .underline()
                        .frame(width: 150, height: 30)
                        .foregroundColor(ColorManager.purple5)
                        .onTapGesture {
//                            sessionManager.showSignUp()
                        }
                    
//                    HStack {
//                        NavigationLink(
//                            destination: ForgotUsername().environmentObject(sessionManager),
//                            label: {
//                                Text("Forgot Username")
//                                    .underline()
//                                    .frame(width: 150, height: 30)
//                                    .foregroundColor(ColorManager.purple7)
//
//                            })
//                            .padding(5)
//
//                        NavigationLink(
//                            destination: ForgotPassword(),
//                            label: {
//                                Text("Forgot Password")
//                                    .underline()
//                                    .frame(width: 150, height: 30)
//                                    .foregroundColor(ColorManager.purple7)
//                            })
//                            .padding(5)
//                    }
                }
            }
        }
    }
}
