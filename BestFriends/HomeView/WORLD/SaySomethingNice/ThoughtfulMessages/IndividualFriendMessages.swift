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
//
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//                .onAppear(perform: loadData)
//
//            AdPlayerView(name: "background_1")
//                .ignoresSafeArea()
//                .blendMode(.screen)
         
            
             ColorManager.grey4
                 .ignoresSafeArea()
                 .onAppear()
             
 //            Image("blueBackground")
 //                .resizable()
 //                .ignoresSafeArea()
                 .scaledToFill()
//                 .onAppear(perform: loadData)
//                 .sheet(isPresented: $isShowPhotoLibrary) {
//                     ImagePicker(image: $attachmentImage, sourceType: .photoLibrary)
//                         .onDisappear { createPhotoPop() }
                     
            AdPlayerView(name: "background_1")
                          .ignoresSafeArea()
                           .blendMode(.screen)
            
            
            
            
            
            VStack {
                Text("Special messages from")
                    .font(.system(size: 40))
                    .fontWeight(.light)
                    .foregroundColor(ColorManager .purple4)
                    .multilineTextAlignment(.center)
                
                Text(friend.firstName + " " + friend.lastName)
                    .font(.system(size: 40))
                    .fontWeight(.light)
                    .foregroundColor(ColorManager .grey4)
                
                Text("(tap 'star' to favorite)")
                    .font(.system(size: 25))
                    .italic()
                    .fontWeight(.light)
                    .foregroundColor(ColorManager .grey4)
                    .multilineTextAlignment(.center)
                
                ScrollView(.vertical) {
                    ForEach(smileNotes.indices, id: \.self) { i in
                        FriendMessageView(smileNote: smileNotes[i])
                            .cornerRadius(15)
                            .padding(.horizontal, 20)
                            .onTapGesture(perform: { toggleFavorite(index: i) })
                        
                        
                        
                        
                        
                        
                    }
                }
                
                Spacer ()
                    .frame(height: 20)
                
                Button(action: {
                    sessionManager.reloadHome()
                }, label: {
                    Text("Home / Chat")
                        .fontWeight(.thin)
                        .frame(width: 200, height: 40)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 30))
                        .background(ColorManager.purple3)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                })
                Spacer ()
                    .frame(height: 100)
            }
        }
    }
    
    private func loadData() {
        RestApi.instance.getSmileNotes().then({ sn in
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
            ColorManager.purple3
                .cornerRadius(15)
            
            Text(smileNote.messageBody)
                .font(.system(size: 20))
                .foregroundColor(.white)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .padding()
            
            HStack {
                Spacer()
                
                if smileNote.favorite {
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .scaledToFill()
                        .foregroundColor(.yellow)
                } else {
                    Image(systemName: "star")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .scaledToFill()
                }
            }
            .padding()
        }
    }
}


