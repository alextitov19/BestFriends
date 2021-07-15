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
                Image("SignUpPinBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    
                    Text("BestFriends")
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                        .frame(width: 225, height: 50)
                        .multilineTextAlignment(.center)
                
                    VStack {
                        Spacer()
                            .frame(height: 375)
                        
                        
                        TextField("Username", text: $username)
                            .frame(width: 225, height: 45, alignment: .center)
                            .multilineTextAlignment(.center)
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                            .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .cornerRadius(25)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                        
                        Spacer()
                            .frame(height: 20)
                        
                        SecureField("Password", text: $password)
                            .frame(width: 225, height: 45, alignment: .center)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                            .font(.title)
                            .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .cornerRadius(25)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                        
                        Spacer()
                            .frame(height: 15)
                        
                        Text("Double check the credentails")
                            .font(.system(size: 28, weight: .light))
                            .foregroundColor(.red)
                            .multilineTextAlignment(.center)
                            .isHidden(isErrorHidden)
                        
                        
                        Spacer()
                            .frame(height: 25)
                        
                        Button(action: {
                            let value = sessionManager.login(
                                username: username,
                                password: password
                            )
                            if value == false {
                                isErrorHidden = false
                            }
                        }) {
                            Text("Login")
                                .frame(width: 150, height: 50, alignment: .center)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.title)
                                .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                .cornerRadius(25)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        }
                        
                    }
                    VStack {
                        
                        Spacer()
                            .frame(height: 50)
                        
                        
                        Button("Don't have an account? Sign up.", action: sessionManager.showSignUp)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            .frame(width: 270, height: 30)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .overlay(
//                                RoundedRectangle(cornerRadius: 25)
//                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 2)
//                            )
                        
                        Spacer()
                            .frame(height: 25)
                        
                        
                        HStack {
                        NavigationLink(
                            destination: ForgotPassword(),
                            label: {
                                Text("Forgot Password")
                            })
                            .frame(width: 150, height: 30)
                            
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 2)
                           
                                    
                                 
                            )
                            
                        
                  
                        NavigationLink(
                            destination: ForgotUsername().environmentObject(sessionManager),
                            label: {
                                Text("Forgot Username")
                            })
                            
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            .frame(width: 150, height: 30)
                            .background(Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)))
                           
                            
                            
                        
                      
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
                
                Image("purpleBackground")
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
                
                Image("purpleBackground")
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
            Image("blueGradient1")
                .ignoresSafeArea()
            
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
//        LoginView()
//            .environmentObject(SessionManager())
//        ForgotPassword()
//        ConfirmNewPassword(username: "")
        ForgotUsername()
    }
}
