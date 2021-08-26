//
//  Welcome.swift
//  BestFriends
//
//  Created by Alex Titov on 8/16/21.
//

import SwiftUI

struct WelcomeView: View {
    
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
                Spacer()

                Image("Logo")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .scaledToFill()
                
                Spacer().frame(height: 300)
                
                Button(action: {
                    sessionManager.showSignUp()
                }) {
                    Text("SIGN UP")
                        .frame(maxWidth: .infinity, minHeight: 60)
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(Color(#colorLiteral(red: 0.4874756932, green: 0.2377186716, blue: 0.9663465619, alpha: 0.9)))
                        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .cornerRadius(20)
                }
                .padding(.horizontal, 30)
                
                Spacer().frame(height: 30)
                
                Button(action: {
                    sessionManager.showLogin()
                }) {
                    Text("LOGIN")
                        .frame(maxWidth: .infinity, minHeight: 60)
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.white, lineWidth: 1)
                        )
                }
                .padding(.horizontal, 30)
                
                Spacer().frame(height: 30)
            }
            
        }
    }
}

struct WelcomeViewPreview : PreviewProvider {
    static var previews: some View {
        WelcomeView()
            .environmentObject(SessionManager())
    }
}
