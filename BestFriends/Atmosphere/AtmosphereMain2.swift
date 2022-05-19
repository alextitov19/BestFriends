//
//  AtmosphereMain2.swift
//  BestFriends
//
//  Created by Social Tech on 5/12/22.
//


import Combine
import SwiftUI


struct AtmosphereMain2: View {
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    
    @State private var mood: Int = -1
    @State private var summary = ""
    @State private var sharedWith: [String] = []
    
    var body: some View {
        ZStack {
            ColorManager.purple3
                .ignoresSafeArea()
                .onAppear()
            
            VStack {
                HStack {
                    Text("Today I'm Feeling ...")
                        .font(.system(size: 30))
                        .foregroundColor(Color.white)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                HStack {
                    Text("(What is you mood right now?)")
                        .font(.system(size: 15))
                        .italic()
                        .foregroundColor(Color.white)
                    
                    Spacer()
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
                        .background(mood == 0 ? Color.blue : Color.gray)
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
                        .background(mood == 1 ? Color.blue : Color.gray)
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
                        .background(mood == 2 ? Color.blue : Color.gray)
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
                        .background(mood == 3 ? Color.blue : Color.gray)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                    }
                    
                    Spacer()
                        .frame(width: 40)
                    
                    VStack {
                        Button(action: {
                            mood = 4
                        }) {
                            
                            Text("Okay")
                                .font(.system(size: 17))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(mood == 4 ? Color.green : Color.gray)
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
                        .background(mood == 5 ? Color.orange : Color.gray)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        
                    }
                    
                    Spacer()
                        .frame(width: 40)
                    
                    VStack {
                        
                        Button(action: {
                            mood = 6
                        }) {
                            
                            Text("Happy")
                                .font(.system(size: 17))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(mood == 6 ? Color.yellow : Color.gray)
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
                        .background(mood == 7 ? Color.yellow : Color.gray)
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
                        .background(mood == 8 ? Color.yellow : Color.gray)
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
                        .background(mood == 9 ? Color.yellow : Color.gray)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                    }
                }
                
                
                VStack {
                    // MARK: End of feeling buttons
                    HStack {
                        Text("What's going on?")
                            .font(.system(size: 30))
                            .fontWeight(.regular)
                            .foregroundColor(Color.white)
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    
                    
                    ZStack {
                        Rectangle()
                            .frame(width:325, height: 100)
                            .cornerRadius(15)
                            .foregroundColor(Color.white)
                        
                        TextField("You can type your reason here ...", text: $summary)
                            .font(.system(size: 20))
                            .foregroundColor(Color.black)
                            .padding(.horizontal, 50)
                            .onReceive(Just(summary)) { _ in limitText(50) }
                        
                        
                    }
                    
                    
                    
                    
                    HStack {
                        Text("Do you want to alert your friends ...")
                            .font(.system(size: 30))
                            .fontWeight(.regular)
                            .foregroundColor(Color.white)
                        
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        if friends.count > 1 {
                            Button(action: {
                                
                            },
                                   label: {
                                Text("ALL")
                                    .fontWeight(.bold)
                                    .frame(width: 100, height: 30)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 15))
                                    .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
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
                    
                    Button(action: {
                        shareMood()
                    },
                           label: {
                        Text("SHARE")
                            .fontWeight(.thin)
                            .frame(width: 100, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                    .padding()
                    
                    
                    
                    NavigationLink(
                        destination: FriendVaultTrackMoods(user: user, atmosphere: atmosphere, friends: friends),
                        label: {
                            Text("Mood Tracker")
                                .fontWeight(.thin)
                                .frame(width: 200, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                    
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
                                RestApi.instance.sendPushNotification(title: "BestFriends - Atmosphere", body: "\(user.firstName) Just changed thier Temperament!", APNToken: f.APNToken ?? "")
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
}








struct AtmosphereMain2_Previews : PreviewProvider {
    
    static var previews: some View {
        AtmosphereMain2(user: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: ""), atmosphere: Atmosphere(id: "", planet: 0, mood: 0, moodLogs: []), friends: [])
        
    }
}


