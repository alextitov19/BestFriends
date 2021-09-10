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
                    Text("Introducing\nBestFriends!")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.all, 30)
                    
                    Text("Designed by Teens")
                        .font(.system(size: 15, weight: .light))
                    .italic()
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30)
                    
                 
                   
                    Spacer()
                        .frame(height: 70)
                    
                    Text("It's exciting, unique and breaths positivity - all in a safe environment where you connect with your friends.")
                        .font(.system(size: 27, weight: .light))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30)
                    
//                    Spacer()
//                    Text("BestFriends is Apple 'Safety Rated' down to 4yrs of age.")
//                        .font(.system(size: 23, weight: .light))
//                        .italic()
//                        .foregroundColor(.white)
//                        .multilineTextAlignment(.center)
//                        .padding(.horizontal, 30)
//   Spacer()

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
        Group {
            SignUpView1()
                .environmentObject(SessionManager())
            SignUpView1()
                .environmentObject(SessionManager())
        }
    }
}
