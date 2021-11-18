//
//  SignUpView5.swift
//  BestFriends
//
//  Created by Alex Titov on 8/20/21.
//

import SwiftUI

struct SignUpView5: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State private var username = ""
    @State private var firstname = ""
    @State private var lastname = ""
    @State private var email = ""
    @State private var password = ""
    
    @State private var errorMessage = ""
    
    @State private var readyToGo = false
    
    @State private var tosShowing = false
    @State private var privacyShowing = false
    
    
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
                HStack {
                    Text("Get Started")
                        .font(.custom("MainFont", size: 30).bold())
                        .foregroundColor(ColorManager.grey4)
                        .padding(.horizontal, 40)
                    
                    Spacer()
                }
                
                
                HStack {
                    Text("Just a few steps away")
                        .font(.custom("MainFont", size: 16))                        .foregroundColor(ColorManager.grey4)
                        .padding(.horizontal, 40)
                    
                    Spacer()
                }
                .padding(.bottom, 30)
                
                VStack {
                    MainTextField(text: $firstname, placeholder: "First Name")
                    
                    MainTextField(text: $lastname, placeholder: "Last Name")
                    
                    MainTextField(text: $username, placeholder: "Username")
                    
                    MainSecureField(text: $password, placeholder: "Password")
                    
                    MainTextField(text: $email, placeholder: "Email")
                }
                
                Spacer().frame(height: 50)
                
                Text(errorMessage)
                    .foregroundColor(ColorManager.red)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                
                Button(action: {
                    checkFields()
                }) {
                    CustomButtonInterior(text: "Sign Up", backgroundColor: ColorManager.purple4, textColor: ColorManager.grey1)
                }
                
                Text("By signing up, you agree to our")
                    .popover(isPresented: $tosShowing, content: {
                        TermsOfServiceView()
                    })
                
                
                HStack {
                    Link("Terms of Service", destination: URL(string: "https://socialtechlabs.com/terms-service/")!)
                        .foregroundColor(ColorManager.purple5)
                        .onTapGesture {
                            tosShowing = true
                        }
                    
                    Text("and")
                        .popover(isPresented: $privacyShowing, content: {
                            PrivacyPolicyView()
                        })
                    
                    Link("Privacy Policy", destination: URL(string: "https://socialtechlabs.com/privacy-policy-2/")!)
                        .foregroundColor(ColorManager.purple5)
                        .onTapGesture {
                            privacyShowing = true
                        }
                }
                
                NavigationLink("", destination: SignUpView6(username: username.lowercased(), firstname: firstname, lastname: lastname, email: email, password: password).environmentObject(sessionManager), isActive: $readyToGo)
            }
            
            
            
            VStack {
                HStack {
                    Image("arrowLeft")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .padding(.horizontal, 30)
                        .onTapGesture {
                            self.mode.wrappedValue.dismiss()
                        }
                        .offset(x: 0, y: 50)
                    
                    Spacer()
                }
                
                Spacer()
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
    
    private func checkFields() {
        if firstname == "" {
            return
        }
        
        if lastname == "" {
            return
        }
        
        if username == "" {
            return
        }
        
        if email == "" {
            return
        }
        
        if password == "" {
            return
        }
        
        if checkUsername() == false {
            errorMessage = "Username is taken or is not valid"
            return
        }
        
        if isValidEmail() == false {
            errorMessage = "Email is taken or is not valid"
            return
        }
        
        if password.count < 8 {
            errorMessage = "Password must be 8 characters long and contain 1 capital letter."
            return
        }
        
        let capitalLetterRegEx  = ".*[A-Z]+.*"
        let texttest = NSPredicate(format:"SELF MATCHES %@", capitalLetterRegEx)
        let capitalresult = texttest.evaluate(with: password)
        if capitalresult == false {
            errorMessage = "Password must be 8 characters long and contain 1 capital letter."
            return
        }
        
        readyToGo = true
    }
    
    private func checkUsername() -> Bool {
        let usernames = ManDocDataSource().getManDoc(id: "takenUsernames").usernames ?? []
        let currentusername = username.lowercased()
        for uname in usernames {
            if uname == currentusername {
                return false
            }
        }
        return true
    }
    
    private func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        if emailPred.evaluate(with: email) == false {
            return false
        }
        
        let emails = ManDocDataSource().getManDoc(id: "takenEmails").emails ?? []
        for foo in emails {
            if foo == email {
                return false
            }
        }
        return true
    }
    
}


struct SignUpView5Preview : PreviewProvider {
    static var previews: some View {
        SignUpView5()
            .environmentObject(SessionManager())
    }
}
