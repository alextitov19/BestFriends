//
//  SaySomethingNice7.swift
//  BestFriends
//
//  Created by Social Tech on 11/30/22.
//

import Foundation

import SwiftUI
import Combine
//import AVKit

struct SaySomethingNice7: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friend: User
    let friends: [User]
    let groups: [Group]
    let friendAtmosphere: Atmosphere
    
    @State private var customMessage = ""
    @State private var colorChangeTap: String = ""
    @State private var hugTapped = false
    @State private var mostRecentMoodLog: MoodLog?
    @State private var noteTapped = false
    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            
            
//            Image("blueBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//                .onAppear(perform: loadData)
//
//
//                        AdPlayerView(name: "background_4")
//                            .ignoresSafeArea()
//                            .blendMode(.screen)

            ColorManager.purple1
                .ignoresSafeArea()
                .onAppear()

            
            
            VStack {
                
                
                
                //MARK: code to get friends name at top of page
                HStack {
                    
                    Text(friend.firstName + " " + friend.lastName)
                        .font(.system(size: 17))
                        .foregroundColor(ColorManager .grey4)
                        .padding()
                      
                }
//
//                Text("wants you to know")
//                    .font(.system(size: 20))
//                    .fontWeight(.thin)
//                    .foregroundColor(.white)
//
//                Text("their mood just changed")
//                    .font(.system(size: 20))
//                    .fontWeight(.thin)
//                    .foregroundColor(.white)
                
                if (mostRecentMoodLog != nil) {
                    ZStack {
                        if mostRecentMoodLog!.mood < 4 {
                            Color(.cyan)
                        } else if mostRecentMoodLog!.mood == 4 {
                            Color(.green)
                        } else if mostRecentMoodLog!.mood == 5 {
                            Color(.orange)
                        } else {
                            Color(.yellow)
                        }
                        
                        VStack {
                            Text(mostRecentMoodLog!.summary)
                                .padding()
                            Text(getDateString(n: mostRecentMoodLog!.createdOn))
                                .padding()
                        }
                    }
                    .frame(width: 280, height: 100)
                    .opacity(0.63)
                    .cornerRadius(25)
                    .padding()
                }
                
                
                
                //                ReceivedPlaylist
                Spacer()
                    .frame(height: 20)
               
                
                //MARK: Send CUSTOM Support Message to user got push notificaiton from OR chose one from below
                TextField("", text: $customMessage)
                    .placeholder(when: customMessage.isEmpty) {
                        HStack {
                            Text("Respond in Chat")
                                .foregroundColor(ColorManager.purple5)
//                                .foregroundColor(ColorManager .grey4)
//                            .frame(width: 300, height: 100)
//                          Spacer()
                        }
                    }
                    .font(.system(size: 17))
                    .foregroundColor(ColorManager.purple5)
                    .submitLabel(.done)
                    .onReceive(Just(customMessage)) { _ in limitText(70) }
                    .padding(.horizontal, 37)
//                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.purple)
                        .frame(height: 40)
                        .padding(.horizontal, 35)
                    )
//                    .padding(.horizontal, 0)
                
                VStack {
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Button(action: {
                        sendMessage()
                    }, label: {
                        Text("Send to Chat")
                            .fontWeight(.thin)
                            .frame(width: 150, height: 30)
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                        //                                .opacity(0.5)
                            .background(ColorManager.purple3)
                            .opacity(0.7)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })

                    Spacer ()
                        .frame(height: 60)
                    
                    
                    Text("Respond instantly via Push Notification")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
//                        .frame(width:325, height: 25)
                        .foregroundColor(.white)
                    
                    Button(action: {
                        defaultMessageButtonTapped(defaultMessage: "Are you okay?")
                        
                        RestApi.instance.sendPushNotification(title: "From: \(user.firstName)", body: "Thanks for the 'Nice' message", APNToken: friend.APNToken)
                    }, label: {
                        Text("Thank you so much!")
                            .fontWeight(.thin)
                            .frame(width: 260, height: 30)
                            .foregroundColor(.purple)
                            .font(.system(size: 20))
                            .background(colorChangeTap == "Are you okay?" ? ColorManager.grey2 : ColorManager.grey1)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
//                            .alert("Push Notifications sent successfully", isPresented: $showingAlert) {
//                                Button("OK", role: .cancel) { }
//                    })
                    
                            .alert("Push Notifications sent successfully", isPresented: $showingAlert) {
                                Button("OK", role: .cancel) { }
                            }
                    })

                        
                    
                    Button(action: {
                        defaultMessageButtonTapped(defaultMessage: "Do we need to talk?")
                        
                        RestApi.instance.sendPushNotification(title: "From: \(user.firstName)", body: "You're the BEST!", APNToken: friend.APNToken )
                    }, label: {
                        Text("You're the BEST!")
                            .fontWeight(.thin)
                            .frame(width: 260, height: 30)
                            .foregroundColor(.purple)
                            .font(.system(size: 20))
                            .background(colorChangeTap == "Do we need to talk?" ? ColorManager.grey2 : ColorManager.grey1)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                    
//
//                    Button(action: {
//                        defaultMessageButtonTapped(defaultMessage: "C")
//
//                        RestApi.instance.sendPushNotification(title: "From: \(user.firstName)", body: "Congratulations, you did it!", APNToken: friend.APNToken )
//                    }, label: {
//                        Text("Congratulations, you did it!")
//                            .fontWeight(.thin)
//                            .frame(width: 260, height: 30)
//                            .foregroundColor(.purple)
//                            .font(.system(size: 20))
//                            .background(colorChangeTap == "C" ? ColorManager.grey2 : ColorManager.grey1)
//                            .cornerRadius(15)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                    })
//
                    
                    VStack {
                        Spacer()
                            .frame(height: 10)
                    }
                    Button(action: {
                        defaultMessageButtonTapped(defaultMessage: "D")
                        
                        RestApi.instance.sendPushNotification(title: "From: \(user.firstName)", body: "Meet me in Chat", APNToken: friend.APNToken )
                    }, label: {
                        Text("Meet me in Chat")
                            .fontWeight(.thin)
                            .frame(width: 260, height: 30)
                            .foregroundColor(.purple)
                            .font(.system(size: 20))
                            .background(colorChangeTap == "E" ? ColorManager.grey2 : ColorManager.grey1)
                            .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)                    })
                    
                    
                    
                    
                    
                    Spacer ()
                        .frame(height: 10)
                }
                //
                //                Text("Send Hug")
                //                    .font(.system(size: 35))
                //                    .frame(width:325, height: 30)
                //                    .foregroundColor(Color.white)
                //
                HStack {
                    
                    ZStack {
                        
                        if !hugTapped {
                            Text("Send Hug")
                            
                            //                        Image("Hug4")
                            //                        .resizable()
                            
                                .fontWeight(.thin)
                                .frame(width: 135, height: 32)
                                .font(.system(size: 25))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            //                        .scaledToFit()
                            //                        .colorInvert()
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                .onTapGesture {
                                    RestApi.instance.sendPushNotification(title: "Hug", body: "", APNToken: friend.APNToken )
                                    hugTapped.toggle()
                                }
                            
                        }
                        
                        
                        
                    }
                    
                    //                   MARK: Below is for adding Playlist - put in the 'Note' image
                    if !noteTapped {
                        Image("")
                            .resizable()
                            .foregroundColor(.pink)
                            .frame(width: 0, height: 0)
                            .colorInvert()
                            .blur(radius: 2)
                            .shadow(color: .blue, radius: 65, x: 30, y: 50)
                            .padding(.horizontal, 0)
                            .onTapGesture {
                                RestApi.instance.sendPushNotification(title: "Note", body: "", APNToken: friend.APNToken )
                                
                                noteTapped.toggle()
                            }
//
//                        NavigationLink(
//                            destination: SendSongChat2(user: user, friend: friend, friends: friends, groups: groups, friendAtmosphere: friendAtmosphere),
//
//
////                            destination: BuildFriendPlaylist(user: user, groups: groups, friend: friend, friendAtmosphere: friendAtmosphere),
//                            label: {
//                                Text("")
//                                    .fontWeight(.thin)
//                                    .frame(width: 135, height: 32)
//                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                    .font(.system(size: 25))
//                                    .background(ColorManager.purple3)
//                                    .cornerRadius(15)
//                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                            })
                        
                        
                        //                        Spacer ()
                        
                        
                    }
//                    Spacer()
//                        .frame(height: 50)
                }
                .padding(.bottom, 57)
            }
        }
        
        
        
        
    }
    
    private func loadData() {
        for id in friendAtmosphere.moodLogs ?? [] {
            RestApi.instance.getMoodLog(id: id).then({ moodLog in
                if moodLog.sharedWith.contains(user.id) {
                    if mostRecentMoodLog == nil {
                        mostRecentMoodLog = moodLog
                    } else {
                        if mostRecentMoodLog!.createdOn < moodLog.createdOn {
                            mostRecentMoodLog = moodLog
                        }
                    }
                }
            })
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
                RestApi.instance.sendPushNotification(title: "BestFriends", body: "\(user.firstName) ", APNToken: friend.APNToken )
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



//struct Friend1VaultPractice_Previews : PreviewProvider {
//    static var previews: some View {
//        Friend1VaultPractice(user: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: ""), friends: [], friend: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: ""))
//    }
//}
