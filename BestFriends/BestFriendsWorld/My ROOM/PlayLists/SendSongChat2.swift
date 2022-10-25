//
//  SendSongChat2.swift
//  BestFriends
//
//  Created by Social Tech on 6/27/22.


import SwiftUI
import Combine

struct SendSongChat2: View {

    @EnvironmentObject var sessionManager: SessionManager

    let user: User
    let friend: User
    let friends: [User]
    let groups: [Group]
    let friendAtmosphere: Atmosphere

    @State private var customMessage = ""
    @State private var colorChangeTap: String = ""


 




    var body: some View {
        ZStack {
            ColorManager.purple4
                .ignoresSafeArea()
                .onAppear()


            VStack {
                
              
//                Text("Being a BestFriend")
//                    .fontWeight(.thin)
//                    .frame(width: 310, height: 50)
//                    .foregroundColor(Color .blue)
//                    .font(.system(size: 30))
//                    .background(ColorManager.grey2)
//                    .cornerRadius(15)
//                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
               

                  Text("Be a BestFriend")
                      .font(.system(size: 40))
                      .foregroundColor(.white)
                      .fontWeight(.ultraLight)
                
                Text("Send a song ")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                
                  Text("you listen to")
                      .font(.system(size: 25))
                      .foregroundColor(.white)
                      .fontWeight(.ultraLight)
                
                  Text("when your mood")
                      .font(.system(size: 25))
                      .foregroundColor(.white)
                      .fontWeight(.ultraLight)
                
                Text("matches theirs")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                  
              
        VStack {

            TextField("", text: $customMessage)
                .placeholder(when: customMessage.isEmpty) {
                    HStack {
                        Text("Type name of song")
                        .foregroundColor(.white)
                        .fontWeight(.thin)

                        Spacer()
                    }
                }
                .font(.system(size: 18))
                .submitLabel(.done)
               .onReceive(Just(customMessage)) { _ in limitText(65) }


                .padding()
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.purple)
                    .frame(height: 40)
                    .padding(.horizontal, 10)
                )


            
            Spacer()
                .frame(height: 10)
            
            VStack {
                Button(action: {
                    sendMessage()
                }, label: {
                    Text("Send the song to Chat")
                        .fontWeight(.thin)
                        .frame(width: 310, height: 40)
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                    //                                .opacity(0.5)
                        .background(ColorManager.purple2)
                        .opacity(0.7)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                })

                Spacer()
                    .frame(height: 30)
                

                NavigationLink(
                    destination: SendSongPush(user: user, friends: friends),
                    label: {
                        Text("Send Push Notification")
                            .fontWeight(.thin)
                            .frame(width: 300, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                  
                    })
              
                Spacer()
                    .frame(height: 50)
                
            }

        }
    }
}
}


    private func sendMessage() {
        if customMessage.count == 0 { return }

        let arr = [user.id, friend.id]
        for g in groups {
            if g.members.containsSameElements(as: arr) {
                // Send chat message to this existing group
                RestApi.instance.createChatMessage(groupId: g.id, body: customMessage).then({ response in
                    sessionManager.showChat(user: user, group: g)
                })

                return
            }
        }

        // Create new group
        RestApi.instance.createGroup(name: "\(user.firstName), \(friend.firstName)", members: arr).then { responseGroup in
            // Send chat message to this group
            RestApi.instance.createChatMessage(groupId: responseGroup.id, body: customMessage).then({ response in
                sessionManager.showChat(user: user, group: responseGroup)
            })
        }
    }

    private func limitText(_ upper: Int) {
        if customMessage.count > upper {
            customMessage = String(customMessage.prefix(upper))
        }
    }

    private struct RectView: View {
        let user: User
        let friend: User

        var body: some View {
            Button(action: {
                RestApi.instance.sendPushNotification(title: "BestFriends", body: "\(user.firstName) sent song in Chat to match your Aura", APNToken: friend.APNToken )
            },
                   label: {
                Text(friend.firstName + " " + String(friend.lastName.first!))
                    .fontWeight(.bold)
                    .frame(width: 100, height: 30)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .font(.system(size: 10))
                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                    .cornerRadius(25)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
            })
        }
    }



    private func defaultMessageButtonTapped(defaultMessage: String) {
        self.colorChangeTap = defaultMessage

    }

    private func getDateString(n: Int64) -> String {
        var timeString = ""
        var x = Int64(Date().timeIntervalSince1970) - n
        x = x / 60
        timeString = "\(x) min"
        if x > 60 {
            x = x / 6
            timeString = "\(x) hr"
            if x > 24 {
                x = x / 24
                timeString = "\(x) days"
            }
        }
        return timeString
    }
}



















