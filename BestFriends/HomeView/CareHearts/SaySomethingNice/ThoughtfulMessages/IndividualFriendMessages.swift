//
//  IndividualFriendMessages.swift
//  BestFriends
//
//  Created by Social Tech on 4/23/22.
//

import Foundation
import SwiftUI

struct IndividualFriendMessages: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let friend: User
    let atmosphere: Atmosphere
    
    @State private var smileNotes: [SmileNote] = []
    
    var body: some View {
        ZStack {

            
            ColorManager .purple7
                 .ignoresSafeArea()
                 .onAppear{ loadData() }
                 .scaledToFill()

                     
            AdPlayerView(name: "MyRoom5")
                          .ignoresSafeArea()
                           .blendMode(.screen)

            
            AdPlayerView(name: "MyRoom5")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            
            VStack {
                Text("saved Chat messages")
                    .font(.system(size: 25))
                    .fontWeight(.ultraLight)
                    .foregroundColor(ColorManager .grey3)
                    .multilineTextAlignment(.center)
                
                Text(friend.firstName + " " + friend.lastName)
                    .font(.system(size: 5))
                    .fontWeight(.light)
                    .foregroundColor(ColorManager .grey4)
                
                Text("(tap 'star' to favorite)")
                    .font(.system(size: 12))
                    .italic()
                    .fontWeight(.light)
                    .foregroundColor(ColorManager .grey4)
                    .multilineTextAlignment(.center)
                
                ScrollView(.vertical) {
                    ForEach(smileNotes.indices, id: \.self) { i in
                        FriendMessageView(smileNote: smileNotes[i])
                            .cornerRadius(15)
                            .padding(.horizontal, 80)
                            .onTapGesture(perform: { toggleFavorite(index: i) })
                        
                        
                        
                        
                        
                        
                    }
                }
                
                Spacer ()
                    .frame(height: 20)
//
//                Button(action: {
//                    sessionManager.reloadHome()
//                }, label: {
//                    Text("Home / Chat")
//                        .fontWeight(.thin)
//                        .frame(width: 200, height: 40)
//                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                        .font(.system(size: 30))
//                        .background(ColorManager.purple3)
//                        .cornerRadius(15)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                })
                
                
                Spacer ()
                    .frame(height: 100)
            }
        }
    }
    
    private func loadData() {
        RestApi.instance.getSmileNotes().then({ sn in
            print("Got smile notes")
            smileNotes = sn
            smileNotes.sort { $0.favorite && !$1.favorite }
        })
    }
    
    private func toggleFavorite(index: Int) {
        RestApi.instance.favoriteSmileNote(id: smileNotes[index].id).then({ smileNote in
            print("Got toggled smile note: ", smileNote)
            smileNotes[index] = smileNote
            smileNotes.sort { $0.favorite && !$1.favorite }
        })
    }
}

private struct FriendMessageView: View {
    
    let smileNote: SmileNote
    
    var body: some View {
        ZStack {
            ColorManager .grey1
                .cornerRadius(15)
            
            Text(smileNote.messageBody)
                .font(.system(size: 20))
                .foregroundColor(ColorManager .grey3)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .opacity(0.40)
                .padding()
            
            HStack {
                Spacer()
                
                if smileNote.favorite {
                    Image("starGreen")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .scaledToFill()
                        .blendMode(.screen)
                } else {
                    Image("starPurple")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .scaledToFill()
                        .blendMode(.screen)
                }
            }
        }
        .padding(.horizontal, 100)

    }
}


