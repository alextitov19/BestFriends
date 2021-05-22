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

    var body: some View {
        NavigationView {
            ZStack {
                Image("purpleBackground")
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
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                    
                    Spacer()
                        .frame(height: 50)
                    
                    SecureField("Password", text: $password)
                        .frame(width: 200, height: 50, alignment: .center)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .cornerRadius(25)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
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
                    
                    VStack {
                    // Put in Forgot Username
        
                    // Put in Forgot Password
                    NavigationLink(
                        destination: ForgotPassword(),
                        label: {
                            Text("Forgot Password")
                        })
                        .frame(width: 325, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), lineWidth: 1)
                                )
                        
                        Spacer()
                            .frame(height: 10)
                    
                    
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

struct LoginView_Previews : PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(SessionManager())
        ForgotPassword()
        ConfirmNewPassword(username: "")
    }
}
