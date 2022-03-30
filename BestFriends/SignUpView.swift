//
//  SignUpView.swift
//  BestFriends
//
//  Created by Alex Titov on 3/30/22.
//

import SwiftUI

struct SignUpView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @State private var firstname = ""
    @State private var lastname = ""
    @State private var email = ""
    @State private var password = ""
    
    @State private var errorMessage = ""
    
    var body: some View {
        ZStack {
            ColorManager.purple1
                .ignoresSafeArea()
            
            ZStack {
                Circle()
                    .frame(width: 400, height: 400)
                    .foregroundColor(ColorManager.purple3)
                    .offset(x: 200, y: -450)
                
                Circle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(ColorManager.purple3)
                    .offset(x: -200, y: 400)
            }
            
            
            VStack {
                Text("Welcome to BestFriends")
                    .font(.custom("MainFont", size: 40).bold())
                    .foregroundColor(ColorManager.grey3)
                    .padding(30)
                
                VStack {
                    MainTextField(text: $firstname, placeholder: "First Name")
                    
                    MainTextField(text: $lastname, placeholder: "Last Name")
                    
                    MainTextField(text: $email, placeholder: "Email")
                                        
                    MainSecureField(text: $password, placeholder: "Password")
                }
                
                Spacer().frame(height: 50)
                
                Text(errorMessage)
                    .foregroundColor(ColorManager.red)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                
                Button(action: {
                    if checkFields() {
                        let data = SignUpUserData(firstName: firstname, lastName: lastname, email: email, password: password)
                        // Sign up
                        RestApi.instance.signUp(data).then{ response in
                            //   self.removeActivityIndicator(myActivityIndicator)
                            print("Response: ", response)
                        }.catch { err in
                            print("Got error")
                            print(err)
                            //  self.removeActivityIndicator(myActivityIndicator)
                            errorMessage = "Cannot Sign Up. Try again"
                        }
                    }
                }) {
                    CustomButtonInterior(text: "Sign Up", backgroundColor: ColorManager.purple4, textColor: ColorManager.grey1)
                }
                
                
                // Terms of Service and Privacy Policy footer
                Text("By signing up, you agree to our")
                HStack {
                    Link("Terms of Service", destination: URL(string: "https://socialtechlabs.com/terms-service/")!)
                        .foregroundColor(ColorManager.purple5)
                    
                    Text("and")
                    
                    Link("Privacy Policy", destination: URL(string: "https://socialtechlabs.com/privacy-policy-2/")!)
                        .foregroundColor(ColorManager.purple5)
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
    
    private func checkFields() -> Bool {
        
        if firstname == "" || lastname == "" {
            return false
        }
        
        if isValidEmail() == false {
            errorMessage = "Email is taken or is not valid"
            return false
        }
        
        if password.count < 4 {
            errorMessage = "Password must be longer than 4 character"
            return false
        }
        
        return true
    }
    
    
    private func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        if emailPred.evaluate(with: email) == false {
            return false
        }
        
        return true
    }
    
}
