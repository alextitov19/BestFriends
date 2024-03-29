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
                ColorManager.purple4
                    .ignoresSafeArea()
                ZStack {
                    Circle()
                        .frame(width: 400, height: 400)
                        .foregroundColor(ColorManager.signUpCircleColor)
                        .offset(x: 200, y: -400)
                    
                    Circle()
                        .frame(width: 300, height: 300)
                        .foregroundColor(ColorManager.signUpCircleColor)
                        .offset(x: -200, y: -100)
                    
                    Circle()
                        .frame(width: 200, height: 200)
                        .foregroundColor(ColorManager.signUpCircleColor)
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
                    
                    Spacer()
                        .frame(height: 115)
                    
                    
                    Text("introducing")
                        .font(.system(size: 15, weight: .light))
                        .italic()
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    Text("BestFriends!")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.all, 0)
                    
                    
                    
                    
                    Spacer()
                        .frame(height: 30)
                    
                    
                    Text("Built by Teens")
                        .font(.system(size: 20, weight: .light))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30)
                    
                    VStack{
                        
                        Spacer()
                            .frame(height: 70)
                        
                        Text("It breaths positivity - all in a safe environment where you connect with your friends.")
                            .font(.system(size: 27, weight: .light))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 30)
                        Spacer()
                        
                        Button(action: {
                            print("Hitmarker")
                            readyToGo = true
                        }) {
                            CustomButtonInterior(text: "GO", backgroundColor: ColorManager.grey1, textColor: ColorManager.purple5)
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
}

struct SignUpView1Preview : PreviewProvider {
    static var previews: some View {
        Group {
            SignUpView1()
                .environmentObject(SessionManager())
            SignUpView1()
                .environmentObject(SessionManager())
        }
    }
}

