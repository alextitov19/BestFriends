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
    
    @State private var selectedFriends: [String] = []
    @State private var shareColor = ColorManager.purple5
    @State private var showingAlert = false
    
    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
   
    
    var body: some View {
        ZStack {

//            Image("blueBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
            
            
            ColorManager .purple1
                .ignoresSafeArea()
            


            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)

            
            VStack {
                
                Text("Sharing LIFE")
                    .font(.system(size: 20))

                    .fontWeight(.ultraLight)
                    .foregroundColor(ColorManager .grey4)
                    .multilineTextAlignment(.center)
                
                Text("with your trusted Friends")
                    .font(.system(size: 20))

                    .fontWeight(.ultraLight)
                    .foregroundColor(ColorManager .grey4)
                    .multilineTextAlignment(.center)
                
                
                HStack {
                 
                    
                    Text("Set my \n'Vibe'")
                        .font(.system(size: 30))
                        .fontWeight(.ultraLight)
                        .foregroundColor(ColorManager .grey3)
                        .multilineTextAlignment(.center)
                   
                    Image("FatGuy200")
                        .resizable()
                        .frame(width: 150, height: 150)
                    
                }
//                    Spacer()
//                        .frame(height: 20)
                    
                  
                    
                  
                    
                
              
                    
                
    
                HStack {
                    VStack {
                        
                   
                        
                        Button(action: {
                            mood = 0
                        }) {
                            
                            Text("School Stress")
                                .font(.system(size: 10))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(mood == 0 ? Color(.cyan) : ColorManager .grey1)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        Spacer()
                            .frame(height: 12)
                        
                        Button(action: {
                            mood = 1
                        }) {
                            
                            Text("Schedule \nOverwelming")
                                .font(.system(size: 10))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(mood == 1 ? Color(.cyan) : ColorManager .grey1)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        Spacer()
                            .frame(height: 12)
                        
                        Button(action: {
                            mood = 2
                        }) {
                            
                            Text("Relationship \nDrama")
                                .font(.system(size: 10))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(mood == 2 ? Color(.cyan) : ColorManager .grey1)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        Spacer()
                            .frame(height: 12)
                        
                        Button(action: {
                            mood = 3
                        }) {
                            
                            Text("Family \nIssues")
                                .font(.system(size: 10))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(mood == 3 ? Color(.cyan) : ColorManager .grey1)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                    }
                    
                    Spacer()
                        .frame(width: 30)
                    
                    VStack {
                        Button(action: {
                            mood = 4
                        }) {
                            
                            Text("Exciting NEWS!")
                                .font(.system(size: 10))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(mood == 4 ? Color(.systemGreen) : ColorManager .grey1)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        Spacer()
                            .frame(height: 12)
                        
                        Button(action: {
                            mood = 5
                        }) {
                            
                            Text("Sad, Lonely / \nBored")
                                .font(.system(size: 10))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(mood == 5 ? Color(.cyan) : ColorManager .grey1)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        
                    }
                    
                    Spacer()
                        .frame(width: 30)
                    
                    VStack {
                        
                        Button(action: {
                            mood = 6
                        }) {
                            
                            Text("My Crush")
                                .font(.system(size: 10))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(mood == 6 ? Color(.systemYellow) : ColorManager .grey1)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        Spacer()
                            .frame(height: 12)
                        
                        Button(action: {
                            mood = 7
                        }) {
                            
                            Text("Ton of IG\n'Likes' on Post")
                                .font(.system(size: 10))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(mood == 7 ? Color(.systemYellow) : ColorManager .grey1)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        Spacer()
                            .frame(height: 12)
                        
                        Button(action: {
                            mood = 8
                        }) {
                            
                            Text("I really \nWISH that ...")
                                .font(.system(size: 10))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(mood == 8 ? Color(.systemYellow) : ColorManager .grey1)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        Spacer()
                            .frame(height: 12)
                        
                        Button(action: {
                            mood = 9
                        }) {
                            
                            Text("Found new \nLove")
                                .font(.system(size: 10))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(mood == 9 ? Color(.systemPurple) : ColorManager .grey1)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                    }
                }
                
                
                VStack {
                    // MARK: End of feeling buttons

                    
                    HStack {
                       
                        
                        
                    }
                    
                    Spacer()
                        .frame(height: 25)
                    
                    ZStack {
                        Rectangle()
                            .frame(width:335, height: 50)
                            .cornerRadius(15)
                            .foregroundColor(ColorManager .grey3)
                            .opacity(0.5)
                        
                        TextField("Give friend(s) some details ...", text: $summary)
                            .font(.system(size: 20))
                            .foregroundColor(ColorManager.purple5)
                            .padding(.horizontal, 55)
                            .onReceive(Just(summary)) { _ in limitText(80) }
                        
                        
                    }
                    
         
                    HStack {
 
                    }

                  
                    VStack {
                        
                        Spacer()
                            .frame(height: 10)
                        
                        
                        HStack {
                      
//                            Text("select >")
//                                .fontWeight(.thin)
//                                .frame(width: 100, height: 30)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 20))
//                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
//                                .cornerRadius(25)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                                           
                            
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
                        
//                        Spacer()
//                            .frame(height: 15)
                   
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
                        
                        Spacer()
                            .frame(height: 20)
                        
                        
                        Button(action: {
                            shareButtonTapped()
                        },
                               label: {
                            Text("SHARE")
                                .fontWeight(.thin)
                                .frame(width: 100, height: 30)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 25))
                                .background(shareColor)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                .alert("We let your friend(s) know your day just changed. \n\n Now they can lend support on difficult days - or cheer with you on good news. \n\nSupportive friends are hard to find. Hold onto them!", isPresented: $showingAlert) {
                                    Button("OK", role: .cancel) { }
                                }
                           
                        })
                        
                        
                VStack {
                    
                    Spacer()
                        .frame(height: 10)
                    
                    Text("Friends supporting on difficult days")
                        .font(.system(size: 20))

                        .fontWeight(.ultraLight)
                        .foregroundColor(ColorManager .grey3)
                        .multilineTextAlignment(.center)
                    
                    Text("Cheering on bright days")
                        .font(.system(size: 20))

                        .fontWeight(.ultraLight)
                        .foregroundColor(ColorManager .grey3)
                        .multilineTextAlignment(.center)
                            
                        }
                        
                    }

                }

                Spacer()
                    .frame(height: 50)
                
            }
        }
    }
    
    func shareButtonTapped() {
        shareMood()

        if selectedFriends.count == 0 { return }
        for id in selectedFriends {
            for f in friends {
                if f.id == id {
                    RestApi.instance.sendPushNotification(title: "BestFriends", body: "\(user.firstName) Their 'Vibe' just changed. Please take a moment to check on them!      INSTRUCTIONS: Tap friend's planet on Home pg, then tap [Friend's 'Vibe' Changed] from dropdown. ", APNToken: f.APNToken)
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
                    print("Successfully updated atmosphere")
                    for i in sharedWith {
                        for f in friends {
                            if i == f.id {
                                RestApi.instance.sendPushNotification(title: "BestFriends - 'Vibe'", body: "\(user.firstName): Your friend's day just changed! Tap friend's planet on Home pg, then tap [Friend's 'Vibe' Changed] from dropdown. Please take a moment to check on them!", APNToken: f.APNToken )
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
                .frame(width: 85, height: 85)
               .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .font(.system(size: 8))
                .background(color)
                .cornerRadius(75)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
        }
       
    
        
    }
    
    private func defaultMessageButtonTapped(defaultMessage: String) {
        self.colorChangeTap = defaultMessage
}
}



