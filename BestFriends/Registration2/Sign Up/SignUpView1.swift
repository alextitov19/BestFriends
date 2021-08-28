//
//  SignUp.swift
//  BestFriends
//
//  Created by Alex Titov on 8/16/21.
//

import SwiftUI

struct SignUpView1: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @State private var readyToGo = false
    
    var body: some View {
        NavigationView {
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
                    
                    VStack {
                        HStack {
                            Spacer()
                            
                            Image("X")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .padding(.horizontal, 30)
                                .onTapGesture {
                                    sessionManager.showWelcome()
                                }
                        }
                        
                        Spacer()
                        
                        Image("PeakingGuy")
                            .resizable()
                            .frame(maxWidth: .infinity)
                            .scaledToFit()
                            .offset(x: 0, y: 40)
                    }
                }
                
                VStack {
                    Text("Welcome to\nBestFriends!")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.all, 30)
                    
                    Text("A distinctive, positive and safeguarded environment connecting you with your friends.")
                        .font(.system(size: 20, weight: .light))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30)
                    
                    Spacer()
                    
                    Spacer()

                    Button(action: {
                        print("Hitmarker")
                        readyToGo = true
                    }) {
                        Text("GO")
                            .frame(maxWidth: 170, minHeight: 60)
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(Color(#colorLiteral(red: 0.4874756932, green: 0.2377186716, blue: 0.9663465619, alpha: 0.9)))
                            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .cornerRadius(20)
                    }
                    
                    NavigationLink("", destination: SignUpView2().environmentObject(sessionManager), isActive: $readyToGo)
                    
                    Spacer()
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}


struct SignUpView1Preview : PreviewProvider {
    static var previews: some View {
        SignUpView1()
            .environmentObject(SessionManager())
    }
}
