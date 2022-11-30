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
                
                HStack {
                   

                }
                    

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

                
                
                    Text("Power of a")
                        .font(.system(size: 25))
                        .fontWeight(.medium)
                        .foregroundColor(Color.white)
                    
                Text("kind word")
                    .font(.system(size: 25))
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                
                Spacer()
                    .frame(height: 15)
              
                
                
                
                
                    Text("Say Something")
                        .font(.system(size: 20))
                        .foregroundColor(ColorManager.grey1)
               
                Text("'NICE'")
                    .font(.system(size: 20))
                    .foregroundColor(ColorManager.grey1)
                
                Spacer()
                    .frame(height: 35)
                
//                
//                HStack {
//
//                }
//                .padding(.horizontal)
                
             
                HStack {
                    VStack {
                        
                   
//
//                        Button(action: {
//                            mood = 0
//                        }) {
//
//                            Text("Upset")
//                                .font(.system(size: 17))
//                                .foregroundColor(Color.black)
//                        }
//                        .frame(width: 80, height: 30, alignment: .center)
//                        .background(mood == 0 ? Color(.systemCyan) : Color.gray)
//                        .cornerRadius(7)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//
                    }
                }
                
                
                VStack {
  
                    
                    HStack {
                        
                    }
                    
                    
                    
                    ZStack {
                        Rectangle()
                            .frame(width:310, height: 50)
                            .cornerRadius(15)
                            .foregroundColor(ColorManager .orange5)
                            .opacity(0.9)
                        
                        TextField("Say Something 'NICE' here...", text: $summary)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .padding(.horizontal, 80)
                            .onReceive(Just(summary)) { _ in limitText(100) }
                        
                        
                    }
                    
                
                        
                 
                    
                    Spacer()
                        .frame(height: 25)
                    
                    Text("Who saying it to?")
                        .font(.system(size: 20))
                        .italic()
                        .fontWeight(.light)
                        .foregroundColor(ColorManager.grey1)
                        .padding(.horizontal)
                    

                    
                    HStack {
                        if friends.count > 1 {
                            Button(action: {
                                defaultMessageButtonTapped(defaultMessage: "SHARE")
                                shareMood()
                            },
                                   label: {
                                Text("ALL")
                                    .fontWeight(.bold)
                                    .frame(width: 100, height: 30)
                                
                                    .background(colorChangeTap == "SHARE" ? ColorManager.grey3 : ColorManager.purple3)
                                
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 15))
//                                    .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                    .cornerRadius(25)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                        }
                        if friends.count > 0 {
                            RectView(user: user, friend: friends[0], color: sharedWith.contains(friends[0].id) ? ColorManager.purple3 : ColorManager.purple5)
                                .onTapGesture(perform: {
                                    if sharedWith.contains(friends[0].id) {
                                        sharedWith = sharedWith.filter { $0 != friends[0].id }
                                    } else {
                                        sharedWith.append(friends[0].id)
                                    }
                                    print(sharedWith)
                                })
                        }
                        
                        if friends.count > 1 {
                            RectView(user: user, friend: friends[1], color: sharedWith.contains(friends[1].id) ? ColorManager.purple3 : ColorManager.purple5)
                                .onTapGesture(perform: {
                                    if sharedWith.contains(friends[1].id) {
                                        sharedWith = sharedWith.filter { $0 != friends[1].id }
                                    } else {
                                        sharedWith.append(friends[1].id)
                                    }
                                    print(sharedWith)
                                })
                        }
                    }
                    
                    HStack {
                        if friends.count > 2 {
                            RectView(user: user, friend: friends[2], color: sharedWith.contains(friends[2].id) ? ColorManager.purple3 : ColorManager.purple5)
                                .onTapGesture(perform: {
                                    if sharedWith.contains(friends[2].id) {
                                        sharedWith = sharedWith.filter { $0 != friends[2].id }
                                    } else {
                                        sharedWith.append(friends[2].id)
                                    }
                                    print(sharedWith)
                                })
                        }
                        
                        if friends.count > 3 {
                            RectView(user: user, friend: friends[3], color: sharedWith.contains(friends[3].id) ? ColorManager.purple3 : ColorManager.purple5)
                                .onTapGesture(perform: {
                                    if sharedWith.contains(friends[3].id) {
                                        sharedWith = sharedWith.filter { $0 != friends[3].id }
                                    } else {
                                        sharedWith.append(friends[3].id)
                                    }
                                    print(sharedWith)
                                })
                        }
                        
                        if friends.count > 4 {
                            RectView(user: user, friend: friends[4], color: sharedWith.contains(friends[4].id) ? ColorManager.purple3 : ColorManager.purple5)
                                .onTapGesture(perform: {
                                    if sharedWith.contains(friends[4].id) {
                                        sharedWith = sharedWith.filter { $0 != friends[4].id }
                                    } else {
                                        sharedWith.append(friends[4].id)
                                    }
                                    print(sharedWith)
                                })
                        }
                    }
                 
                    Spacer()
                        .frame(height: 17)
                    
                    VStack {
                    
                    Button(action: {
                        defaultMessageButtonTapped(defaultMessage: "SHARE")
                        shareMood()
                    },
                           label: {
                        Text("Share")
                            .fontWeight(.thin)
                            .frame(width: 100, height: 30)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 25))
                            
                            .background(colorChangeTap == "SHARE" ? ColorManager.grey3 : ColorManager.purple3)
                            
//                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
//                    .padding()
                    
                        Spacer()
                            .frame(height: 15)
//
                        Text("Push Notifiction was sent")
                            .font(.system(size: 20))
                            .italic()
                            .fontWeight(.light)
                            .foregroundColor(ColorManager.grey1)
                            .padding(.horizontal)
                        

                   }
                 
                    VStack {
                        Spacer()
                            .frame(height: 15)
                        
                        Button(action: {
                            sessionManager.showLogin()
                        },
                            label: {
                                Text("Home")
                                    .fontWeight(.thin)
                                    .frame(width: 100, height: 30)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 25))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                        
                     
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
                    RestApi.instance.sendPushNotification(title: "BestFriends", body: "\(user.firstName) World: Said something Nice", APNToken: f.APNToken)
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








