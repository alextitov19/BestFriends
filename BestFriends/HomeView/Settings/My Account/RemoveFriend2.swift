//
//  RemoveFriend2.swift
//  BestFriends
//
//  Created by Social Tech on 6/21/22.
//

import Foundation

import SwiftUI


struct RemoveFriend2: View {
    @EnvironmentObject var sessionManager: SessionManager

    let user: User
    let removeFriend: RemoveFriend
    
    @State private var friendEmail: String = ""
//    @State private var newPassword: String = ""
    @State private var string = ""
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    var body: some View {
        
        ZStack {
            
            
            ColorManager.grey4
                .ignoresSafeArea()
            
          
            VStack {
                Text("Remove Friend from BestFriends")
                    .font(.system(size: 30))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                
                
                Spacer()
                    .frame(height: 50)
                
                Text(string)
                    .font(.system(size: 35))
                    .foregroundColor(.green)
                    .multilineTextAlignment(.center)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .frame(height: 100)
                
                
                SecureField("Enter Friends Email", text: $friendEmail)
                    .multilineTextAlignment(.center)
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .frame(width: 300, height: 40, alignment: .center)
                    .font(.title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(20)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                
                

//
                Spacer()
                    .frame(height: 50)
                
                Button(action: {
                }, label: {
                    Text("Submit")
                        .fontWeight(.thin)
                        .frame(width: 225, height: 40)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 30))
                        .background(ColorManager.purple3)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
                })
                
            }
            
            
            
            Spacer()
                .frame(height: 50)
        }
    }
    
//    private func submit() {
//        if oldPassword.count > 0 && newPassword.count > 0 {
//            RestApi.instance.updatePassword(email: user.id, password: oldPassword, newPassword: newPassword).then({ response in
//                print("Reset password response: ", response)
//                string = "Success"
                
//                private func submit() {
//                    if friendEmail.count > 0 {
//                        RestApi.instance.removeFriend(email: user.id, removeFriend: removeFriend).then({ response in
//                            print("Remove Friend response: ", response)
//                            string = "Success"
//
                            
                        
}
