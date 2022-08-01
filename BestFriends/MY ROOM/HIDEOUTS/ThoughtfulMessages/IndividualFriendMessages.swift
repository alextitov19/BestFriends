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
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
                .onAppear(perform: loadData)
            
            AdPlayerView(name: "Nike3")
                .ignoresSafeArea()
                .blendMode(.screen)
            
//            PlanetView(planet: atmosphere.planet, mood: atmosphere.mood)
//                .scaledToFit()
//                .frame(width: 350)

            
            VStack {
                
                
                Text("Special messages from")
                    .font(.system(size: 17))
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)

                Text(friend.firstName + " " + friend.lastName)
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .foregroundColor(.white)

                
                
                
                ScrollView(.vertical) {
                    ForEach(smileNotes, id: \.id) { smileNote in
                        FriendMessageView(smileNote: smileNote)
                            .onTapGesture(perform: { toggleFavorite(smileNote: smileNote) })
                    }
                }
              
//                trying to put in link for PhotoPop
                
//                Text("'SHAKE' your phone")
//                    .font(.system(size: 20))
//                    .fontWeight(.light)
//                    .foregroundColor(.white)
//                    .multilineTextAlignment(.center)
//                Text("for SPECIAL images")
//                    .font(.system(size: 20))
//                    .fontWeight(.light)
//                    .foregroundColor(.white)
//                    .multilineTextAlignment(.center)
//                
//               NavigationLink(
//                    destination: SettingsView(),
//                    label: {
//                        Text("SetUp PhotoPoP")
//                            .fontWeight(.thin)
//                            .frame(width: 290, height: 40)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 27))
//                            .background(ColorManager.purple3)
//                            .cornerRadius(15)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                    })
//
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
            self.smileNotes = sn
        })
    }
    
    private func toggleFavorite(smileNote: SmileNote) {
        RestApi.instance.favoriteSmileNote(id: smileNote.id).then({ response in
            print("Got toggle fav response: ", response)
        })
    }
}

private struct FriendMessageView: View {
    
    let smileNote: SmileNote
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 350, height: 50)
                .foregroundColor(ColorManager .purple4)
                .cornerRadius(25)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                .opacity(0.5)
            
            VStack {
                Text(smileNote.senderName)
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
                Text(smileNote.messageBody)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                if smileNote.favorite {
                    Text("Favorite")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                }
                
            }
            
        }
    }
}












//
//struct IndividualFriendMessages_Previews : PreviewProvider {
//    static var previews: some View {
//        IndividualFriendMessages()
//    }
//}

