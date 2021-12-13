//
//  ForgotUsernameView.swift
//  BestFriends
//
//  Created by Alex Titov on 11/17/21.
//

import SwiftUI

struct ForgotUsername: View {
    
    @State var username = ""
    @State var email = ""
    @State var usernameFound = true
    
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        
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
                
                
                
                Spacer()
                    .frame(height: 175)
                
                Text("Forgot Username")
                    .foregroundColor(.black)
                    .font(.system(size: 50, weight: .light))
                    .padding(20)
                
                Text("Your username is: \(username)")
                    .foregroundColor(.black)
                    .font(.system(size: 30, weight: .light))
                    .isHidden(username.count == 0)
                    .padding(20)
                
                Text("There is not an account with that email")
                    .foregroundColor(.red)
                    .font(.system(size: 20, weight: .light))
                    .isHidden(usernameFound)
                    .padding(20)
                
                Spacer()
                    .frame(height: 15)
                
                //                TextField(" Email", text: $email)
                //                    .font(.system(size: 24, weight: .medium))
                //                    .multilineTextAlignment(.center)
                //                    .autocapitalization(.none)
                //                    .disableAutocorrection(true)
                //                    .foregroundColor(.black)
                //                    .background(Color(#colorLiteral(red: 0.5851855278, green: 0.3716525435, blue: 1, alpha: 1)))
                //                    .frame(width: 340)
                //                    .cornerRadius(20)
                //                    .padding(40)
                //
                //
                TextField("  Email", text: $email)
                    .frame(maxWidth: .infinity, maxHeight: 40)
                    .font(.system(size: 24))
                    .foregroundColor(.black)
                    .background(Color.clear)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    .multilineTextAlignment(.center)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .padding(.horizontal, 40)
                    .padding(.top, 10)
                
                Button(action: {
                    showUsername()
                }) {
                    CustomButtonInterior(text: "Submit", backgroundColor: ColorManager.purple4, textColor: ColorManager.grey1)

                }
                .padding(120)
            }
        }
    }
    
    private func showUsername() {
        let result = UserDataSource().getUsernameByEmail(email: email)
        if result == "" {
            usernameFound = false
        } else {
            usernameFound = true
            username = result
        }
    }
}
