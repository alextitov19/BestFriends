//
//  SessionView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/16/21.
//

import SwiftUI
import Amplify
import AVKit


struct SessionView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: AuthUser

    var body: some View {
        NavigationView{
            ZStack {
                
                BackgroundVideoController()
                    .ignoresSafeArea()
            
            
                VStack {
                    Spacer()
                    
                    Text("You signed in as \(user.username) using Amplify!")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    Spacer()
                        .frame(height: 75)
                    
                    
                        NavigationLink("Goto app", destination: MessagesView())
                            .frame(width: 300, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), lineWidth: 1)
                                    )
                    
                    
                    Spacer()

                    
                    Button("Sign Out", action: sessionManager.signOut)
                        .frame(width: 300, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), lineWidth: 1)
                                )
                }
            }
        }
    }
}

struct SessionView_Previews : PreviewProvider {
    private struct DummyUser: AuthUser {
        var userId: String = "1"
        var username: String = "dummy"
    }
    
    static var previews: some View {
        SessionView(user: DummyUser())
            .environmentObject(SessionManager())
        
    }
}


