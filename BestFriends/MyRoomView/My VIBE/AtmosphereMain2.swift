//
//  AtmosphereMain2.swift
//  BestFriends
//
//  Created by Social Tech on 5/12/22.
//


import Combine
import SwiftUI
import ConfettiSwiftUI
import AVKit


struct AtmosphereMain2: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    
    
//    let user: User
//    let atmosphere: Atmosphere
//    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    @State private var mood: Int = -1
    @State private var summary = ""
    @State private var sharedWith: [String] = []
    @State private var colorChangeTap: String = ""
    @State private var shareTapped: Bool = false
    @State private var selectedFriends: [String] = []
    @State private var shareColor = ColorManager.purple5
    @State private var showingAlert = false
    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
  
    @State private var counter = 0
    
    var body: some View {
        ZStack {
            
            
            if shareTapped {
                
                
                
                Color.black
                    .ignoresSafeArea()
                    .onAppear()
                
                
                AdPlayerView(name: "dramaLights")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
            } else {
                
                Color.black
                   .opacity(0.9)
                    .ignoresSafeArea()
                
                
                AdPlayerView(name: "Planet1")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
//                Image("FHBackground")
//                    .resizable()
//                    .scaledToFill()
//                    .edgesIgnoringSafeArea(.all)
            }
            
        
            
            VStack {
                Spacer()
                    .frame(height: 20)
                
                
                
                VStack {
                    
                    VStack {
                 
                     
                
                        
                        Text("Your friends care about you!")
                            .font(.system(size: 28))
//                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
//
//                        Spacer()
//                            .frame(height: 10)
//
//
//                        Text("But maybe you're just not ready")
//                            .font(.system(size: 17))
//                            .italic()
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(Color.white)
//
//                        Text("to talk about it yet.")
//                            .font(.system(size: 17))
//                            .italic()
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(Color.white)
                        
                        
                        Spacer()
                            .frame(height: 25)
                        
                        Text("Let'em know what's up")
                            .font(.system(size: 20))
//                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
              
//
//                        Text("CareHearts")
//                            .font(.system(size: 25))
////                            .italic()
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(Color.white)
                        
                        Spacer()
                            .frame(height: 30)
   
                    }

                }
           
                HStack {
                    
                   
                
                    
                    VStack {
                  
                        
                        Text("Shows as 'blue' atmosphere")
                            .font(.system(size: 10))
                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
                        
                        
                        Text("around your planet")
                            .font(.system(size: 10))
                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
                        HStack {
                          
                  
                            
                    }
                   
                        Button(action: {
                            mood = 0
                        }) {
                            
                    
                    }

                   

                        Button(action: {
                            mood = 1
                            showingAlert = true
                        }) {

                            Text("Ouch! Dented Heart")
                                .font(.system(size: 10))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 140, height: 30, alignment: .center)
                        .background(mood == 1 ? Color(.systemCyan) : ColorManager .grey2)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                       
                        .alert("We'll let your friends know.", isPresented: $showingAlert) {
                            Button("OK", role: .cancel, action: {
                                showingAlert = false
                                
//                                We know how difficult this can be. Hopefully your friends can help you through this.
                            })
                        }
                        
                 

                        Spacer()
                            .frame(height: 12)

                      Button(action: {
                          mood = 2
                          showingAlert = true
                        }) {

                           Text("Friend Drama")
                                .font(.system(size: 10))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 140, height: 30, alignment: .center)
                        .background(mood == 2 ? Color(.systemCyan) : ColorManager .grey2)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        .alert("We'll let your friends know.", isPresented: $showingAlert) {
                            Button("OK", role: .cancel, action: {
                                showingAlert = false
                                
//                                This is always difficult to deal with. Hopefully, the [Friend Drama] section can help you.
                            })
                        }
                        

                      Spacer()
                            .frame(height: 12)

                        Button(action: {
                            mood = 3
                            showingAlert = true
                        }) {

                            Text("Ugh. Feeling a little \ndown today")
                                .font(.system(size: 10))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 140, height: 30, alignment: .center)
                        .background(mood == 3 ? Color(.systemCyan) : ColorManager .grey2)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        .alert("We'll let your friends know.", isPresented: $showingAlert) {
                            Button("OK", role: .cancel, action: {
                                showingAlert = false

//                                Try to stay calm. You can do this.
                    })
                }
                        
                        
                        Spacer()
                              .frame(height: 12)
                   
                    }
                    Spacer ()
                        .frame(width: 33)
             
                    VStack {
                   
                        ZStack {
                           
                            VStack {
                                
                         
                            }
                        
                        }
                    
                    }
                    
        
                    
                    
                    
                    

//
//                        Button(action: {
//                            mood = 5
//                        }) {
//
//                            Text("I was really \nhoping that...")
//                                .font(.system(size: 10))
//                                .foregroundColor(Color.black)
//                        }
//                        .frame(width: 80, height: 30, alignment: .center)
//                        .background(mood == 5 ? Color(.systemOrange) : ColorManager .orange1)
//                        .cornerRadius(7)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//
//
//                    }
//
//                    Spacer()
//                        .frame(width: 20)
                    
                    VStack {
                        
                        Text("Shows as 'yellow' atmosphere")
                            .font(.system(size: 10))
                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
                        
                        
                        
                        

                        Button(action: {
                            mood = 6
                        }) {
                            Spacer()
                                .frame(width: 10)

                            Text("Can't wait to tell \nyou my Good News")
                                .font(.system(size: 10))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 140, height: 30, alignment: .center)
                        .background(mood == 6 ? Color(.systemYellow) : ColorManager .orange3)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        .alert("We'll let your friends know.", isPresented: $showingAlert) {
                            Button("OK", role: .cancel, action: {
                                showingAlert = false
                                
                    })
                }
//
//                        Spacer()
//                            .frame(height: 25)
                        
                        HStack {
                             
                        }

                        Spacer()
                            .frame(height: 12)
                        
//                        Button(action: {
//                            mood = 7
//                        }) {
//
//                            Text("I really need to TALK!")
//                                .font(.system(size: 10))
//                                .foregroundColor(Color.black)
//                        }
//                        .frame(width: 140, height: 30, alignment: .center)
//                        .background(mood == 7 ? Color.green : Color.red)
//                        .cornerRadius(7)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)


                        Spacer()
                            .frame(height: 12)
                        
                    
                        
                    
                        
                        Button(action: {
                            mood = 8
                            showingAlert = true
                        }) {

                            Text("My Friends are \nthe BEST!")
                                .font(.system(size: 10))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 140, height: 30, alignment: .center)
                        .background(mood == 8 ? Color(.systemYellow) : ColorManager .orange3)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        .alert("We'll let your friends know.", isPresented: $showingAlert) {
                            Button("OK", role: .cancel, action: {
                                showingAlert = false
//                                We are super happy you're having a great day - smile, it's catching.
                                
                    })
                }
                        Spacer()
                            .frame(height: 12)

                        Button(action: {
                            mood = 9
                            showingAlert = true
                        }) {

                            Text("Not good. \nI really need to TALK!")
                                .font(.system(size: 10))
                                .foregroundColor(Color.white)
                        }
                        .frame(width: 0, height: 0, alignment: .center)
                        .background(mood == 9 ? Color(.systemRed) : Color.green)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        .alert("We'll let your friends know.", isPresented: $showingAlert) {
                            Button("OK", role: .cancel, action: {
                                showingAlert = false

                    })
                }


                    }
                    
                 
                }
                
                
                VStack {
                    // MARK: End of feeling buttons
    
                 
                    
                    ZStack {
                
                        VStack {

                 
                            Spacer()
                                .frame(height: 5)
                            
                            
                           
                            
                            Button(action: {
                                mood = 7
                            }) {

                                Text("I really need to TALK! \n(shows as 'green' atmosphere)")
                                    .font(.system(size: 10))
                                    .foregroundColor(Color.black)
                            }
                            .frame(width: 150, height: 35, alignment: .center)
                            .background(mood == 7 ? Color.green : Color.red)
                            .cornerRadius(7)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            .alert("We'll let your friends know.", isPresented: $showingAlert) {
                                Button("OK", role: .cancel, action: {
                                    showingAlert = false

                        })
                    }
                         
                            
                            Spacer()
                                .frame(height: 25)
                            
                            
                            
//         ********************************************************
                            
                            Text("When you send a notification")
                               .italic()
                                .font(.system(size: 17))
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.white)
                            
                            Text("your planet's atmosphere color changes")
                               .italic()
                                .font(.system(size: 17))
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.white)
                            
                        }
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
                            .frame(height: 15)
                        
                        
                        Button(action: {
                            counter += 1
                            shareTapped = true
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
                                .alert("We just sent your friend(s) a notificaion. \nLetting them know your 'Day' changed.", isPresented: $showingAlert) {
                                    Button("OK", role: .cancel) { }
                                }
                            
                        })
//                        .confettiCannon(counter: $counter)
                        

                        Spacer()
                            .frame(height: 20)
                        
            
                        
                        Button(action: {
                            sessionManager.showLogin()
                        },
                            label: {
                            Image("home-alt2")
                                .frame(width: 50, height: 25)
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                                .background(ColorManager .grey3)
                                .cornerRadius(15)
                                .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                                .opacity(0.70)
                            
                        })
                 
                        Spacer()
                            .frame(height: 100)
                        
                    }
                    
                }
           
            }
        }
    }
    
    func shareButtonTapped() {
        shareMood()
        
        if selectedFriends.count == 0 { return }
        for id in selectedFriends {
            for f in friends {
                if f.id == id {
                    RestApi.instance.sendPushNotification(title: "BestFriends", body: " \(user.firstName) 'Day' just changed!", APNToken: f.APNToken)
                    
                    //MARK: The code below creates an in-app notification for your friend (f.id)
                    //MARK: DO NOT CHANGE THE TEXT OF THE NOTIFICATION, otherwise the code to take the user to a diffrent page will not work. Once you set it, do not change it.
                    RestApi.instance.createInAppNotification(ian: InAppNotification(user: f.id, sender: user.id, text: "'Day' just changed!", createdOn: Int64(Date().timeIntervalSince1970))).then({ response in
                        print("Create a Vibe notification response code: ", response)
                    })
                    RestApi.instance.createStreakLog(friendID: f.id)
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
                                RestApi.instance.sendPushNotification(title: "BestFriends - 'Vibe'", body: "\(user.firstName): Your friend's day just changed! Please take a moment to check on them.", APNToken: f.APNToken )
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



                        
