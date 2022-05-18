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
    let friends: [User]
    
    @State private var mood: Int = -1
    @State private var summary = ""
    
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
                            RectView(user: user, friend: friends[0])
                        }
                        
                        if friends.count > 1 {
                            RectView(user: user, friend: friends[1])
                        }
                    }
                    
                    HStack {
                        if friends.count > 2 {
                            RectView(user: user, friend: friends[2])
                        }
                        
                        if friends.count > 3 {
                            RectView(user: user, friend: friends[3])
                        }
                        
                        if friends.count > 4 {
                            RectView(user: user, friend: friends[4])
                        }
                    }
                    
                    Button(action: {
                        shareMood()
                    },
                           label: {
                        Text("SHARE")
                            .fontWeight(.thin)
                            .frame(width: 110, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                    .padding()
                    
                    Spacer()
                }
            }
        }
    }
    
    private func shareMood() {
        RestApi.instance.createMoodLog(mood: mood, summary: summary).then({ moodLog in
            print("Got mood log: ", moodLog)
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
        
        var body: some View {
            Button(action: {
                RestApi.instance.sendPushNotification(title: "BestFriends - Atmosphere", body: "\(user.firstName) Just changed thier Temperament!", APNToken: friend.APNToken ?? "").then { response in
                    print("Got send APN repsonse: ", response)
                    //                RestApi.instance.sendPushNotification(title: "BlueMode", body: "\(user.firstName) invited you to BlueMode!", APNToken: friend.APNToken ?? "").then { response in
                    //                    print("Got send APN repsonse: ", response)
                }
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
}







struct AtmosphereMain2_Previews : PreviewProvider {
    
    static var previews: some View {
        AtmosphereMain2(user: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: ""), friends: [])
        
    }
}


