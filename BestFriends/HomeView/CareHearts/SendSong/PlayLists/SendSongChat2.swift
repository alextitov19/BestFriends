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
            
            ColorManager.purple1
                .ignoresSafeArea()
                .onAppear()
            
            VStack {
                
                Text("Ok, we get it.")
                    .font(.system(size: 20))
                    .fontWeight(.ultraLight)
                    .foregroundColor(ColorManager .grey3)
                    .multilineTextAlignment(.center)
                Text("You may have some very personal songs on your 'sad' playlist. You want to help but feel uncomfortable sharing your whole playlist.")
                    .font(.system(size: 19))
                    .fontWeight(.ultraLight)
                    .foregroundColor(ColorManager .grey3)
                    .multilineTextAlignment(.center)
                    .padding(30)
                   
              
                HStack {
                 
                    VStack {
                        Text("Cool")
                            .font(.system(size: 25))
                            .fontWeight(.ultraLight)
                            .foregroundColor(ColorManager .grey3)
                            .multilineTextAlignment(.center)
                        
                        
                        Text("just send one")
                            .font(.system(size: 25))
                            .fontWeight(.ultraLight)
                            .foregroundColor(ColorManager .grey3)
                            .multilineTextAlignment(.center)
                        
                       
                    }
                    
                    
                    Image("book200")
                        .resizable()
                        .frame(width: 180, height: 180)
                    
                }
                
                
                VStack {
                 
                    NavigationLink(
                        destination: SendSongPushNote(user: user, friends: friends),
                        label: {
                            Text("1st_Send Push Notification")
                                .fontWeight(.thin)
                                .frame(width: 310, height: 30)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 25))
                                .background(ColorManager.purple3)
                                .cornerRadius(10)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                      
                        })
                    
                }
             
                
                Spacer()
                    .frame(height: 25)
                
                
        VStack {

            TextField("", text: $customMessage)
                .placeholder(when: customMessage.isEmpty) {
                    HStack {
                        Text("2nd_Type name of song here ...")
                            .foregroundColor(ColorManager.grey4)
                        .fontWeight(.thin)

                        Spacer()
                    }
                }
                .font(.system(size: 18))
                .submitLabel(.done)
               .onReceive(Just(customMessage)) { _ in limitText(65) }


                .padding(40)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.purple)
                    .frame(height: 40)
                    .padding(.horizontal, 20)
                )


            
            VStack {
                Button(action: {
                    sendMessage()
                }, label: {
                    Text("3rd_Send the song to Chat")
                        .fontWeight(.thin)
                        .frame(width: 310, height: 30)
//                       .foregroundColor(.white)
                        .font(.system(size: 25))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .background(ColorManager.purple3)
                        .opacity(0.7)
                        .cornerRadius(10)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                })
//
//                Button(action: {
//                    sessionManager.showLogin()
//                },
//                       label: {
//                    Image("home-alt2")
//                        .frame(width: 50, height: 25)
//                        .foregroundColor(.white)
//                        .font(.system(size: 20))
//                        .background(Color .black)
//                        .cornerRadius(15)
//                        .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
//                        .opacity(0.70)
//                    
//                })
//                
                Spacer()
                    .frame(height: 30)
                
//
//                NavigationLink(
//                    destination: SendSongPushNote(user: user, friends: friends),
//                    label: {
//                        Text("Send Push Notification")
//                            .fontWeight(.thin)
//                            .frame(width: 300, height: 30)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 30))
//                            .background(ColorManager.purple3)
//                            .cornerRadius(15)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                    })
              
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
                RestApi.instance.sendPushNotification(title: "BestFriends", body: "\(user.firstName) sent you a song in Chat they listen to when their 'Vibe' matchs yours", APNToken: friend.APNToken )
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




















