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
                Color(#colorLiteral(red: 0.6942788959, green: 0.5351929069, blue: 0.9598786235, alpha: 1))
                    .ignoresSafeArea()
                
                ZStack {
                    Circle()
                        .frame(width: 400, height: 400)
                        .foregroundColor(Color(#colorLiteral(red: 0.7975029945, green: 0.7191545963, blue: 0.9469521642, alpha: 1)))
                        .offset(x: 200, y: -400)
                    
                    Circle()
                        .frame(width: 300, height: 300)
                        .foregroundColor(Color(#colorLiteral(red: 0.7975029945, green: 0.7191545963, blue: 0.9469521642, alpha: 1)))
                        .offset(x: -200, y: 400)
                }
                
                VStack {
                    Spacer()
                        .frame(height: 50)
                    
                    Image("FatGuy")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .scaledToFill()
                        .cornerRadius(30)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        .offset(y: 10)
                    
                    VStack {
                        Spacer()
                            .frame(height: 35)
                        
                        Text("Welcome Back")
                            .font(.system(size: 40, weight: .bold))
                            .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                            .padding(30)
                        
                        TextField("  Username", text: $username)
                            .frame(maxWidth: .infinity, maxHeight: 40)
                            .font(.system(size: 24))
                            .foregroundColor(.black)
                            .background(Color.clear)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                            .multilineTextAlignment(.leading)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            .padding(.horizontal, 40)
                            .padding(.top, 10)
                        
                        Spacer()
                            .frame(height: 20)
                        
                        SecureField("  Password", text: $password)
                            .frame(maxWidth: .infinity, maxHeight: 40)
                            .font(.system(size: 24))
                            .foregroundColor(.black)
                            .background(Color.clear)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                            .multilineTextAlignment(.leading)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            .padding(.horizontal, 40)
                            .padding(.top, 10)
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text("Double check the credentails")
                            .font(.system(size: 20, weight: .light))
                            .italic()
                            .foregroundColor(.red)
                            .multilineTextAlignment(.center)
                            .isHidden(isErrorHidden)
                        
                        
                        Spacer()
                            .frame(height: 5)
                        
                        Button(action: {
                            let value = sessionManager.login(
                                username: username,
                                password: password
                            )
                            if value == false {
                                isErrorHidden = false
                            }
                        }) {
                            Text("LOGIN")
                                .font(.system(size: 20, weight: .semibold))
                                .foregroundColor(.white)
                                .frame(width: 150)
                                .frame(height: 60)
                                .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                .cornerRadius(20)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            
                            
                        }
                        
                    }
                    VStack {
                        
                        Spacer()
                            .frame(height: 100)
                        
                        
                        
                        Spacer()
                            .frame(height: 45)
                        
                        HStack {
                            NavigationLink(
                                destination: ForgotPassword(),
                                label: {
                                    Text("Forgot Password")
                                        .underline()
                                        .frame(width: 150, height: 30)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                })
                                .padding(5)
                                
                            
                            NavigationLink(
                                destination: ForgotUsername().environmentObject(sessionManager),
                                label: {
                                    Text("Forgot Username")
                                        .underline()
                                        .frame(width: 150, height: 30)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        
                                })
                                .padding(5)
                        }
                        
                        Spacer()
                            .frame(height: 130)
                    }
                    
                }
            }
        }
    }
}

struct ForgotPassword: View {
    
    @State private var username: String = ""
    @State private var readyToProceed = false
    
    var body: some View {
        NavigationView {
            ZStack {
                
                Image("SignUpPinBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    
                    Text("Reset Password")
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 200)
                    
                    TextField("Enter Username", text: $username)
                        .multilineTextAlignment(.center)
                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 300, height: 40, alignment: .center)
                        .font(.title)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .cornerRadius(20)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    Spacer()
                        .frame(height: 50)
                    
                    Button(action: {
                        if(username != "") {
                            UserManager().resetPassword(username: username)
                            readyToProceed = true
                        }
                    }) {
                        Text("Next")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .frame(width: 200, height: 50)
                            .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)
                        
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
                
                Image("SignUpPinBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    
                    Text("Change Password")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 30)
                    
                    SecureField("Enter NEW password", text: $password)
                        .multilineTextAlignment(.center)
                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 320, height: 40, alignment: .center)
                        .font(.title)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .cornerRadius(20)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    Spacer()
                        .frame(height: 30)
                    
                    TextField("Enter confirmation code", text: $code)
                        .multilineTextAlignment(.center)
                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 320, height: 40, alignment: .center)
                        .font(.title)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .cornerRadius(20)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    Spacer()
                        .frame(height: 50)
                    
                    Button(action: {
                        if(code != "") {
                            UserManager().confirmResetPassword(username: username, newPassword: password, confirmationCode: code)
                        }
                    }) {
                        Text("Submit")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .frame(width: 200, height: 50)
                            .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)
                        
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

struct ForgotUsername: View {
    
    @State var username = ""
    @State var email = ""
    @State var usernameFound = true
    
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        ZStack {
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                Text("Forgot Username")
                    .foregroundColor(.white)
                    .font(.system(size: 35, weight: .light))
                    .padding(20)
                
                Text("Your username is: \(username)")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .light))
                    .isHidden(username.count == 0)
                    .padding(20)
                
                Text("There is not an account with that email")
                    .foregroundColor(.red)
                    .font(.system(size: 20, weight: .light))
                    .isHidden(usernameFound)
                    .padding(20)
                
                Spacer()
                    .frame(height: 120)
                
                TextField(" Email", text: $email)
                    .font(.system(size: 24, weight: .medium))
                    .multilineTextAlignment(.center)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .foregroundColor(.black)
                    .background(Color(#colorLiteral(red: 0.228910774, green: 0.8312507868, blue: 1, alpha: 1)))
                    .frame(width: 340)
                    .cornerRadius(20)
                    .padding(40)
                
                Spacer()
                    .frame(height: 120)
                
                Button(action: {
                    showUsername()
                }) {
                    Text("Submit")
                        .frame(width: 150, height: 50, alignment: .center)
                        .font(.system(size: 24, weight: .light))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.046738334, green: 0.4033712745, blue: 0.9790328145, alpha: 1)))
                        .cornerRadius(25)
                }
                .padding(20)
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

struct LoginView_Previews : PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(SessionManager())
        //        ForgotPassword()
        //        ConfirmNewPassword(username: "")
        //        ForgotUsername()
    }
}
