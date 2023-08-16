//
//  MyRoomView.swift
//  BestFriends
//
//  Created by Alex Titov on 6/8/23.
//

import SwiftUI

struct MyRoomView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    
//    @State private var homeData: HomeData?
//    @State private var groups: [Group] = []
//    @State private var planets: [Planet] = []
    
    @State private var inviteClicked = false
    //    @State private var focusPlanet = false
//    @State private var showNewRoomNameDialog = false
    
//    @State private var newGroupMembers: [String] = []
    
//    @State private var chatGroupsView = ChatGroupsView(user: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: "", chatPin: "", chatBackground: ""), groups: [])
    
//    @State private var presentingPhotoPop = false
    @State private var presentingIANs = false
    
//    @State private var movingPlanets = false
    
    
    
    var body: some View {
        ZStack {
            
            
            
            //            Color.black
            //                .ignoresSafeArea()
            //                .scaledToFill()
            //                .opacity(0.8)
            //
            //
            
            
            
            Color.black
                .opacity(0.9)
                .ignoresSafeArea()
            
            
            //            Image("FHBackground")
            //                .resizable()
            //                .scaledToFill()
            //                .edgesIgnoringSafeArea(.all)
            //                .opacity(0.7)
            
            //            AdPlayerView(name: "MainPgEarth")
            //                .ignoresSafeArea()
            //                .blendMode(.screen)
            //                .opacity(0.99)
            
            AdPlayerView(name: "Planet1A")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.99)
            
            VStack {
                
                Spacer()
                    .frame(height: 20)
                
                HStack {
                    
                    
                    NavigationLink(
                        destination:  FH10(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                        label: {
                            
                            Image(systemName: "info.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 37, height: 37)
                                .opacity(0.9)
                                .foregroundColor(.white)
                        })
                    
                    Spacer ()
                        .frame(width: 22)
                    
                    VStack {
                        
                        
                        ZStack {
                            
                            HStack {
                                
                                ZStack {
                                    
                                    //                                    was: FH2
                                    
                                    NavigationLink( destination:  FH2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                                    label: {
                                        Text("Start       Here")
                                            .fontWeight(.light)
                                            .frame(width: 170, height: 33)
                                            .foregroundColor(ColorManager .grey1)
                                            .font(.system(size: 27))
                                            .background(Color.green)
                                            .cornerRadius(10)
                                            .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                    })
                                    
                                    Spacer ()
                                    //                                        .frame(width: 40)
                                    
                                    Image(systemName: "person.2.fill")
                                        .resizable()
                                        .foregroundColor(Color.cyan)
                                        .frame(width: 30, height: 30)
                                    //                                        .rotationEffect(.degrees())
                                        .shadow(color: .white, radius: 2, x: -2, y: 2)
                                    //                                .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                        .opacity(0.99)
                                }
                            }
                        }
                    }
                    
                    Spacer ()
                        .frame(width: 22)
                    
                    NavigationLink(
                        destination:  SettingsView(user: user, friends: friends, atmosphere: atmosphere),
                        label: {
                            
                            Image(systemName: "gear")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 37, height: 37)
                                .opacity(0.9)
                                .foregroundColor(.white)
                        })
                    
                    
                }
                
                Spacer()
                    .frame(height: 20)
              
                
                
                //                ******************************* In-app notifications ******************
                
                VStack {
             
                            ZStack {
                                
                                Button(action: {
                                    sessionManager.showLogin()
                                },
                                       label: {
                                 
                                ZStack{
                                 
                                    Image(systemName: "bell")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                        .foregroundColor(Color.white)
                                    
                                    
                                    Image(systemName: "heart")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50, height: 50)
                                        .foregroundColor(Color.red)
                                        .glow(color: ColorManager.purple4, radius: 3)
                                        .opacity(0.5)
                                    
                                    
                                    
                                    Text(". \nnew CareHearts")
                                        .fontWeight(.light)
                                        .foregroundColor(Color.white)
                                
                                    }
                                })
                               
                            }


                        
                        
    //     CareHearts ******************************************************
                           
                           //     CareHearts ******************************************************
                        
                        VStack {
                            
                            ZStack {
                                
                                NavigationLink(
                                    destination:  CH11(),
                                    label: {
                                        
                                        Image("Group 58")
                                            .resizable()
                                            .frame(width: 330, height: 170)
                                            .cornerRadius(20)
                                            .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                    })
                                VStack {
                                    
                                    VStack {
                                        Spacer()
                                            .frame(height: 60)
                                        
                                        HStack {
                                            
                                            VStack {
                                                
                                                NavigationLink( destination: HugPreload(user: user, friends: friends, groups: groups, atmosphere: atmosphere),
                                                                label: {
                                                    Text("Sending \nCareHearts")
                                                        .fontWeight(.regular)
                                                        .frame(width: 100, height: 45)
                                                        .foregroundColor(ColorManager .purple5)
                                                        .font(.system(size: 16))
                                                        .background(ColorManager .purple2)
                                                        .glow(color: ColorManager.purple3, radius: 1)
                                                        .shadow(color: .white, radius: 3, x: -4, y: 4)
                                                        .opacity(0.9)
                                                        .cornerRadius(7)
                                                        .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                                    
                                                })
                                                
                                              
                                            }
                                            
                                            Spacer()
                                                .frame(width: 5)
                                            
                                            VStack {
                                              
                                                ZStack {
                                                    NavigationLink( destination: CH3(),
                                                                    label: {
                                                        Text("")
                                                            .fontWeight(.light)
                                                            .frame(width: 42, height: 42)
                                                            .foregroundColor(ColorManager .grey4)
                                                            .font(.system(size: 17))
                                                            .background(ColorManager .grey2)
                                                            .glow(color: ColorManager.purple3, radius: 1)
                                                            .shadow(color: .white, radius: 3, x: -4, y: 4)
                                                            .opacity(0.9)
                                                            .cornerRadius(25)
                                                            .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                                        
                                                    })
                                                    
                                                    
                                                    Image(systemName: "info.circle")
                                                        .resizable()
                                                        .scaledToFit()
                                                        .frame(width: 37, height: 37)
                                                        .opacity(0.9)
                                                        .foregroundColor(.white)
                                                    
                                                    
                                                }
                                                    
                                                NavigationLink( destination:  AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                                                label: {
                                                    Text("Real-time \nFriendships")
                                                        .fontWeight(.regular)
                                                        .frame(width: 90, height: 40)
                                                        .foregroundColor(ColorManager .purple5)
                                                        .font(.system(size: 16))
                                                        .background(ColorManager .purple1)
                                                        .glow(color: ColorManager.purple3, radius: 1)
                                                        .shadow(color: .green, radius: 3, x: -4, y: 4)
                                                        .opacity(0.9)
                                                        .cornerRadius(7)
                                                        .shadow(color: Color.green, radius: 2, x: 0, y: 2)
                                                })
                                            }
                                            
                                            Spacer()
                                                .frame(width: 5)
                                            
                                            VStack {
                                                
                                                
                                                //                                        RR4(user: user, friends: friends
                                                NavigationLink( destination:  CH10(user: user, friends: friends, groups: groups, atmosphere: atmosphere),
                                                                label: {
                                                    Text("Receiving \nCareHearts")
                                                        .fontWeight(.regular)
                                                        .frame(width: 100, height: 45)
                                                        .foregroundColor(ColorManager .purple5)
                                                        .font(.system(size: 17))
                                                        .background(ColorManager .purple2)
                                                        .glow(color: ColorManager.purple3, radius: 1)
                                                        .shadow(color: .white, radius: 3, x: -4, y: 4)
                                                        .opacity(0.9)
                                                        .cornerRadius(7)
                                                        .shadow(color: Color.purple, radius: 2, x: 0, y: 2)
                                                })
                                                
                                                
                                                
                                            }
                                        }
                                    }
                                }
                            }
                        }

                    
                    //      PhotoPOP ****************************************************

                        VStack {
                            
                            HStack {
                                VStack {
                                    
                                    ZStack {
                                        
                                        
                                        NavigationLink( destination:  PhotoPopView(user: user, friends: friends),
                                                        label: {
                                            Text("PhotoPOP")
                                                .fontWeight(.bold)
                                                .frame(width: 300, height: 42)
                                                .foregroundColor(Color.black)
                                                .font(.system(size: 16))
                                                .background(Color.cyan)
                                                .glow(color: ColorManager.purple1, radius: 1)
                                                .shadow(color: .white, radius: 3, x: -4, y: 4)
                                                .opacity(0.9)
                                                .cornerRadius(15)
                                                .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                        })
                                        
                                        HStack {
                                            Image(systemName: "")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 37, height: 37)
                                                .opacity(0.5)
                                                .foregroundColor(.black)
                                                .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                            
                                            Spacer ()
                                                .frame(width: 180)
                                            
                                            //
                                            ZStack {
                                                
                                                Image(systemName: "heart.fill")
                                                    .resizable()
                                                    .foregroundColor(ColorManager .grey2)
                                                    .frame(width: 80, height: 60)
                                                    .rotationEffect(.degrees(7))
                                                    .shadow(color: .white, radius: 2, x: -2, y: 2)
                                                    .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                                    .opacity(0.99)
                                                
                                                
                                                
                                                
                                                NavigationLink( destination:  CH16(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                                                label: {
                                                    Text("super \nfriendship \ndays")
                                                        .fontWeight(.light)
                                                        .foregroundColor(Color.black)
                                                        .font(.system(size: 11))
                                                        .rotationEffect(.degrees(7))
                                                        .opacity(0.85)
                                                    
                                                })
                                                
                                            }
                                        }
                                    }
                                }
                           }

                        
                        
                        
                        //     Friendships ************************************
                        
                        VStack {
                            
                            
                            ZStack {
                                
                                NavigationLink(
                                    destination:  CH11(),
                                    label: {
                                        
                                        Image("Group 56")
                                            .resizable()
                                            .frame(width: 335, height: 180)
                                            .cornerRadius(20)
                                            .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                    })
                                
                                VStack {
                                    
                                    VStack {
                                        
                                        Spacer()
                                            .frame(height: 75)
                                        
                                        HStack {
                                            
                                            VStack {
                                                
                                                NavigationLink( destination: PhotoPopFGPreload(user: user, friend: user, friends: friends, groups: groups),
                                                                label: {
                                                    Text("Meet-up \nCoupons")
                                                        .fontWeight(.regular)
                                                        .frame(width: 120, height: 45)
                                                        .foregroundColor(ColorManager .purple5)
                                                        .font(.system(size: 17))
                                                        .background(ColorManager .purple1)
                                                        .glow(color: ColorManager.purple3, radius: 1)
                                                        .shadow(color: .white, radius: 3, x: -4, y: 4)
                                                        .opacity(0.9)
                                                        .cornerRadius(7)
                                                        .shadow(color: Color.purple, radius: 2, x: 0, y: 2)
                                                })
                                                
                                                
                                                
                                                Spacer()
                                                    .frame(height: 10)
                                                
                                                NavigationLink( destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres),
                                                                label: {
                                                    Text("SmileVault")
                                                        .fontWeight(.regular)
                                                        .frame(width: 120, height: 45)
                                                        .foregroundColor(ColorManager .purple5)
                                                        .font(.system(size: 17))
                                                        .background(ColorManager .purple1)
                                                        .glow(color: ColorManager.purple3, radius: 1)
                                                        .shadow(color: .white, radius: 3, x: -4, y: 4)
                                                        .opacity(0.9)
                                                        .cornerRadius(7)
                                                        .shadow(color: Color.purple, radius: 2, x: 0, y: 2)
                                                })
                                                
                                            }
                                            
                                            Spacer()
                                                .frame(width: 25)
                                            
                VStack {
                    
                    
//************************************ Conteswt or Friendship Highlights ***********
//
//                    NavigationLink( destination:  FH1(user: user, friends: friends, friendAtmospheres: friendAtmospheres),
//                            label: {
//                                Text("Highlights")
//
//                                    NavigationLink( destination:  CH11(),
//                                                    label: {
//                                        Text("Contest")
//
//                                    NavigationLink( destination:  RR9(user: user, friend: user, friends: friends, groups: groups),
//                                                        label: {
//                                            Text("Found NEW \nArtist")
//
//
//    ************************************ Panic Attack ***********
//
//                                    NavigationLink( destination:  MyFears(user: user, friends: friends),
//                                                    label: {
//                                        Text("Panic Attack!")
//    ************************************ Panic Attack ***********


    NavigationLink( destination: Step4_NuclearOption(user: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres),
                    label: {
        Text("Friend Drama")
            .fontWeight(.regular)
            .frame(width: 120, height: 45)
            .foregroundColor(ColorManager .purple5)
            .font(.system(size: 17))
            .background(ColorManager .purple1)
            .glow(color: ColorManager.purple3, radius: 1)
            .shadow(color: .white, radius: 3, x: -4, y: 4)
            .opacity(0.9)
            .cornerRadius(7)
            .shadow(color: Color.purple, radius: 2, x: 0, y: 2)
        
    })
    
    
    Spacer()
        .frame(height: 10)
    
    NavigationLink( destination: DreamVaultView(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                    label: {
        Text("My Dreams \n(in beta)")
            .fontWeight(.regular)
            .frame(width: 120, height: 45)
            .foregroundColor(ColorManager .purple5)
            .font(.system(size: 17))
            .background(ColorManager .purple1)
            .glow(color: ColorManager.purple3, radius: 1)
            .shadow(color: .white, radius: 3, x: -4, y: 4)
            .opacity(0.9)
            .cornerRadius(7)
            .shadow(color: Color.purple, radius: 2, x: 0, y: 2)
      
    })
    
                                                
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    
                    Spacer()
                        .frame(height: 15)
                    
//************************************************ Accessorizing Section **************
                    
                    //************************************************ Accessorizing Section **************
                    
                    
                    
                    HStack {

                        VStack {

                            ZStack {


                                NavigationLink( destination:  CH20(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                                label: {
                                    Text("Accessorizing \nyour experience")
                                        .fontWeight(.bold)
                                        .frame(width: 300, height: 42)
                                        .foregroundColor(Color.black)
                                        .font(.system(size: 16))
                                        .background(Color.purple)
                                        .glow(color: ColorManager.purple1, radius: 1)
                                        .shadow(color: .white, radius: 3, x: -4, y: 4)
                                        .opacity(0.75)
                                        .cornerRadius(15)
                                        .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                })


                                HStack {
                                    ZStack {

                                        Image(systemName: "heart.fill")
                                            .resizable()
                                            .foregroundColor(Color.purple)
                                            .frame(width: 80, height: 60)
                                            .rotationEffect(.degrees(-7))
                                            .shadow(color: .white, radius: 2, x: -2, y: 2)
                                            .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                            .opacity(0.99)


                                        Link(destination: URL(string: "https://socialtechlabs.com/social-media-influencers/")!) {

                                            Text("supportive \ninfluencers")
                                                .fontWeight(.light)
                                                .foregroundColor(Color.black)
                                                .font(.system(size: 11))
                                                .rotationEffect(.degrees(-7))
                                                .opacity(0.85)

                                        }
                                    }

                                    Spacer ()
                                        .frame(width: 220)


                                }
                            }
                        }
                    }
                    
                    
                    
                    
                    
                    
    //      *********************** My Crushes ************************************************
                    
//      *********************** My Crushes ************************************************
                    
                    
                    
                    HStack {

                        VStack {

                            ZStack {



                                Link(destination: URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSe53lOWm49a8bLvHabb2d7QKAqQf4teai4hTHJSEAT-FtspXw/viewform")!) {
                                    
                                    Text("Do you want a \n'My Crush' feature")
                                        .fontWeight(.bold)
                                        .frame(width: 300, height: 42)
                                        .foregroundColor(Color.black)
                                        .font(.system(size: 16))
                                        .background(Color.purple)
                                        .glow(color: ColorManager.purple1, radius: 1)
                                        .shadow(color: .white, radius: 3, x: -4, y: 4)
                                        .opacity(0.75)
                                        .cornerRadius(15)
                                        .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                }
                                
                                HStack {
                                    
                                    Image(systemName: "")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 37, height: 37)
                                        .opacity(0.5)
                                        .foregroundColor(.black)
                                        .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                    
                                    Spacer ()
                                        .frame(width: 180)
                                 
                                    ZStack {

                                        Image(systemName: "heart.fill")
                                            .resizable()
                                            .foregroundColor(ColorManager .grey3)
                                            .frame(width: 85, height: 65)
                                            .rotationEffect(.degrees(7))
                                            .shadow(color: .white, radius: 2, x: -2, y: 2)
                                            .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                            .opacity(0.99)


                                        Link(destination: URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSe53lOWm49a8bLvHabb2d7QKAqQf4teai4hTHJSEAT-FtspXw/viewform")!) {

                                            Text("3 min \nsurvey")
                                                .fontWeight(.light)
                                                .foregroundColor(Color.black)
                                                .font(.system(size: 11))
                                                .rotationEffect(.degrees(7))
                                                .opacity(0.85)

                                        }
                                    }
                                }
                            }
                        }
                    }

                    VStack {
                  
                        NavigationLink(
                            
                            destination: BuiltByTeensView(user: user, friends: friends),
                            label: {
                                Text("our story")
                                    .fontWeight(.regular)
                                    .frame(width: 80, height: 20)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 13))
                                    .background(Color.orange)
                                    .cornerRadius(15)
                                    .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                
                            })
                        
                    }
                    Spacer()
                        .frame(width: 170)
                    
                    
                    
                    //      old section ************************************************
                    
                    //      Old section ************************************************
                    
                    VStack {
                        
                        ZStack {
//
//                            NavigationLink(
//                                destination:  JournalsView(friends: friends),
//                                label: {
//
//                                    Image("thinCrush")
//                                        .resizable()
//                                        .frame(width: 320, height: 170)
//                                        .cornerRadius(20)
//                                        .shadow(color: Color.white, radius: 2, x: 0, y: 2)
//                                })
                            VStack {
                                
                                VStack {
                                    
//
//
//                                    Text("Sneak-peak NEW Features")
//                                        .fontWeight(.bold)
//                                        .frame(width: 280, height: 30)
//                                        .foregroundColor(Color.black)
//                                        .font(.system(size: 16))
//                                        .background(Color.white)
//                                        .cornerRadius(10)
//                                        .shadow(color: Color.white, radius: 2, x: 0, y: 2)
////
////
//                                    Spacer()
//                                        .frame(height: 10)
//
                                    HStack {
                                        
                                        VStack {
                                            
//
//
//                                            NavigationLink( destination: RR8(),
//                                                            label: {
//                                                Text("My Crush")
//                                                    .fontWeight(.regular)
//                                                    .frame(width: 120, height: 55)
//                                                    .foregroundColor(ColorManager .grey4)
//                                                    .font(.system(size: 15))
//
//                                            })
//
                                        }
//
//                                        Spacer()
//                                            .frame(width: 37)
//
//                                        VStack {
//
//                                            NavigationLink( destination: DreamVaultView(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
//                                                            label: {
//                                                Text("My Dreams")
//                                                    .fontWeight(.regular)
//                                                    .frame(width: 120, height: 55)
//                                                    .foregroundColor(ColorManager .purple5)
//                                                    .font(.system(size: 15))
//
//                                            })
//
                                  
                                     
                                      
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    
    private struct MyRoomRowView: View {
        let title, imageName: String
        let backgroundColor, foregroundColor: CGColor
        
        var body: some View {
            ZStack {
                Color(cgColor: backgroundColor)
                
                HStack{
                    Image(systemName: imageName)
                        .resizable()
                        .frame(width: 30, height: 30)
                        .scaledToFit()
                        .foregroundColor(Color(cgColor: foregroundColor))
                    
                    
                    
                    Spacer().frame(width: 20)
                    
                    Text(title)
                        .font(.system(size: 24, weight: .light))
                        .foregroundColor(Color(cgColor: foregroundColor))
                }
            }
            .frame(width: 310, height: 60)
            .opacity(0.6)
            .cornerRadius(15)
            .padding()
        }
    }
    
 
