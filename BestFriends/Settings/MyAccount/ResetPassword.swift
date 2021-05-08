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
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 50)
                    
                    SecureField("Enter new password", text: $password)
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

