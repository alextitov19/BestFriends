//
//  ForgotPassword.swift
//  BestFriends
//
//  Created by Alex Titov on 11/17/21.
//

import SwiftUI

struct ForgotPassword: View {
    
    @State private var username: String = ""
    @State private var readyToProceed = false
    
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
                    
                    Text("Reset Password")
                        .font(.system(size: 50))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 200)
                    
                    TextField("Enter Username", text: $username)
                    //                        .multilineTextAlignment(.center)
                    //                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    //                        .frame(width: 300, height: 40, alignment: .center)
                    //                        .font(.title)
                    //                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    //                        .cornerRadius(20)
                    //                        .autocapitalization(.none)
                    //                        .disableAutocorrection(true)
                    //
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
                    
                    
                    Spacer()
                        .frame(height: 50)
                    
                    Button(action: {
                        if(username != "") {
                            UserManager().resetPassword(username: username)
                            readyToProceed = true
                        }
                    }) {
                        CustomButtonInterior(text: "Next", backgroundColor: ColorManager.purple4, textColor: ColorManager.grey1)

                    }
                    
                    Spacer()
                        .frame(height: 50)
                    
                    NavigationLink(destination: ConfirmNewPassword(username: username), isActive: $readyToProceed) { EmptyView() }
                    
                    
                }
            }
        }
    }
}

struct ConfirmNewPassword: View {
    
    @State private var password: String = ""
    @State private var code: String = ""
    
    
    let username: String
    
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
                    
                    Text("Change Password")
                        .font(.system(size: 50))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 30)
                    
                    SecureField("Enter NEW password", text: $password)
                    //                        .multilineTextAlignment(.center)
                    //                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    //                        .frame(width: 320, height: 40, alignment: .center)
                    //                        .font(.title)
                    //                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    //                        .cornerRadius(20)
                    //                        .autocapitalization(.none)
                    //                        .disableAutocorrection(true)
                    //
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
                    
                    Spacer()
                        .frame(height: 30)
                    
                    TextField("Enter confirmation code", text: $code)
                    //                        .multilineTextAlignment(.center)
                    //                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    //                        .frame(width: 320, height: 40, alignment: .center)
                    //                        .font(.title)
                    //                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    //                        .cornerRadius(20)
                    //                        .autocapitalization(.none)
                    //                        .disableAutocorrection(true)
                    //
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
                    
                    Spacer()
                        .frame(height: 50)
                    
                    Button(action: {
                        if(code != "") {
                            UserManager().confirmResetPassword(username: username, newPassword: password, confirmationCode: code)
                        }
                    }) {
                        CustomButtonInterior(text: "Submit", backgroundColor: ColorManager.purple4, textColor: ColorManager.grey1)

                        
                    }
                    
                    Spacer()
                        .frame(height: 50)
                    
                }
                .navigationTitle("")
                .navigationBarHidden(true)
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
    
}
