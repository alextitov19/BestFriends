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
                
                
                
                ColorManager.purple5
                    .ignoresSafeArea()
                    .onAppear()
                
                
                AdPlayerView(name: "dramaLights")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
            } else {
                
                
                Image("FHBackground")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
            }
            
//            ColorManager .purple4
//                .opacity(0.6)
//                .ignoresSafeArea()
//
//
//            Image("FHBackground")
//                .resizable()
//                .scaledToFill()
//                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                    .frame(height: 20)
                
                
                
                VStack {
                    
                    VStack {
                 
                     
                        
                        Text("My Vibes")
                            .font(.system(size: 45))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text("Something just happened.")
                            .font(.system(size: 20))
//                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
                        
                        
                        Text("But you're not ready to talk about it yet.")
                            .font(.system(size: 20))
//                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
                        Spacer()
                            .frame(height: 15)
                        
                        Text("Let your friends send you some")
                            .font(.system(size: 22))
//                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
              
                        
                        Text("Emotional Support in the meantime.")
                            .font(.system(size: 22))
//                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
                        
                        Spacer()
                            .frame(height: 30)
   
                        
                    }

                }
           
                HStack {
                    
                    VStack {
                        HStack {
                          
                  
                            
                    }
                   
                        Button(action: {
                            mood = 0
                        }) {
                            
                    
                    }

                        
                        
                     
                        Text("Shows as 'blue' atmosphere \non friends iPhone")
                            .font(.system(size: 10))
                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)

                        Button(action: {
                            mood = 1
                        }) {

                            Text("Ouch! Dented Heart")
                                .font(.system(size: 10))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 140, height: 30, alignment: .center)
                        .background(mood == 1 ? Color(.cyan) : ColorManager .grey2)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)

                 

                        Spacer()
                            .frame(height: 12)

                      Button(action: {
                          mood = 2
                        }) {

                           Text("Ugg. Friend Drama")
                                .font(.system(size: 10))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 140, height: 30, alignment: .center)
                        .background(mood == 2 ? Color(.orange) : ColorManager .orange2)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)

               
                        

                      Spacer()
                            .frame(height: 12)

                        Button(action: {
                            mood = 3
                        }) {

                            Text("School's stressing me")
                                .font(.system(size: 10))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 140, height: 30, alignment: .center)
                        .background(mood == 3 ? Color.purple : ColorManager .purple4)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)

                        
                        Spacer()
                              .frame(height: 12)
                        
//                        Button(action: {
//                            mood = 9
//                        }) {
//
//                            Text("Need to TALK!")
//                                .font(.system(size: 10))
//                                .foregroundColor(Color.black)
//                        }
//                        .frame(width: 140, height: 30, alignment: .center)
//                        .background(mood == 9 ? Color.red : Color.pink)
//                        .cornerRadius(7)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)

 
                        
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
//
//                        Button(action: {
//                            mood = 6
//                        }) {
//                            Spacer()
//                                .frame(width: 10)
//
//                            Text("Ready to talk")
//                                .font(.system(size: 10))
//                                .foregroundColor(Color.black)
//
//
//
//
//
//
//                        }
//                        .frame(width: 100, height: 80, alignment: .center)
//                        .background(mood == 6 ? Color(.systemYellow) : Color .yellow)
//                        .cornerRadius(7)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
////
//                        Spacer()
//                            .frame(height: 25)
                        
                        HStack {
                            
//                            VStack {
//
//                                Button(action: {
//                                    sessionManager.showLogin()
//                                },
//                                       label: {
//                                    Image("home-alt2")
//                                        .frame(width: 50, height: 25)
//                                        .foregroundColor(.white)
//                                        .font(.system(size: 20))
//                                        .background(Color .black)
//                                        .cornerRadius(15)
//                                        .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
//                                        .opacity(0.70)
//
//                                })
//
//                            }
//                            Button(action: {
//                                sessionManager.showLogin()
//                            },
//                                   label: {
//                                Image("FaceTime")
//                                    .frame(width: 5, height: 5)
//                            })
//                                Spacer()
//                                    .frame(width: 15)
//
//                            //
//                            Button(action: {
//                                sessionManager.showLogin()
//                            },
//                                   label: {
//                                Image("home-alt2")
//                                    .frame(width: 50, height: 25)
//                                    .foregroundColor(.white)
//                                    .font(.system(size: 20))
//                                    .background(Color .black)
//                                    .cornerRadius(15)
//                                    .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
//                                    .opacity(0.70)
//
//                            })
//
//                            Spacer()
//                                .frame(width: 15)
//
//
//                            Button(action: {
//                                sessionManager.showLogin()
//                            },
//                                   label: {
//                                Image("download")
//                                    .frame(width: 5, height: 5)
////                                    .foregroundColor(.white)
////                                    .font(.system(size: 20))
////                                    .background(Color .black)
////                                    .cornerRadius(15)
////                                    .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
////                                    .opacity(0.70)
//
//                            })
                            
                            
                            
                            
                            
                            
                           
                        }

                        Text("Shows as 'yellos' atmosphere \non friends iPhone")
                            .font(.system(size: 10))
                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
                        
//                        Button(action: {
//                            mood = 7
//                        }) {
//
//                            Text("Great Day - yes, yes, yes!")
//                                .font(.system(size: 10))
//                                .foregroundColor(Color.black)
//                        }
//                        .frame(width: 140, height: 30, alignment: .center)
//                        .background(mood == 7 ? Color.green : Color.orange)
//                        .cornerRadius(7)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//
//                        Spacer()
//                            .frame(height: 12)
                        
                        Button(action: {
                            mood = 8
                        }) {

                            Text("Great Day - yes, yes, yes!")
                                .font(.system(size: 10))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 140, height: 30, alignment: .center)
                        .background(mood == 8 ? Color.green : Color.orange)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)


                        Spacer()
                            .frame(height: 12)

//                        Button(action: {
//                            mood = 9
//                        }) {
//
//                            Text("Need to TALK!")
//                                .font(.system(size: 10))
//                                .foregroundColor(Color.black)
//                        }
//                        .frame(width: 140, height: 30, alignment: .center)
//                        .background(mood == 9 ? Color.red : ColorManager .pmbc_pink)
//                        .cornerRadius(7)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//


                    }
                    
                 
                }
                
                
                VStack {
                    // MARK: End of feeling buttons
    
                 
                    
                    ZStack {
                
                        VStack {

                            NavigationLink( destination:  RR4(user: user, friends: friends),
                                            label: {
                                Text("Somethings Up - I Need to TALk")
                                
                                    .font(.system(size: 15))
                                    .foregroundColor(Color.white)
                                    .frame(width: 315, height: 30, alignment: .center)
                                    .background(mood == 9 ? Color.red : Color.pink)
                                    .cornerRadius(7)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)

                            })
                            
                            Spacer()
                                .frame(height: 30)
                            
                            
                            
//         ********************************************************
                            
                            Text("Notify your friends of your 'Vibe' change")
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
                                .alert("We hope you just tapped the 'Great Day' button - that would put smiles on our faces. \nIf not, we and your friends are here for you. \n\nWe just sent your friend(s) a notificaion. \nLetting them know your 'Vibe' changed.", isPresented: $showingAlert) {
                                    Button("OK", role: .cancel) { }
                                }
                            
                        })
//                        .confettiCannon(counter: $counter)
                        

                        Spacer()
                            .frame(height: 10)
                        
                        
                        Button(action: {
                            sessionManager.showLogin()
                        },
                            label: {
                            Image("home-alt2")
                                .frame(width: 50, height: 25)
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                                .background(Color .white)
                                .cornerRadius(15)
                                .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                                .opacity(0.70)
                            
                        })
                 
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
                    RestApi.instance.sendPushNotification(title: "BestFriends", body: " \(user.firstName) 'Vibe' just changed! Shoot'em a CareHeart or PhotoPOP", APNToken: f.APNToken)
                    
                    //MARK: The code below creates an in-app notification for your friend (f.id)
                    //MARK: DO NOT CHANGE THE TEXT OF THE NOTIFICATION, otherwise the code to take the user to a diffrent page will not work. Once you set it, do not change it.
                    RestApi.instance.createInAppNotification(ian: InAppNotification(user: f.id, sender: user.id, text: "Vibe' just changed! Shoot'em a CareHeart or PhotoPOP", createdOn: Int64(Date().timeIntervalSince1970))).then({ response in
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



                        
