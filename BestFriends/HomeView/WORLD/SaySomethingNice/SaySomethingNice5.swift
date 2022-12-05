//
//  SaySomethingNice5.swift
//  BestFriends
//
//  Created by Social Tech on 11/29/22.
//

import Foundation

import Combine
import SwiftUI


struct SaySomethingNice5: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    
    @State private var mood: Int = -1
    @State private var summary = ""
    @State private var sharedWith: [String] = []
    @State private var colorChangeTap: String = ""
    
    @State private var selectedFriends: [String] = []
    @State private var shareColor = ColorManager.purple5
    @State private var showingAlert = false
    
    
    @State private var customMessage = ""
//    @State private var colorChangeTap: String = ""
    @State private var hugTapped = false
    @State private var mostRecentMoodLog: MoodLog?
    @State private var noteTapped = false
    

    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]

   
    
    var body: some View {
        ZStack {

            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            AdPlayerView(name: "Atmosphere2")
                .ignoresSafeArea()
                .blendMode(.screen)

            
            VStack {

                NavigationLink(
                    destination: SaySomethingNice6(user: user, atmosphere: atmosphere, friends: friends),
                    label: {
                        Text("How feature works")
                            .fontWeight(.thin)
                            .foregroundColor(Color.white)
                            .font(.system(size: 12))
                            .italic()
                            .frame(width: 50, height: 50)
                            .background(ColorManager .purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })

                
                
                Text("Join people around the world")
                    .font(.system(size: 20))
                    .foregroundColor(ColorManager.grey1)
           
            Text("saying something")
                .font(.system(size: 20))
                .foregroundColor(ColorManager.grey1)
                
//                Spacer()
//                    .frame(height: 7)

                
            Text("'NICE'")
                .font(.system(size: 25))
                .fontWeight(.medium)
                .foregroundColor(Color.white)
               
                Spacer()
                    .frame(height: 20)
            
                Text("Right NOW!")
                    .font(.system(size: 22))
                    .italic()
                    .fontWeight(.medium)
                    .foregroundColor(Color.green)
                
                
                
                Spacer()
                    .frame(height: 5)
                
                
                                        Button(action: {
                                            sessionManager.showLogin()
                                        },
                                            label: {
                                                Text("In Chat")
                                                    .fontWeight(.thin)
                                                    .frame(width: 150, height: 30)
                                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                    .font(.system(size: 25))
                                                    .background(ColorManager.purple3)
                                                    .cornerRadius(15)
                                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                            })
                     
                
                VStack {
                  
                    
//
//                    ZStack {
//                        Rectangle()
//                            .frame(width:310, height: 50)
//                            .cornerRadius(15)
//                            .foregroundColor(ColorManager .grey3)
//                            .opacity(0.9)
//
//                        TextField("Say Something 'NICE' here...", text: $summary)
//                            .font(.system(size: 20))
//                            .foregroundColor(.white)
//                            .padding(.horizontal, 80)
//                            .onReceive(Just(summary)) { _ in limitText(100) }
//
                    Spacer()
                        .frame(height: 60)
                    
                    
                    Text("Alert friend via Push Notification")
                        .font(.system(size: 20))
                        .foregroundColor(ColorManager.grey1)
                

                    VStack {
                        
                        Spacer()
                            .frame(height: 10)
                        
                        
                        HStack {
                      
                            Text("select >")
                                .fontWeight(.thin)
                                .frame(width: 100, height: 30)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 20))
                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                .cornerRadius(25)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            //                                })
                            
                            if friends.count > 0 {
                                RectView(user: user, friend: friends[0], color: colors[0])
                                    .onTapGesture(perform: {
                                        if selectedFriends.contains(friends[0].id) {
                                            selectedFriends = selectedFriends.filter { $0 != friends[0].id }
                                            colors[0] = ColorManager.purple3
                                        } else {
                                            selectedFriends.append(friends[0].id)
                                            colors[0] = ColorManager.purple5
                                        }
                                        print(selectedFriends)
                                    })
                                
                            }
                            
                            if friends.count > 1 {
                                RectView(user: user, friend: friends[1], color: colors[1])
                                    .onTapGesture(perform: {
                                        if selectedFriends.contains(friends[1].id) {
                                            selectedFriends = selectedFriends.filter { $0 != friends[1].id }
                                            colors[1] = ColorManager.purple3
                                        } else {
                                            selectedFriends.append(friends[1].id)
                                            colors[1] = ColorManager.purple5
                                        }
                                        print(selectedFriends)
                                    })
                                
                            }
                        }
                        
                        Spacer()
                            .frame(height: 15)
                        HStack {
                            if friends.count > 2 {
                                RectView(user: user, friend: friends[2], color: colors[2])
                                    .onTapGesture(perform: {
                                        if selectedFriends.contains(friends[2].id) {
                                            selectedFriends = selectedFriends.filter { $0 != friends[2].id }
                                            colors[2] = ColorManager.purple3
                                        } else {
                                            selectedFriends.append(friends[2].id)
                                            colors[2] = ColorManager.purple5
                                        }
                                        print(selectedFriends)
                                    })
                            }
                            
                            if friends.count > 3 {
                                RectView(user: user, friend: friends[3], color: colors[3])
                                    .onTapGesture(perform: {
                                        if selectedFriends.contains(friends[3].id) {
                                            selectedFriends = selectedFriends.filter { $0 != friends[3].id }
                                            colors[3] = ColorManager.purple3
                                        } else {
                                            selectedFriends.append(friends[3].id)
                                            colors[3] = ColorManager.purple5
                                        }
                                        print(selectedFriends)
                                    })
                                
                            }
                            
                            if friends.count > 4 {
                                RectView(user: user, friend: friends[4], color: colors[4])
                                    .onTapGesture(perform: {
                                        if selectedFriends.contains(friends[4].id) {
                                            selectedFriends = selectedFriends.filter { $0 != friends[4].id }
                                            colors[4] = ColorManager.purple3
                                        } else {
                                            selectedFriends.append(friends[4].id)
                                            colors[4] = ColorManager.purple5
                                        }
                                        print(selectedFriends)
                                    })
                                
                            }
                        }
                        
                        Button(action: {
                            shareButtonTapped()
                        },
                               label: {
                            Text("SHARE")
                                .fontWeight(.thin)
                                .frame(width: 100, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(shareColor)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                .alert("Push Notifications sent successfully", isPresented: $showingAlert) {
                                    Button("OK", role: .cancel) { }
                                }
                        })


                    
                        Spacer()
                            .frame(height: 15)
////
//                        Text("Push Notifiction was sent")
//                            .font(.system(size: 20))
//                            .italic()
//                            .fontWeight(.light)
//                            .foregroundColor(ColorManager.grey1)
//                            .padding(.horizontal)
//

                   }
                 
                    VStack {
                        Spacer()
                            .frame(height: 55)
                   
                    
                        
                        Text("Yep! ")
                            .font(.system(size: 27))
                            
                            .foregroundColor(.green)
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text("A 'simple' way to let your")
                            .font(.system(size: 20))
                            .italic()
                            .foregroundColor(ColorManager.purple2)
                        
                        Text("friends know you care about them")
                            .font(.system(size: 20))
                            .italic()
                            .foregroundColor(ColorManager.purple2)
                       
                        Text("& vise-versa!")
                            .font(.system(size: 25))
                            .italic()
                            .foregroundColor(ColorManager.purple2)
                        
                        
                        
                    }

                }
                
                Spacer()
                    .frame(height: 65)
                
            }
        }
    }
    
    func shareButtonTapped() {
        if selectedFriends.count == 0 { return }
        for id in selectedFriends {
            for f in friends {
                if f.id == id {
                    RestApi.instance.sendPushNotification(title: "BestFriends - World FriendGroups", body: "\(user.firstName) said something 'Nice' in Chat", APNToken: f.APNToken)
                }
            }
        }
        shareColor = ColorManager.darkGrey
        showingAlert = true
    }
    
    private func shareMood() {
        RestApi.instance.createMoodLog(mood: mood, summary: summary, friends: sharedWith).then({ moodLog in
            print("Got mood log: ", moodLog)
            var m = atmosphere.moodLogs ?? []
            m.append(moodLog.id)
            let atm = Atmosphere(id: atmosphere.id, planet: atmosphere.planet, mood: mood, moodLogs: m)
            RestApi.instance.updateAtmosphere(atmosphere: atm).then({ response in
                if response == 200 {
                    print("Successfully updated nice message")
                    for i in sharedWith {
                        for f in friends {
                            if i == f.id {
                                RestApi.instance.sendPushNotification(title: "BestFriends - World", body: "\(user.firstName) Said something 'Nice'", APNToken: f.APNToken )
                            }
                        }
                        mood = -1
                        summary = ""
                        sharedWith = []
                    }
                } else {
                    print("Failed to update nice message")
                }
            })
        })
    }
    
    private func limitText(_ upper: Int) {
        if summary.count > upper {
            summary = String(summary.prefix(upper))
        }
    }
    
    
    
    private struct RectView: View {
        let user: User
        let friend: User
        let color: Color
        
        var body: some View {
            Text(friend.firstName + " " + String(friend.lastName.first!))
                .fontWeight(.bold)
                .frame(width: 100, height: 30)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .font(.system(size: 10))
                .background(color)
                .cornerRadius(25)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
        }
       
    
        
    }
    
    private func defaultMessageButtonTapped(defaultMessage: String) {
        self.colorChangeTap = defaultMessage
}
}








