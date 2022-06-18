//
//  PlayListForFriend.swift
//  BestFriends
//
//  Created by Social Tech on 6/18/22.
//
//
//import Foundation
//
//import SwiftUI
//import Combine
////import AVKit
//
//struct PlayListForFriend: View {
//    @EnvironmentObject var sessionManager: SessionManager
//    
//    let user: User
//    let friend: User
//    let groups: [Group]
//    let friendAtmosphere: Atmosphere
//    
//    @State private var customMessage = ""
//    @State private var colorChangeTap: String = ""
//    @State private var hugTapped = false
//    @State private var mostRecentMoodLog: MoodLog?
//    @State private var noteTapped = false
//    
//    init(user: User, friend: User, groups: [Group], friendAtmosphere: Atmosphere) {
//        self.user = user
//        self.friend = friend
//        self.groups = groups
//        self.friendAtmosphere = friendAtmosphere
//        UITextView.appearance().backgroundColor = .clear
//    }
//    
//    var body: some View {
//        ZStack {
//            
//            ColorManager.purple4
//                .ignoresSafeArea()
//                .onAppear()
//
//            
//            VStack {
//                //MARK: code to get friends name at top of page
//                HStack {
//                    Spacer()
//                        .frame(width: 35)
//                    
//                    Text(friend.firstName + " " + friend.lastName)
//                        .font(.system(size: 20))
//                        .foregroundColor(.white)
//                    
//                    Spacer()
//                }
//                
//                //TODO: Auto import message from [AtmosphereMain2] page for the below rectangle
//                if mostRecentMoodLog != nil {
//                    ZStack {
//                        if mostRecentMoodLog!.mood < 4 {
//                            ColorManager .pmbc_blue
//                                .cornerRadius(25)
//                        } else if mostRecentMoodLog!.mood == 4 {
//                            //                                Color(.green)
//                            ColorManager .pmbc_green
//                                .cornerRadius(25)
//                        } else if mostRecentMoodLog!.mood == 5 {
//                            Color(.orange)
//                            //                                ColorManager .pmbc_orange
//                                .cornerRadius(25)
//                        } else {
//                            Color(.yellow)
//                            
//                                .cornerRadius(25)
//                        }
//                        
//                        VStack{
//                            //MARK: Date and time
//                            HStack {
//                                Text(getDateString(date: Date(timeIntervalSince1970: TimeInterval(mostRecentMoodLog!.createdOn))))
//                                
//                                //                                Spacer()
//                            }
//                            .padding()
//                            
//                            //MARK: Mood Log sumary
//                            HStack {
//                                Text(mostRecentMoodLog!.summary)
//                                
//                                Spacer()
//                            }
//                            .padding(.horizontal)
//                        }
//                    }
//                    .frame(width: 300, height: 120)
//                    .opacity(0.85)
//                    .padding(.vertical)
//                }
//                
//                Spacer()
//                    .frame(height: 7)
//                
//                
//                
//                
//                
//                //MARK: Send Song ONE
//                TextField("", text: $customMessage)
//                    .placeholder(when: customMessage.isEmpty) {
//                        HStack {
//                            Text("This is what I listen to when I'm in this Mood.").foregroundColor(.white)
//                            
//                            Spacer()
//                        }
//                    }
//                    .font(.system(size: 18))
//                    .submitLabel(.done)
//                    .onReceive(Just(customMessage)) { _ in limitText(65) }
//                    .padding()
//                    .overlay(RoundedRectangle(cornerRadius: 20)
//                        .stroke(Color.gray)
//                        .frame(height: 40)
//                        .padding(.horizontal, 5)
//                    )
//                    .padding(.horizontal, 10)
//                
//                //MARK: Send Song 2
//                TextField("", text: $customMessage)
//                    .placeholder(when: customMessage.isEmpty) {
//                        HStack {
//                            Text("This is what I listen to when I'm in this Mood.").foregroundColor(.white)
//                            
//                            Spacer()
//                        }
//                    }
//                    .font(.system(size: 18))
//                    .submitLabel(.done)
//                    .onReceive(Just(customMessage)) { _ in limitText(65) }
//                    .padding()
//                    .overlay(RoundedRectangle(cornerRadius: 20)
//                        .stroke(Color.gray)
//                        .frame(height: 40)
//                        .padding(.horizontal, 5)
//                    )
//                    .padding(.horizontal, 10)
//                
//                
//                //MARK: Send Song 3
//                TextField("", text: $customMessage)
//                    .placeholder(when: customMessage.isEmpty) {
//                        HStack {
//                            Text("This is what I listen to when I'm in this Mood.").foregroundColor(.white)
//                            
//                            Spacer()
//                        }
//                    }
//                    .font(.system(size: 18))
//                    .submitLabel(.done)
//                    .onReceive(Just(customMessage)) { _ in limitText(65) }
//                    .padding()
//                    .overlay(RoundedRectangle(cornerRadius: 20)
//                        .stroke(Color.gray)
//                        .frame(height: 40)
//                        .padding(.horizontal, 5)
//                    )
//                    .padding(.horizontal, 10)
//                
//                
//                
//                
//                VStack {
//                    Button(action: {
//                        sendMessage()
//                    }, label: {
//                        Text("Send Custom Message to Chat")
//                            .fontWeight(.thin)
//                            .frame(width: 310, height: 35)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 22))
//                        //                                .opacity(0.5)
//                            .background(ColorManager.purple3)
//                            .opacity(0.7)
//                            .cornerRadius(15)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                    })
//                    .padding()
//                    
//                    Text("Respond instantly via Push Notification")
//                        .font(.system(size: 18))
//                        .fontWeight(.medium)
//                        .frame(width:325, height: 30)
//                        .foregroundColor(.white)
//                    
//                 
//                    
//                    Spacer ()
//                        .frame(height: 10)
//                    
//                    HStack {
//                        if friends.count > 1 {
//                            Button(action: {
//                                
//                            },
//                                   label: {
//                                Text("ALL")
//                                    .fontWeight(.bold)
//                                    .frame(width: 100, height: 30)
//                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                    .font(.system(size: 15))
//                                    .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
//                                    .cornerRadius(25)
//                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                            })
//                        }
//                        if friends.count > 0 {
//                            RectView(user: user, friend: friends[0], color: sharedWith.contains(friends[0].id) ? ColorManager.purple3 : ColorManager.purple5)
//                                .onTapGesture(perform: {
//                                    if sharedWith.contains(friends[0].id) {
//                                        sharedWith = sharedWith.filter { $0 != friends[0].id }
//                                    } else {
//                                        sharedWith.append(friends[0].id)
//                                    }
//                                    print(sharedWith)
//                                })
//                        }
//                        
//                        if friends.count > 1 {
//                            RectView(user: user, friend: friends[1], color: sharedWith.contains(friends[1].id) ? ColorManager.purple3 : ColorManager.purple5)
//                                .onTapGesture(perform: {
//                                    if sharedWith.contains(friends[1].id) {
//                                        sharedWith = sharedWith.filter { $0 != friends[1].id }
//                                    } else {
//                                        sharedWith.append(friends[1].id)
//                                    }
//                                    print(sharedWith)
//                                })
//                        }
//                    }
//                    
//                    HStack {
//                        if friends.count > 2 {
//                            RectView(user: user, friend: friends[2], color: sharedWith.contains(friends[2].id) ? ColorManager.purple3 : ColorManager.purple5)
//                                .onTapGesture(perform: {
//                                    if sharedWith.contains(friends[2].id) {
//                                        sharedWith = sharedWith.filter { $0 != friends[2].id }
//                                    } else {
//                                        sharedWith.append(friends[2].id)
//                                    }
//                                    print(sharedWith)
//                                })
//                        }
//                        
//                        if friends.count > 3 {
//                            RectView(user: user, friend: friends[3], color: sharedWith.contains(friends[3].id) ? ColorManager.purple3 : ColorManager.purple5)
//                                .onTapGesture(perform: {
//                                    if sharedWith.contains(friends[3].id) {
//                                        sharedWith = sharedWith.filter { $0 != friends[3].id }
//                                    } else {
//                                        sharedWith.append(friends[3].id)
//                                    }
//                                    print(sharedWith)
//                                })
//                        }
//                        
//                        if friends.count > 4 {
//                            RectView(user: user, friend: friends[4], color: sharedWith.contains(friends[4].id) ? ColorManager.purple3 : ColorManager.purple5)
//                                .onTapGesture(perform: {
//                                    if sharedWith.contains(friends[4].id) {
//                                        sharedWith = sharedWith.filter { $0 != friends[4].id }
//                                    } else {
//                                        sharedWith.append(friends[4].id)
//                                    }
//                                    print(sharedWith)
//                                })
//                        }
//                    }
//                    
//                    Button(action: {
//                        defaultMessageButtonTapped(defaultMessage: "SHARE")
//                        shareMood()
//                    },
//                           label: {
//                        Text("SHARE")
//                            .fontWeight(.thin)
//                            .frame(width: 100, height: 40)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 30))
//                            
//                            .background(colorChangeTap == "SHARE" ? ColorManager.grey3 : ColorManager.purple3)
//                            
////                            .background(ColorManager.purple3)
//                            .cornerRadius(15)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                    })
//                    .padding()
//                    
//                    
//                    
//                    
//                    
//                }
//                
//                Text("Send Hug")
//                    .font(.system(size: 35))
//                    .frame(width:325, height: 30)
//                    .foregroundColor(Color.white)
//                
//                HStack {
//                    if !hugTapped {
//                    Image("Hug4")
//                        .resizable()
//                        .frame(width: 50, height: 50)
//                        .scaledToFit()
////                        .colorInvert()
//                        .onTapGesture {
//                            RestApi.instance.sendPushNotification(title: "Hug", body: "", APNToken: friend.APNToken )
//                            hugTapped.toggle()
//                        }
//                    }
//                    
////                   MARK: Below is for adding Playlist - put in the 'Note' image
//                        if !noteTapped {
//                        Image("")
//                            .resizable()
//                            .foregroundColor(.pink)
//                            .frame(width: 40, height: 40)
//                            .colorInvert()
//                            .blur(radius: 2)
//                            .shadow(color: .blue, radius: 65, x: 30, y: 50)
//                            .padding(.horizontal, 30)
//                            .onTapGesture {
//                                RestApi.instance.sendPushNotification(title: "Note", body: "", APNToken: friend.APNToken )
//
//                            noteTapped.toggle()
//                            }
//                    }
//                    
//                }
//                .padding(.bottom, 30)
//            }
//        }
//        
//        
//        
//        
//    }
//    
//    private func loadData() {
//        for id in friendAtmosphere.moodLogs ?? [] {
//            RestApi.instance.getMoodLog(id: id).then({ moodLog in
//                if moodLog.sharedWith.contains(user.id) {
//                    if mostRecentMoodLog == nil {
//                        mostRecentMoodLog = moodLog
//                    } else {
//                        if mostRecentMoodLog!.createdOn < moodLog.createdOn {
//                            mostRecentMoodLog = moodLog
//                        }
//                    }
//                }
//            })
//        }
//    }
//    
//    private func sendMessage() {
//        if customMessage.count == 0 { return }
//        
//        let arr = [user.id, friend.id]
//        for g in groups {
//            if g.members.containsSameElements(as: arr) {
//                // Send chat message to this existing group
//                RestApi.instance.createChatMessage(groupId: g.id, body: customMessage).then({ response in
//                    sessionManager.showChat(user: user, group: g)
//                })
//                
//                return
//            }
//        }
//        
//        // Create new group
//        RestApi.instance.createGroup(name: "\(user.firstName), \(friend.firstName)", members: arr).then { responseGroup in
//            // Send chat message to this group
//            RestApi.instance.createChatMessage(groupId: responseGroup.id, body: customMessage).then({ response in
//                sessionManager.showChat(user: user, group: responseGroup)
//            })
//        }
//    }
//    
//    private func limitText(_ upper: Int) {
//        if customMessage.count > upper {
//            customMessage = String(customMessage.prefix(upper))
//        }
//    }
//    
//    private struct RectView: View {
//        let user: User
//        let friend: User
//        
//        var body: some View {
//            Button(action: {
//                RestApi.instance.sendPushNotification(title: "BestFriends - BlueMode", body: "\(user.firstName) invited you to BlueMode!", APNToken: friend.APNToken )
//            },
//                   label: {
//                Text(friend.firstName + " " + String(friend.lastName.first!))
//                    .fontWeight(.bold)
//                    .frame(width: 100, height: 30)
//                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                    .font(.system(size: 10))
//                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
//                    .cornerRadius(25)
//                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//            })
//        }
//        
//        
//        private struct RectView: View {
//            let user: User
//            let friend: User
//            let color: Color
//            
//            var body: some View {
//                Text(friend.firstName + " " + String(friend.lastName.first!))
//                    .fontWeight(.bold)
//                    .frame(width: 100, height: 30)
//                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                    .font(.system(size: 10))
//                    .background(color)
//                    .cornerRadius(25)
//                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//        
//        
//        
//    }
//    
//    private func defaultMessageButtonTapped(defaultMessage: String) {
//        self.colorChangeTap = defaultMessage
//        
//    }
//    
//    private func getDateString(date: Date) -> String {
//        let formatter3 = DateFormatter()
//        formatter3.dateFormat = "HH:mm E, d MMM y"
//        return formatter3.string(from: date)
//    }
//}
//    }
//}
//
//
////struct Friend1VaultPractice_Previews : PreviewProvider {
////    static var previews: some View {
////        Friend1VaultPractice(user: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: ""), friends: [], friend: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: ""))
////    }
////}
