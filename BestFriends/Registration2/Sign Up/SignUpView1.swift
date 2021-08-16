//
//  SignUp.swift
//  BestFriends
//
//  Created by Alex Titov on 8/16/21.
//

import SwiftUI

struct SignUpView1: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
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
                Text("Welcome to\nBestFriends!")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.all, 30)
                
                Text("BestFriends provides you with a safe, private and assuring environment where you can connect with your friends.")
                    .font(.system(size: 20, weight: .light))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 30)
                
                Spacer().frame(height: 100)
                
                Button(action: {
                    
                }) {
                    Text("GO")
                        .frame(maxWidth: 170, minHeight: 60)
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(Color(#colorLiteral(red: 0.4874756932, green: 0.2377186716, blue: 0.9663465619, alpha: 0.9)))
                        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .cornerRadius(20)
                }
                
                Spacer().frame(height: 50)
            }
            
            VStack {
                Spacer()
                
                Image("PeakingGuy")
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .scaledToFit()
                    .offset(y: 40)
            }
        }
    }
    
}


struct SignUpView1Preview : PreviewProvider {
    static var previews: some View {
        SignUpView1()
            .environmentObject(SessionManager())
    }
}
