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
                
                
                AdPlayerView(name: "background_9")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
//                Image("FHBackground")
//                    .resizable()
//                    .scaledToFill()
//                    .edgesIgnoringSafeArea(.all)
            }
            
        
            
            VStack {
             
                
                
                VStack {
                    
                    VStack {
                 
                     
                
                        
                        Text("Celebrating")
                            .font(.system(size: 25))
//                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)

                        
                        Text("Friendships")
                            .font(.system(size: 30))
//                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)

              
                    }

                }
                
                Spacer()
                    .frame(height: 30)
                
           
    HStack {
               
        VStack {
                  
                        Text("blue atmosphere on friend's planet")
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

                            Text("Difficult day - requesting \nquiet support")
                                .font(.system(size: 10))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 185, height: 30, alignment: .center)
                        .background(mood == 1 ? Color(.systemCyan) : ColorManager .grey2)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                       
                        .alert("We'll ask your friends for quiet support leting them know you are not ready to talk just yet.", isPresented: $showingAlert) {
                            Button("OK", role: .cancel, action: {
                                showingAlert = false
                                
//                                We know how difficult this can be. Hopefully your friends can help you through this.
                            })
                        }
                        
//    ************************************************
//                        ZStack {
//                            
//                            Image(systemName: "cube.fill")
//                                .resizable()
//                                .foregroundColor(Color.purple)
//                                .frame(width: 225, height: 150)
//                                .rotationEffect(.degrees(-20))
//                                .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50)
//                                .opacity(0.5)
//                                .blinking(duration: 4.0)
//                            
//                            VStack {
//                                
//                                Text("Bad day?")
//                                    .font(.system(size: 25))
//                                    .fontWeight(.light)
//                                    .multilineTextAlignment(.center)
//                                    .foregroundColor(Color.white)
//                                    .multilineTextAlignment(.center)
//                                    .rotationEffect(.degrees(-20))
//                                    .blinking(duration: 4.0)
//                                
//                                Text("Even if not ready to")
//                                    .font(.system(size: 15))
//                                    .fontWeight(.light)
//                                    .multilineTextAlignment(.center)
//                                    .foregroundColor(Color.white)
//                                    .multilineTextAlignment(.center)
//                                    .rotationEffect(.degrees(-20))
//                                    .blinking(duration: 4.0)
//                                
//                                
//                                Text("talk about it yet,")
//                                    .font(.system(size: 15))
//                                    .fontWeight(.light)
//                                    .multilineTextAlignment(.center)
//                                    .foregroundColor(Color.white)
//                                    .multilineTextAlignment(.center)
//                                    .rotationEffect(.degrees(-20))
//                                    .blinking(duration: 4.0)
//                                
//                                Text("alert friends so they can")
//                                    .font(.system(size: 15))
//                                    .fontWeight(.light)
//                                    .multilineTextAlignment(.center)
//                                    .foregroundColor(Color.white)
//                                    .multilineTextAlignment(.center)
//                                    .rotationEffect(.degrees(-20))
//                                    .blinking(duration: 4.0)
//                                
//                                Text("send emotional support")
//                                    .font(.system(size: 15))
//                                    .fontWeight(.light)
//                                    .multilineTextAlignment(.center)
//                                    .foregroundColor(Color.white)
//                                    .multilineTextAlignment(.center)
//                                    .rotationEffect(.degrees(-20))
//                                    .blinking(duration: 4.0)
//                                
//                            }
//                        }
//                    
                
                        
                        
//    ************************************************
                            
                        
                        
                        Spacer()
                                .frame(height: 30)
//    ************************************************
                                                
                        
                            
                            Text("yellow atmosphere")
                                .font(.system(size: 10))
                                .italic()
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.white)
                            
                            Button(action: {
                                mood = 8
                                showingAlert = true
                            }) {

                                Text("I really need to TALK!")
                                    .font(.system(size: 10))
                                    .foregroundColor(Color.black)
    //                            Image("smileIcon2")
                            }
                            .frame(width: 140, height: 30, alignment: .center)
                            .background(mood == 8 ? Color(.systemYellow) : ColorManager .grey2)
                            .cornerRadius(7)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                            .alert("Alert sent", isPresented: $showingAlert) {
//                                Button("OK", role: .cancel, action: {
//                                    showingAlert = false
                                    //                                We are super happy you're having a great day - smile, it's catching.
                                    
                                    
                                }
//                            }
                                                    
                                                    
//         **********************************************************
                        
                        
                        
                        
                        
//                        HStack {
                            
//                            Button(action: {
//                                mood = 2
//                                showingAlert = true
//                            }) {
//
//                                Text("Relationship, Friend \nor Family Drama")
//                                    .font(.system(size: 10))
//                                    .foregroundColor(Color.black)
//                            }
//                            .frame(width: 140, height: 30, alignment: .center)
//                            .background(mood == 2 ? Color(.systemCyan) : ColorManager .grey2)
//                            .cornerRadius(7)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                            .alert("We'll let your friends know your day just changed.", isPresented: $showingAlert) {
//                                Button("OK", role: .cancel, action: {
//                                    showingAlert = false
                                    
                                    //                                This is always difficult to deal with. Hopefully, the [Friend Drama] section can help you.
//                                })
//                            }
                            
                            VStack {
                                
                                
//
//                                NavigationLink( destination:  Step4_NuclearOption(user: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres),
//                                                label: {
//                                    Text("Fix")
//                                        .fontWeight(.bold)
//                                        .frame(width: 30, height: 30)
//                                        .foregroundColor(Color.white)
//                                        .font(.system(size: 16))
//                                        .background(ColorManager .purple3)
//                                        .glow(color: ColorManager.purple1, radius: 1)
//                                        .shadow(color: .white, radius: 3, x: -4, y: 4)
//                                        .opacity(0.9)
//                                        .cornerRadius(15)
//                                        .shadow(color: Color.white, radius: 2, x: 0, y: 2)
//                                        .opacity(0.6)
                                    //                                            .blinking()
                                    
                                    
//                                })
                                
//                            }
                            
                                Spacer()
                                    .frame(width: 30)
                            
                            
                            Spacer()
                                .frame(height: 1)
                            
//                            Button(action: {
//                                mood = 3
//                                showingAlert = true
//                            }) {
//
//                                Text("Family Drama")
//                                    .font(.system(size: 10))
//                                    .foregroundColor(Color.black)
//                            }
//                            .frame(width: 140, height: 30, alignment: .center)
//                            .background(mood == 3 ? Color(.systemCyan) : ColorManager .grey2)
//                            .cornerRadius(7)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                            .alert("We'll let your friends know your day just changed.", isPresented: $showingAlert) {
//                                Button("OK", role: .cancel, action: {
//                                    showingAlert = false
//
//                                    //                                Try to stay calm. You can do this.
//                                })
//                            }
                            
                        }
                        Spacer()
                              .frame(height: 12)
                   
                    }
//                    Spacer ()
//                        .frame(width: 10)
             
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
                        
//                        Text("Shows as 'yellow' atmosphere")
//                            .font(.system(size: 10))
//                            .italic()
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(Color.white)
//
//
                        
                        
//
//                        Button(action: {
//                            mood = 6
//                        }) {
//                            Spacer()
//                                .frame(width: 10)
//
//                            Text("Can't wait to tell \nyou my Good News")
//                                .font(.system(size: 10))
//                                .foregroundColor(Color.black)
//                        }
//                        .frame(width: 140, height: 30, alignment: .center)
//                        .background(mood == 6 ? Color(.systemYellow) : ColorManager .orange3)
//                        .cornerRadius(7)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                        .alert("We'll let your friends know.", isPresented: $showingAlert) {
//                            Button("OK", role: .cancel, action: {
//                                showingAlert = false
//
//                    })
//                }
//
//                        Spacer()
//                            .frame(height: 25)
                        
                        HStack {
                             
                        }

                        Spacer()
                            .frame(height: 12)
                        
                        
                        Text("green atmosphere")
                            .font(.system(size: 8))
                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
                        
                        Button(action: {
                            mood = 7
                        }) {

                            Text("Wow, exciting news!")
                                .font(.system(size: 10))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 140, height: 30, alignment: .center)
                        .background(mood == 7 ? Color.green : ColorManager .grey2)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)


                        Spacer()
                            .frame(height: 12)
                        
//
//
//                        Text("Shows as 'yellow' atmosphere")
//                            .font(.system(size: 10))
//                            .italic()
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(Color.white)
//
//                        Button(action: {
//                            mood = 8
//                            showingAlert = true
//                        }) {
//
//                            Text("I really need to TALK!")
//                                .font(.system(size: 10))
//                                .foregroundColor(Color.black)
////                            Image("smileIcon2")
//                        }
//                        .frame(width: 140, height: 30, alignment: .center)
//                        .background(mood == 8 ? Color(.systemYellow) : ColorManager .grey2)
//                        .cornerRadius(7)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                        .alert("We'll let your friends know.", isPresented: $showingAlert) {
//                            Button("OK", role: .cancel, action: {
//                                showingAlert = false
//                                //                                We are super happy you're having a great day - smile, it's catching.
//
//
//                            })
                            //                }
                        
                            
//                            Button(action: {
//                                mood = 9
//                                showingAlert = true
//                            }) {
//
//                                Text("Need my Friends")
//                                    .font(.system(size: 10))
//                                    .foregroundColor(Color.white)
//                            }
//                            .frame(width: 0, height: 0, alignment: .center)
//                            .background(mood == 9 ? Color(.systemRed) : Color.green)
//                            .cornerRadius(7)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                            .alert("We'll let your friends know.", isPresented: $showingAlert) {
//                                Button("OK", role: .cancel, action: {
//                                    showingAlert = false
//
//                                })
//                            }
                            
                        
                    }
                    
                 
                }
                
                
                VStack {
                    // MARK: End of feeling buttons
    
                 
                    
                    ZStack {
                
                        VStack {

                 
                            
                           
                            
//                            Button(action: {
//                                mood = 7
//                            }) {
//
//                                Text("I really need to TALK! \n(shows as 'green' atmosphere)")
//                                    .font(.system(size: 10))
//                                    .foregroundColor(Color.black)
//                            }
//                            .frame(width: 150, height: 35, alignment: .center)
//                            .background(mood == 7 ? Color.green : Color.red)
//                            .cornerRadius(7)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                            .alert("We'll let your friends know.", isPresented: $showingAlert) {
//                                Button("OK", role: .cancel, action: {
//                                    showingAlert = false
//
//                        })
//                    }
                         
                         
                            
//         ********************************************************
                            
//                            Text("Sharing with friends lets them see instantly")
//                               .italic()
//                                .font(.system(size: 15))
//                                .fontWeight(.thin)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(Color.white)
//
//                            Text("how your day is going by the 'color'")
//                               .italic()
//                                .font(.system(size: 15))
//                                .fontWeight(.thin)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(Color.white)
//                            Text("of your planet's atmosphere.")
//                               .italic()
//                                .font(.system(size: 15))
//                                .fontWeight(.thin)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(Color.white)
//
//
                        }
                    }
                    
                    HStack {
                        
                    }
                    
                    
             
                    VStack {
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Text("(alert friends)")
                            .font(.system(size: 15))
                           .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
               
                        
                        
                        
                        
                     
                  
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
                                .alert("Alert sent", isPresented: $showingAlert) {
                                    Button("OK", role: .cancel) { }
                                }
                            
                        })
//                        .confettiCannon(counter: $counter)
                        

                        Spacer()
                            .frame(height: 20)
                        
                        VStack {
                            
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
                                .frame(height: 30)
                            
                            
                            HStack {
                                
                                ZStack {
                                    
                                    Image(systemName: "")
                                        .resizable()
                                        .foregroundColor(Color.cyan)
                                        .frame(width: 150, height: 110)
                                        .rotationEffect(.degrees(7))
                                        .shadow(color: Color .blue, radius: 10, x: 10, y: 10)
                                        .opacity(0.5)
                                    //                                        .blinking(duration: 2.0)
                                    
                                    
                                    NavigationLink(destination: RR31(user: user, friends: friends), label: {
                                        
                                        Text("")
                                            .fontWeight(.thin)
                                            .foregroundColor(Color.white)
                                            .font(.system(size: 20))
                                            .multilineTextAlignment(.center)
                                            .rotationEffect(.degrees(7))
                                            .opacity(1.0)
                                        //                                            .blinking(duration: 2.0)
                                        
                                        
                                    }
                                    )}
                                
                                
                                
                                Spacer ()
                                    .frame(width: 70)
//                   ******************************************************
                                
//
//                                ZStack {
//
//                                    Image(systemName: "cube.fill")
//                                        .resizable()
//                                        .foregroundColor(Color.purple)
//                                        .frame(width: 225, height: 150)
//                                        .rotationEffect(.degrees(-20))
//                                        .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50)
//                                        .opacity(0.5)
//                                        .blinking(duration: 4.0)
//
//                                    VStack {
//
//                                        Text("Bad day?")
//                                            .font(.system(size: 25))
//                                            .fontWeight(.light)
//                                            .multilineTextAlignment(.center)
//                                            .foregroundColor(Color.white)
//                                            .multilineTextAlignment(.center)
//                                            .rotationEffect(.degrees(-20))
//                                            .blinking(duration: 4.0)
//
//                                        Text("Even if not ready to")
//                                            .font(.system(size: 15))
//                                            .fontWeight(.light)
//                                            .multilineTextAlignment(.center)
//                                            .foregroundColor(Color.white)
//                                            .multilineTextAlignment(.center)
//                                            .rotationEffect(.degrees(-20))
//                                            .blinking(duration: 4.0)
//
//
//                                        Text("talk about it yet,")
//                                            .font(.system(size: 15))
//                                            .fontWeight(.light)
//                                            .multilineTextAlignment(.center)
//                                            .foregroundColor(Color.white)
//                                            .multilineTextAlignment(.center)
//                                            .rotationEffect(.degrees(-20))
//                                            .blinking(duration: 4.0)
//
//                                        Text("alert friends so they can")
//                                            .font(.system(size: 15))
//                                            .fontWeight(.light)
//                                            .multilineTextAlignment(.center)
//                                            .foregroundColor(Color.white)
//                                            .multilineTextAlignment(.center)
//                                            .rotationEffect(.degrees(-20))
//                                            .blinking(duration: 4.0)
//
//                                        Text("send emotional support")
//                                            .font(.system(size: 15))
//                                            .fontWeight(.light)
//                                            .multilineTextAlignment(.center)
//                                            .foregroundColor(Color.white)
//                                            .multilineTextAlignment(.center)
//                                            .rotationEffect(.degrees(-20))
//                                            .blinking(duration: 4.0)
//
//                                    }
//                                }
                            }
                        }
                        
                        Spacer()
                            .frame(height: 15)
                        
                    }
                    
                }
           
            }
        }
//    }
    
    func shareButtonTapped() {
        shareMood()
        
        if selectedFriends.count == 0 { return }
        for id in selectedFriends {
            for f in friends {
                if f.id == id {
                    RestApi.instance.sendPushNotification(title: "BestFriends", body: " \(user.firstName) letting you know their day changed. Check to see how you can help or celebrate!", APNToken: f.APNToken)
                    
                    //MARK: The code below creates an in-app notification for your friend (f.id)
                    //MARK: DO NOT CHANGE THE TEXT OF THE NOTIFICATION, otherwise the code to take the user to a diffrent page will not work. Once you set it, do not change it.
                    RestApi.instance.createInAppNotification(ian: InAppNotification(user: f.id, sender: user.id, text: "'Day' just changed! Check their atmosphere color to see if they need a CareHeart.", createdOn: Int64(Date().timeIntervalSince1970))).then({ response in
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
                .frame(width: 80, height: 80)
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



                        
