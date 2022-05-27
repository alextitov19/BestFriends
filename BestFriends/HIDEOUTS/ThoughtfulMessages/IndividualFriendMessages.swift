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
            
            AdPlayerView(name: "backgroundAnimation")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            PlanetView(planet: atmosphere.planet, mood: atmosphere.mood)
                .scaledToFit()
                .frame(width: 350)

            
            VStack {
//                ZStack {
//                    
//                    
//                    Image(systemName: "heart.fill")
//                    //            Rectangle()
//                        .resizable()
//                        .frame(width: 140, height: 130, alignment: .leading)
//                    //                .clipShape(Circle())
//                        .foregroundColor(.purple)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 3, x: 1, y: 3)
//                    
//                    
//                    Text("aah!")
//                        .font(.system(size: 45))
//                        .foregroundColor(.white)
//                        .fontWeight(.medium)
//                        .multilineTextAlignment(.center)
//                    Spacer()
//                        .frame(height: 10)
//                }
                
             
                
                
                Text("my 'SPECIAL' \nchat messages from")
                    .font(.system(size: 17))
                    .italic()
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Text(friend.firstName + " " + friend.lastName)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                
                
                
                
                ScrollView(.vertical) {
                    ForEach(smileNotes, id: \.id) { smileNote in
                        FriendMessageView(smileNote: smileNote)
                    }
                }
              
//                trying to put in link for PhotoPop
                
                Text("'SHAKE' your phone")
                    .font(.system(size: 20))
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Text("for SPECIAL images")
                    .font(.system(size: 20))
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                NavigationLink(
                    destination: SettingsView(),
                    label: {
                        Text("SetUp PhotoPoP")
                            .fontWeight(.thin)
                            .frame(width: 290, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 27))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                
                Spacer ()
                    .frame(height: 20)
                
                Button(action: {
                    sessionManager.reloadHome()
                }, label: {
                    Text("HOME")
                        .fontWeight(.thin)
                        .frame(width: 100, height: 40)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 30))
                        .background(ColorManager.purple3)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
               })
                
                
            }
        }
    }
    
    private func loadData() {
        RestApi.instance.getSmileNotes().then({ sn in
            self.smileNotes = sn
        })
    }
}

private struct FriendMessageView: View {
    
    let smileNote: SmileNote
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 350, height: 50)
                .foregroundColor(.purple)
                .cornerRadius(25)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
            VStack {
                Text(smileNote.senderName)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                
                Text(smileNote.messageBody)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
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

