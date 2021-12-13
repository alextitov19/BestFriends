//
//  SignUpView6.swift
//  BestFriends
//
//  Created by Alex Titov on 8/21/21.
//

import SwiftUI

struct SignUpView6: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State private var readyToGo = false

    let username: String
    let firstname: String
    let lastname: String
    let email: String
    let password: String
    
    
    var body: some View {
        ZStack {
            ColorManager.purple1
                .ignoresSafeArea()
            
            ZStack {
                Circle()
                    .frame(width: 400, height: 400)
                    .foregroundColor(ColorManager.purple3)
                    .offset(x: 200, y: -400)
                
                Circle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(ColorManager.purple3)
                    .offset(x: -200, y: 400)
            }
            
            VStack {
                Text("Final Steps")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(ColorManager.grey4)
                    .padding()
                
                Text("In order for you to use BestFriends effeciently, please tell us a few things about yourself.")
                    .font(.system(size: 20, weight: .regular))
                    .foregroundColor(ColorManager.grey4)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 40)
                
                Button(action: {
                    readyToGo = true
                }) {
                    CustomButtonInterior(text: "Next", backgroundColor: ColorManager.purple4, textColor: ColorManager.grey1)
                }
                .padding(.vertical, 150)
                .navigationBarTitle("")
                .navigationBarHidden(true)
                
                NavigationLink("", destination: SignUpView7(username: username, firstname: firstname, lastname: lastname, email: email, password: password).environmentObject(sessionManager), isActive: $readyToGo)
                
            }
            
            VStack {
                HStack {
                    Image("arrowLeft")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .padding(.horizontal, 30)
                        .onTapGesture {
                            self.mode.wrappedValue.dismiss()
                        }
                    
                    Spacer()
                }
                
                Spacer()
            }
        }
    }
}

//struct SignUpView6Preview : PreviewProvider {
//    static var previews: some View {
//        SignUpView6(username: "", firstname: "", lastname: "", email: "", password: "")
//            .environmentObject(SessionManager())
//    }
//}
