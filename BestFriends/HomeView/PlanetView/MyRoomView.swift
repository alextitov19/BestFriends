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
    
    
    var body: some View {
        ZStack {


            
//            Color.black
//                .ignoresSafeArea()
//                .scaledToFill()
//                .opacity(0.8)
//
//
        
           
            
            ColorManager .purple4
                .opacity(0.6)
                .ignoresSafeArea()
            
            
            Image("FHBackground")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .opacity(0.7)
            
            AdPlayerView(name: "sky2")
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

//      Accessorizing ************************************************************
                    
            VStack {
                         
                VStack {
                            
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
                                        
                                        Text("first \nsupportive \ninfluencers")
                                            .fontWeight(.light)
                                            .foregroundColor(Color.black)
                                            .font(.system(size: 9))
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
    }
                    
                    
                    
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
                                    .frame(height: 57)
                                
                                HStack {
                                   
                                    VStack {
                             
                                        NavigationLink( destination: HugPreload(user: user, friends: friends, groups: groups, atmosphere: atmosphere),
                                                        label: {
                                            Text("Send")
                                                .fontWeight(.regular)
                                                .frame(width: 90, height: 40)
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

                                    }
                                   
                                    Spacer()
                                        .frame(width: 5)
                                    
                                    VStack {
                                        
                                        NavigationLink( destination: CH3(),
                                                        label: {
                                            Text("?")
                                                .fontWeight(.light)
                                                .frame(width: 37, height: 37)
                                                .foregroundColor(ColorManager .grey4)
                                                .font(.system(size: 17))
                                                .background(ColorManager .grey2)
                                                .glow(color: ColorManager.purple3, radius: 1)
                                                .shadow(color: .white, radius: 3, x: -4, y: 4)
                                                .opacity(0.9)
                                                .cornerRadius(15)
                                                .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                            
                                        })
                                        
                                        NavigationLink( destination:  AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                                        label: {
                                            Text("My 'Vibe' \nJUST changed")
                                                .fontWeight(.regular)
                                                .frame(width: 110, height: 40)
                                                .foregroundColor(ColorManager .purple5)
                                                .font(.system(size: 15))
                                                .background(ColorManager .purple1)
                                                .glow(color: ColorManager.purple3, radius: 1)
                                                .shadow(color: .white, radius: 3, x: -4, y: 4)
                                                .opacity(0.9)
                                                .cornerRadius(7)
                                                .shadow(color: Color.purple, radius: 2, x: 0, y: 2)
                                        })
                                    }
                                        
                                        Spacer()
                                            .frame(width: 5)
                                        
                                    VStack {
                                        
                                        NavigationLink( destination:  CH10(user: user, friends: friends, groups: groups, atmosphere: atmosphere),
                                                        label: {
                                            Text("Friend \nsent one!")
                                                .fontWeight(.regular)
                                                .frame(width: 90, height: 40)
                                                .foregroundColor(ColorManager .purple5)
                                                .font(.system(size: 15))
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
                
                
           
//      PhotoPOP ****************************************************
                
      
                        VStack {
              

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
                                Text("super \nFriendship \ndays")
                            .fontWeight(.light)
                            .foregroundColor(Color.black)
                            .font(.system(size: 9))
                            .rotationEffect(.degrees(7))
                            .opacity(0.85)

                            })
   
                        }
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
                                
//                NavigationLink( destination:  FH1(user: user, friends: friends, friendAtmospheres: friendAtmospheres),
//                        label: {
//                            Text("Highlights")
                                
//                                NavigationLink( destination:  CH11(),
//                                                label: {
//                                    Text("Contest")
                                    
                                NavigationLink( destination:  RR9(user: user, friend: user, friends: friends, groups: groups),
                                                    label: {
                                        Text("Found NEW \nArtist")
                                            .fontWeight(.regular)
                                            .frame(width: 120, height: 45)
                                            .foregroundColor(ColorManager .purple5)
                                            .font(.system(size: 15))
                                            .background(ColorManager .purple1)
                                            .glow(color: ColorManager.purple3, radius: 1)
                                            .shadow(color: .white, radius: 3, x: -4, y: 4)
                                            .opacity(0.9)
                                            .cornerRadius(7)
                                            .shadow(color: Color.purple, radius: 2, x: 0, y: 2)
                                    })
                                           
//************************************ When Andy finishes Friendship Highlights ***********
                                           
                                Spacer()
                                    .frame(height: 10)
                                            
                                    NavigationLink( destination: Step4_NuclearOption(user: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres),
                                        label: {
                                        Text("Friend Fight?")
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
                
                
                
//      Crush ************************************************
                
                VStack {
                    
                    ZStack {
                          
                        NavigationLink(
                            destination:  JournalsView(friends: friends),
                            label: {
                                
                                Image("thinCrush")
                                    .resizable()
                                    .frame(width: 320, height: 170)
                                    .cornerRadius(20)
                                    .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                            })
                        VStack {
                            
                            VStack {
                                
                            
                                
                                Text("Sneak-peak NEW Features")
                                    .fontWeight(.bold)
                                    .frame(width: 280, height: 30)
                                    .foregroundColor(Color.black)
                                    .font(.system(size: 16))
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                
                                
                                Spacer()
                                    .frame(height: 10)
                                
                                HStack {
                                   
                                    VStack {
                                        
                                    
                                                        
                                NavigationLink( destination: RR8(),
                                            label: {
                                                Text("My Crush")
                                                .fontWeight(.regular)
                                                .frame(width: 120, height: 55)
                                                .foregroundColor(ColorManager .grey4)
                                                .font(.system(size: 15))
                                    
                                            })
                                    
                                    }
                                   
                                    Spacer()
                                        .frame(width: 37)
                                    
                    VStack {
                        
                        NavigationLink( destination: DreamVaultView(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                        label: {
                            Text("My Dreams")
                                .fontWeight(.regular)
                                .frame(width: 120, height: 55)
                                .foregroundColor(ColorManager .purple5)
                                .font(.system(size: 15))
//                                                .background(ColorManager .purple1)
//                                                .glow(color: ColorManager.purple3, radius: 1)
//                                                .shadow(color: .white, radius: 3, x: -4, y: 4)
//                                                .opacity(0.9)
//                                                .cornerRadius(7)
//                                                .shadow(color: Color.purple, radius: 2, x: 0, y: 2)
                        })

                  
                                        
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
    
//    Our Story ***********************************************************************
//
//Image(systemName: "heart.fill")
//    .resizable()
//    .foregroundColor(ColorManager .purple3)
//    .frame(width: 90, height: 70)
//    .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
//    .opacity(0.7)
//
//    NavigationLink(
//
//        destination: BuiltByTeensView(user: user, friends: friends),
//        label: {
//            Text("Our Story")
//                .fontWeight(.regular)
//                .foregroundColor(Color.white)
//                .font(.system(size: 13))
//
//
//
//})
//
 
