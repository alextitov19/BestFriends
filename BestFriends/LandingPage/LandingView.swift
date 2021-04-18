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
    
    @State private var showingActionSheet = false

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
                        
                        Button(action: {
                            //Display invite menu
                            self.showingActionSheet = true

                          }) {
                              Image("whitePlus")
                                .resizable()
                                .frame(width: 40, height: 40)
                            
                          }
                        .actionSheet(isPresented: $showingActionSheet) {
                            ActionSheet(title: Text("Add Friends"), message: Text("Add your friends via QR code"), buttons: [
                                .default(Text("Red")) {  },
                                .default(Text("Green")) {  },
                                .default(Text("Blue")) {  },
                                .cancel()
                            ])
                            
                        }
                        
                        Spacer()
                        
                        NavigationLink(destination: MessagesView()) {
                               Image("messageIconWhite")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .scaledToFill()
                           }
                        
                        Spacer()
                        
                        NavigationLink(destination: MessagesView()) {
                               Image("whiteSmiley")
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
    
    private func openCamera(action: UIAlertAction) {
        
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


