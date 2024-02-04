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
 
                Color.black
                    .opacity(0.9)
                    .ignoresSafeArea()
                
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()

                AdPlayerView(name: "sky2")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .opacity(0.9)
                
                AdPlayerView(name: "moonShots")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .opacity(0.9)
                
                
                //TODO: Remove the onAppear for production
                    .onAppear {
//                        sessionManager.login(email: "test1234@gmail.com", password: "secretPass")
                        if RestApi.instance.needLogin == false {
                            sessionManager.showHome()
                        }
                    }
                
                Circle()
                    .frame(width: 400, height: 400)
                    .foregroundColor(ColorManager.purple3)
                    .offset(x: 200, y: -400)
                
                Circle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(ColorManager.purple3)
                    .offset(x: -200, y: 400)
                
                VStack {
                  
                    Text("For your protection:")
                        .font(.system(size: 20, weight: .light))
                        .foregroundColor(Color.white)
                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                        .opacity(0.50)
                        .multilineTextAlignment(.center)
                       
                    Text("We don't sell user data or use 3rd party cookies")
                        .font(.system(size: 15, weight: .light))
                        .foregroundColor(Color.white)
                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                        .opacity(0.50)
                        .multilineTextAlignment(.center)
                    
               
                    
                    
                    MainTextField(text: $email, placeholder: "Email")
                        .padding(.horizontal, 40)
                        .padding(.vertical, 15)
                    
                    MainSecureField(text: $password, placeholder: "Password")
                        .padding(.horizontal, 40)
                        .padding(.vertical, 15)
                    
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
                        
                        email = email.lowercased()
                        
                        RestApi.instance.login(email: email, password: password).then{ tokens in
                            print("Tokens: ", tokens)
                            sessionManager.showHome()
                        }.catch { err in
                            print("Got error")
                            print(err)
                            errorString = "Invalid Credentials"
                        }
                        
                    }) {
                        CustomButtonInterior(text: "Login", backgroundColor: ColorManager.purple4, textColor: Color.white)
                    }
                    
                    Button(action: {
                        sessionManager.showSignUp()
                    }) {
                        Text("Sign Up")
                            .font(.system(size: 25))
                            .underline()
                            .frame(width: 150, height: 30)
                            .foregroundColor(Color.white)
                    }
                }
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
