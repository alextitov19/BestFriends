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
            Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
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
                HStack {
                    Text("Get Started")
                        .font(.system(size: 30, weight: .semibold))
                        .padding(.horizontal, 40)
                    
                    Spacer()
                }
                
                
                HStack {
                    Text("Just a few steps away")
                        .font(.system(size: 16, weight: .light))
                        .padding(.horizontal, 40)
                    
                    Spacer()
                }
                .padding(.bottom, 30)
                
                VStack {
                    HStack {
                        TextField("  First Name", text: $firstname)
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
                            .padding(.leading, 40)
                            .padding(.trailing, 5)
                        
                        TextField("  Last Name", text: $lastname)
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
                            .padding(.trailing, 40)
                            .padding(.leading, 5)
                    }
                    
                    TextField("  Username", text: $username)
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
                        .padding(.vertical, 10)
                                        
                    SecureField("  Password", text: $password)
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
                        .padding(.vertical, 10)
                    
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
                }
                
                Spacer().frame(height: 100)
                
                Text(errorMessage)
                    .foregroundColor(.red)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                
                Button(action: {
                    checkFields()
                }) {
                    Text("SIGN UP")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 60)
                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(20)
                        .padding(.horizontal, 40)
                    
                }
                .padding(.vertical, 20)
                
                Text("By signing up, you agree to our")
                    .popover(isPresented: $tosShowing, content: {
//                       TermsOfServiceView()
                    })
                
                
                HStack {
                    Text("")
                        .underline()
                        .foregroundColor(.blue)
                        .onTapGesture {
                            tosShowing = true
                        }

                    Text("")
                        .popover(isPresented: $privacyShowing, content: {
                            PrivacyPolicyView()
                        })

                    Text("Privacy Policy / Terms of Service")
                        .underline()
                        .foregroundColor(.blue)
                        .onTapGesture {
                            privacyShowing = true
                        }
                }
                
                NavigationLink("", destination: SignUpView6(username: username, firstname: firstname, lastname: lastname, email: email, password: password).environmentObject(sessionManager), isActive: $readyToGo)
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
