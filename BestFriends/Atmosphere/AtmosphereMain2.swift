//
//  AtmosphereMain2.swift
//  BestFriends
//
//  Created by Social Tech on 5/12/22.
//


import Combine
import SwiftUI


struct AtmosphereMain2: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    
    @State private var mood: Int = -1
    @State private var summary = ""
    @State private var sharedWith: [String] = []
    @State private var colorChangeTap: String = ""
    
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
                
                
//                HStack {
                    
                    Text("'My Aura'")
                        .font(.system(size: 35))
                        .fontWeight(.medium)
                        .foregroundColor(Color.white)
                    
                    Text("distinctive 'Atmosphere' \nsurrounding each of us")
                        .font(.system(size: 20))
                        .foregroundColor(ColorManager.grey1)
                      
                HStack {

                }
                .padding(.horizontal)
                
             
                HStack {
                    VStack {
                        
                   
                        
                        Button(action: {
                            mood = 0
                        }) {
                            
                            Text("Upset")
                                .font(.system(size: 17))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(mood == 0 ? Color(.systemCyan) : Color.gray)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Button(action: {
                            mood = 1
                        }) {
                            
                            Text("Stressed")
                                .font(.system(size: 17))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(mood == 1 ? Color(.systemCyan) : Color.gray)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Button(action: {
                            mood = 2
                        }) {
                            
                            Text("Sad")
                                .font(.system(size: 17))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(mood == 2 ? Color(.systemCyan) : Color.gray)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Button(action: {
                            mood = 3
                        }) {
                            
                            Text("Lonely")
                                .font(.system(size: 17))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(mood == 3 ? Color(.systemCyan) : Color.gray)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                    }
                    
                    Spacer()
                        .frame(width: 20)
                    
                    VStack {
                        Button(action: {
                            mood = 4
                        }) {
                            
                            Text("Okay")
                                .font(.system(size: 17))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(mood == 4 ? Color(.systemGreen) : Color.gray)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Button(action: {
                            mood = 5
                        }) {
                            
                            Text("Bored")
                                .font(.system(size: 17))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(mood == 5 ? Color(.orange) : Color.gray)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        
                    }
                    
                    Spacer()
                        .frame(width: 20)
                    
                    VStack {
                        
                        Button(action: {
                            mood = 6
                        }) {
                            
                            Text("Happy")
                                .font(.system(size: 17))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(mood == 6 ? Color(.systemYellow) : Color.gray)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Button(action: {
                            mood = 7
                        }) {
                            
                            Text("Excited")
                                .font(.system(size: 17))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(mood == 7 ? Color(.systemYellow) : Color.gray)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Button(action: {
                            mood = 8
                        }) {
                            
                            Text("Powerful")
                                .font(.system(size: 17))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(mood == 8 ? Color(.systemYellow) : Color.gray)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Button(action: {
                            mood = 9
                        }) {
                            
                            Text("Carefree")
                                .font(.system(size: 17))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(mood == 9 ? Color(.systemYellow) : Color.gray)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                    }
                }
                
                
                VStack {
                    // MARK: End of feeling buttons
                    HStack {
                        Text("Ok, what's going on?")
                            .font(.system(size: 21))
                            .italic()
                            .fontWeight(.light)
                            .foregroundColor(ColorManager.grey1)
                            .padding(.horizontal)
                        
//                        Spacer()
                    }
//                    .padding(.horizontal)
                    
                    
                    
                    ZStack {
                        Rectangle()
                            .frame(width:310, height: 50)
                            .cornerRadius(15)
                            .foregroundColor(Color.gray)
                            .opacity(0.9)
                        
                        TextField("You can type what's up here...", text: $summary)
                            .font(.system(size: 20))
                            .foregroundColor(ColorManager.purple2)
                            .padding(.horizontal, 50)
                            .onReceive(Just(summary)) { _ in limitText(40) }
                        
                        
                    }
                    
                    Spacer()
                        .frame(height: 5)
                    
                    HStack {
                        Text("Alert friends")
                            .font(.system(size: 30))
                        
                            .fontWeight(.light)
                            .foregroundColor(ColorManager.grey1)
                            .padding(.horizontal)
                        
//                        Text("So, they can laugh, smile, cheer or maybe help")
//                            .font(.system(size: 12))
//                            .italic()
//                            .fontWeight(.light)
//                            .foregroundColor(ColorManager.grey1)
                        
                        
//                        Spacer()
                    }
//                    .padding(.horizontal)
                    
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
                    
                    HStack {
                    
                    Button(action: {
                        defaultMessageButtonTapped(defaultMessage: "SHARE")
                        shareMood()
                    },
                           label: {
                        Text("Share")
                            .fontWeight(.thin)
                            .frame(width: 100, height: 35)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            
                            .background(colorChangeTap == "SHARE" ? ColorManager.grey3 : ColorManager.purple3)
                            
//                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
//                    .padding()
                    
                    
                    
                    NavigationLink(
                        destination: FriendVaultTrackMoods(user: user, atmosphere: atmosphere, friends: friends),
                        label: {
                            Text("Aura Tracker")
                                .fontWeight(.thin)
                                .frame(width: 180, height: 35)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                    }
                    
                    VStack {
                        Button(action: {
                            sessionManager.showLogin()
                        },
                            label: {
                                Text("Home / Chat")
                                    .fontWeight(.thin)
                                    .frame(width: 200, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 30))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                    }
                    Spacer()
                }
            }
        }
    }
    
    private func shareMood() {
        RestApi.instance.createMoodLog(mood: mood, summary: summary, friends: sharedWith).then({ moodLog in
            print("Got mood log: ", moodLog)
            var m = atmosphere.moodLogs ?? []
            m.append(moodLog.id)
            let atm = Atmosphere(id: atmosphere.id, planet: atmosphere.planet, mood: mood, moodLogs: m)
            RestApi.instance.updateAtmosphere(atmosphere: atm).then({ response in
                if response == 200 {
                    print("Successfully updated atmosphere")
                    for i in sharedWith {
                        for f in friends {
                            if i == f.id {
                                RestApi.instance.sendPushNotification(title: "BestFriends - Atmosphere", body: "\(user.firstName) Just changed their Mood!", APNToken: f.APNToken )
                            }
                        }
                        mood = -1
                        summary = ""
                        sharedWith = []
                    }
                } else {
                    print("Failed to update atmosphere")
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





