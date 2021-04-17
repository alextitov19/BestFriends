//
//  SessionView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/16/21.
//

import SwiftUI
import Amplify
import AVKit


struct LandingView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: AuthUser

    var body: some View {
        NavigationView{
            ZStack {

                BackgroundVideoController()
                    .ignoresSafeArea()
                
                Image("purpleBackground")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .blendMode(.screen)
            
            
                VStack {
                    
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                    
                        NavigationLink(destination: MessagesView()) {
                               Image("messageIconWhite")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .scaledToFill()
                           }
                        
                        Spacer()
                        
                        NavigationLink(destination: MessagesView()) {
                               Image("settingsIconWhite")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .scaledToFill()
                           }
                        
                        Spacer()
                    }
                            
                    
                    

                }
            }
        }
    }
}

struct LandingView_Previews : PreviewProvider {
    private struct DummyUser: AuthUser {
        var userId: String = "1"
        var username: String = "dummy"
    }
    
    static var previews: some View {
        LandingView(user: DummyUser())
            .environmentObject(SessionManager())
        
    }
}


