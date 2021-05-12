//
//  ResetPassword.swift
//  BestFriends
//
//  Created by Robert Roe on 5/8/21.
//

import SwiftUI
import Amplify

struct ResetPassword: View {
   
    @EnvironmentObject var sessionManager: SessionManager
    @State private var password: String = ""
    
    var body: some View {
            NavigationView {
            ZStack {
                
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    Text("Enter old password.")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 30)
                    
                    SecureField("Enter old password", text: $password)
                        .multilineTextAlignment(.center)
                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 300, height: 40, alignment: .center)
                        .font(.title)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .cornerRadius(20)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)

                    Spacer()
                        .frame(height: 30)
                    
                    Text("Fogot old password? Click here.")
                        .font(.system(size: 20))
                        .foregroundColor(.blue)
                        .multilineTextAlignment(.center)
                    VStack {
                        Spacer()
                            .frame(height: 60)
                        
                        Text("Enter NEW password.")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                            .frame(height: 30)
                        
                        SecureField("Enter NEW password", text: $password)
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
                        Text("Register")
                            .font(.title)
                    }
                    .frame(width: 200, height: CGFloat((didTap1 || didTap2 || didTap3 || didTap4) ? 50 : 0))
                    .disabled(!(didTap1 || didTap2 || didTap3 || didTap4))
                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                    .cornerRadius(25)
              
                }
            }
        }
    }
}

    struct ResetPassword_Previews : PreviewProvider {
    static var previews: some View {
        ResetPassword()
    }
}

    }

