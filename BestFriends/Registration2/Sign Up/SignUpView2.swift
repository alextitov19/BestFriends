//
//  SignUpView2.swift
//  BestFriends
//
//  Created by Alex Titov on 8/16/21.
//

import SwiftUI

struct SignUpView2: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State private var readyToGo = false

    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.4874756932, green: 0.2377186716, blue: 0.9663465619, alpha: 0.9))
                .ignoresSafeArea()
            ZStack {
                Circle()
                    .frame(width: 400, height: 400)
                    .foregroundColor(Color(#colorLiteral(red: 0.4874756932, green: 0.2377186716, blue: 0.9663465619, alpha: 1)))
                    .offset(x: 200, y: -400)
                
                Circle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(Color(#colorLiteral(red: 0.4874756932, green: 0.2377186716, blue: 0.9663465619, alpha: 1)))
                    .offset(x: -200, y: -100)
                
                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(Color(#colorLiteral(red: 0.4874756932, green: 0.2377186716, blue: 0.9663465619, alpha: 1)))
                    .offset(x: 150, y: 100)
            }
            
            VStack {
                Spacer()
                    .frame(height: 100)
                
                Image("SignUp2")
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .scaledToFit()
                    .padding(.horizontal, 20)
                
                Text("BFFs")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.top, 50)
                    .padding(.bottom, 10)
                
                Text("Having a bad day and need your friends? We keep your chats personal and secure.")
                    .font(.system(size: 26, weight: .light))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 30)
                
                Spacer().frame(height: 100)
                
                Button(action: {
                    readyToGo = true
                }) {
                    Image("ButtonArrowIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                
                NavigationLink("", destination: SignUpView3().environmentObject(sessionManager), isActive: $readyToGo)
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
                    
                    Spacer()
                }
                
                Spacer()
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
    
}


struct SignUpView2Preview : PreviewProvider {
    static var previews: some View {
        SignUpView2()
            .environmentObject(SessionManager())
    }
}
