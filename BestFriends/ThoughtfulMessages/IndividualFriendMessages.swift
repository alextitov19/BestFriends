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
    
    @State private var messages: [Message] = []
    
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
                
             
                
                
                Text("my revered \nchat messages from")
                    .font(.system(size: 17))
                    .italic()
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Text(friend.firstName + " " + friend.lastName)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                
                
                
                
                ScrollView(.vertical) {
                    ForEach(messages, id: \.id) { message in
                        FriendMessageView(message: message)
                    }
                }
                
//                Button(action: {
//                    sessionManager.showHome()
//                }, label: {
//                    Text("HOME")
//                        .fontWeight(.thin)
//                        .frame(width: 100, height: 40)
//                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                        .font(.system(size: 30))
//                        .background(ColorManager.purple3)
//                        .cornerRadius(15)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                })
            }
        }
    }
    
    private func loadData() {
        let message1 = Message(id: "1", senderId: "", senderName: "", body: "Message body 1", image: nil, createdOn: 0)
        let message2 = Message(id: "2", senderId: "", senderName: "", body: "Message body 2", image: nil, createdOn: 0)
        let message3 = Message(id: "3", senderId: "", senderName: "", body: "Message body 3", image: nil, createdOn: 0)
        messages.append(message1)
        messages.append(message2)
        messages.append(message3)
    }
}

private struct FriendMessageView: View {
    
    let message: Message
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 350, height: 50)
                .foregroundColor(.purple)
                .cornerRadius(25)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
            
            Text(message.body)
                .font(.system(size: 20))
                .foregroundColor(.white)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
        }
    }
}












//
//struct IndividualFriendMessages_Previews : PreviewProvider {
//    static var previews: some View {
//        IndividualFriendMessages()
//    }
//}

