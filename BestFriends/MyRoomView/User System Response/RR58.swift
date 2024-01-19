//
//  RR58.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 10/29/23.
//




import Foundation
import SwiftUI
import AVKit

struct RR58: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    
    
//    @State private var selectedFriends: [String] = []
//    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
//    @State private var shareColor = ColorManager.purple5
//    @State private var showingAlert = false
//
//    @State private var counter = 0
//
//    @State private var mood: Int = -1
//    @State private var summary = ""
//    @State private var sharedWith: [String] = []
//    @State private var colorChangeTap: String = ""
//   @State private var shareTapped: Bool = false
    //    *************************
//    @State var audioPlayer: AVAudioPlayer!
    
    
    var body: some View {
        //        ScrollView {
        
//        ZStack {
//
//            Color.gray
//                .opacity(0.2)
//                .ignoresSafeArea()
//
//            AdPlayerView(name: "sky2")
//                .ignoresSafeArea()
//                .blendMode(.screen)
            
// ********************************* if tapped ********
            
            ZStack {
                
                
//                if shareTapped {
//
//
//
//                    Color.black
//                        .ignoresSafeArea()
//                        .onAppear()
//
//
//                    AdPlayerView(name: "dramaLights")
//                        .ignoresSafeArea()
//                        .blendMode(.screen)
//
//
//
//
//
//                } else {
                    
                    Color.black
                        .opacity(0.9)
                        .ignoresSafeArea()
                    
                    AdPlayerView(name: "sky2")
                        .ignoresSafeArea()
                        .blendMode(.screen)
                    
                    AdPlayerView(name: "moonShots3")
                        .ignoresSafeArea()
                        .blendMode(.screen)
                        .opacity(0.9)
             
                
//                }
           
//*****************************************************
            VStack {
                
                ZStack {
                    
                    //        *********************** Rocket Guy ****************
                    
                    HStack {
                        
                        
                        NavigationLink(destination: RRLoveTarts3(user: user, friend: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres), label: {
                            ZStack {
                                VStack {
                                    Text("LoveTarts")
                                        .font(.system(size: 21))
                                        .foregroundColor(Color.white)
                                        .fontWeight(.bold)
                                        .rotationEffect(.degrees(-10))
                                        .multilineTextAlignment(.center)
                                        .glow(color: ColorManager .purple3, radius: 2)
                                        .opacity(0.3)
                                    
                                    
                                    
                                    Spacer ()
                                        .frame(height: 20)
                                    
                                }
                                
                                Image(systemName: "heart")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 160, height: 160)
                                    .foregroundColor(Color.cyan)
                                    .opacity(0.05)
                                    .rotationEffect(.degrees(-10))
                                    .glow(color: Color.purple, radius: 1)
                                    .shadow(color: Color.purple, radius: 2, x: 0, y: 3)
                                
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 150, height: 150)
                                    .foregroundColor(ColorManager .purple4)
                                    .opacity(0.075)
                                //                                        .rotationEffect(.degrees(10))
                                    .glow(color: Color.white, radius: 1)
                                    .shadow(color: Color.white, radius: 2, x: 0, y: 3)
                                
                            }
                        })
                        
                        
                        
                        Spacer ()
                            .frame(width: 40)
                        
                        NavigationLink(destination: RRLoveTarts(user: user, friend: user, friends: friends, groups: groups), label: {
                            ZStack {
                                VStack {
                                    Text("Friendships")
                                        .font(.system(size: 21))
                                        .foregroundColor(Color.white)
                                        .fontWeight(.bold)
//                                        .rotationEffect(.degrees(10))
                                        .multilineTextAlignment(.center)
                                        .glow(color: ColorManager .purple3, radius: 1.5)
                                        .opacity(0.7)
                                    
                                    
//
//                                    Spacer ()
//                                        .frame(height: 20)
                                    
                                }
                                
                                Image(systemName: "circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 157, height: 157)
                                    .foregroundColor(Color.purple)
                                    .opacity(0.08)
//                                    .rotationEffect(.degrees(-10))
                                    .glow(color: Color.purple, radius: 1)
                                    .shadow(color: Color.purple, radius: 2, x: 0, y: 3)
                                
                                Image(systemName: "circle.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 140, height: 140)
                                    .foregroundColor(Color.white)
                                    .opacity(0.05)
//                                    .rotationEffect(.degrees(-10))
                                    .glow(color: Color.white, radius: 1)
                                    .shadow(color: Color.white, radius: 2, x: 0, y: 3)
                                
                                Image("planet_6")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 150, height: 150)
                                    .opacity(0.5)
                                
                             
                            }
                        })
                        
                    }
                }
        
            
                        
                       
                    
                    
                // *********************************** My Vibe *************
                
                VStack {
//                    Spacer ()
//                        .frame(height: 20)
                    
                    HStack {
                        NavigationLink(
                            destination:  RR32(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                            label: {
                                
                                ZStack {
                                    Text("NOW!")
                                        .fontWeight(.regular)
                                        .frame(width: 100, height: 35)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 25))
                                        .background(Color.green)
                                        .cornerRadius(15)
                                        .glow(color: Color.white, radius: 1)
                                        .shadow(color: Color.white, radius: 2, x: 0, y: 3)
                                        .opacity(0.8)
                                    
//                                    Image("iconVibes75")
//                                        .resizable()
//                                        .scaledToFit()
//                                        .frame(width: 55, height: 55)
//                                        .foregroundColor(ColorManager .purple4)
//                                        .glow(color: ColorManager .purple5, radius: 1)
////                                        .blinking(duration: 2.0)
//                                        .opacity(0.8)
                                    
                                }
                            }
                        )}
                    
//                    VStack {
//                        Text("Seceretly share your 'Vibe'")
//                            .fontWeight(.thin)
//                            .italic()
//                            .foregroundColor(Color.white)
//                        Text("with trusted friends")
//                            .fontWeight(.thin)
//                            .italic()
//                            .foregroundColor(Color.white)
//
//                    }
                    
                }
                
                
                
                
                //  ************************************************** Carehearts **********
                
                
                VStack {
                    
                    Spacer ()
                        .frame(height: 50)
                    
                    Text("Friend having a ...")
                        .fontWeight(.bold)
//                        .frame(width: 50, height: 35)
                        .foregroundColor(ColorManager .grey2)
                        .font(.system(size: 30))
//                        .background(Color.cyan)
//                        .cornerRadius(15)
                        .glow(color: Color.white, radius: 1)
                        .shadow(color: Color.white, radius: 2, x: 0, y: 3)
                        .opacity(0.05)
                    
                    HStack {
                        NavigationLink(
                            destination:  HugPreload(user: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres),
                            label: {
                                
                                HStack {
                                    ZStack {
                                     
                                        Text("       Bad day                CareHearts")
                                            .fontWeight(.regular)
                                            .frame(width: 350, height: 35)
                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                            .font(.system(size: 25))
                                            .background(Color.cyan)
                                            .cornerRadius(15)
                                            .glow(color: Color.white, radius: 1)
                                            .shadow(color: Color.white, radius: 2, x: 0, y: 3)
                                            .opacity(0.8)
                                        
                                        
                                        Image(systemName: "heart")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 75, height: 75)
                                            .foregroundColor(Color.cyan)
                                            .opacity(0.05)
                                            .rotationEffect(.degrees(10))
                                            .glow(color: Color.purple, radius: 1)
                                            .shadow(color: Color.purple, radius: 2, x: 0, y: 3)
                                        
                                        Image(systemName: "heart.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 65, height: 65)
                                            .foregroundColor(ColorManager .purple4)
                                            .opacity(0.2)
                                            .rotationEffect(.degrees(10))
                                            .glow(color: Color.white, radius: 1)
                                            .shadow(color: Color.white, radius: 2, x: 0, y: 3)
                                        
                                        
                                        Text("send")
                                            .font(.system(size: 23))
                                            .foregroundColor(ColorManager .grey2)
                                            .fontWeight(.medium)
                                            .opacity(0.99)
                                            .rotationEffect(.degrees(10))
                                            .multilineTextAlignment(.center)
                                        
                                    }
                                }
                            })
                        }
                    
//                    Text("Sharing love & support with friends")
//                        .fontWeight(.thin)
//                        .italic()
//                        .foregroundColor(Color.white)
//
            }
                
                
                
//  ********************************************** Motivation **********
                
                VStack {
//
//                    Spacer ()
//                        .frame(height: 15)
//
                    ZStack {
                        
                        NavigationLink(
                            destination:  RRMotivationCH(user: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres),
                            label: {
                                
                                HStack {
                               
                                    ZStack {
                                        Text("   Great day                Congrats!!!    ")
                                            .fontWeight(.regular)
                                            .frame(width: 350, height: 35)
                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                            .font(.system(size: 25))
                                            .background(Color.purple)
                                            .cornerRadius(15)
                                            .glow(color: Color.white, radius: 1)
                                            .shadow(color: Color.white, radius: 2, x: 0, y: 3)
                                            .opacity(0.8)
                                           
//
//                                        Image(systemName: "star")
//                                            .resizable()
//                                            .scaledToFit()
//                                            .frame(width: 80, height: 80)
//                                            .rotationEffect(.degrees(10))
//                                            .glow(color: Color.purple, radius: 1)
//                                            .shadow(color: Color.purple, radius: 2, x: 0, y: 3)
                                        
                                        Image(systemName: "star.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 75, height: 75)
                                            .foregroundColor(ColorManager .purple4)
                                            .opacity(0.2)
                                            .rotationEffect(.degrees(10))
                                            .glow(color: Color.white, radius: 1)
                                            .shadow(color: Color.purple, radius: 2, x: 0, y: 3)
                                     
                                        VStack {
                                            Text("send")
                                                .font(.system(size: 23))
                                                .foregroundColor(ColorManager .grey2)
                                                .fontWeight(.regular)
                                                .opacity(0.99)
                                                .rotationEffect(.degrees(10))
                                                .multilineTextAlignment(.center)
                                            
                                            Spacer ()
                                                .frame(height: 7)
                                        }
                                        
                                    }

                                }
                            }
                        )}
                    }
                
                
    //  ********************************************** Received **********
                Spacer ()
                    .frame(height: 15)

//********************************** Received ************
                
                ZStack {
                    
                    NavigationLink(
                        destination:  RR56(user: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres),
                        label: {
                            VStack {
                                
                                
                                ZStack {
                                    Text("Holding Lightbeams")
                                        .fontWeight(.regular)
                                        .frame(width: 250, height: 35)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 25))
                                        .background(ColorManager .pmbc_blue)
                                        .cornerRadius(15)
                                        .glow(color: Color.white, radius: 1)
                                        .shadow(color: Color.white, radius: 2, x: 0, y: 3)
                                        .opacity(0.8)
                                    
                                    Image("")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50, height: 50)
                                        .foregroundColor(ColorManager .purple4)
                                        .glow(color: ColorManager .grey1, radius: 3)
//                                        .blinking(duration: 2.0)
                                        .opacity(0.8)
                                    
                                }
//                                Text("When your friends arn't around")
//                                    .fontWeight(.thin)
//                                    .italic()
//                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//
                            }
                        }
                    )}
                
                
                
                
                
                
                //    ****************************** OFF Planet *************
                
                VStack {

                        Spacer ()
                            .frame(height: 80)
                    
                    ZStack {
                        
                        NavigationLink(
                            destination:  RR59(user: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres),
                            label: {
                                VStack {
                                    
                                    
                                    ZStack {
                                        Text("Off Planet")
                                            .fontWeight(.regular)
                                            .frame(width: 200, height: 35)
                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                            .font(.system(size: 25))
                                            .background(ColorManager .purple4)
                                            .cornerRadius(15)
                                            .glow(color: Color.white, radius: 1)
                                            .shadow(color: Color.white, radius: 2, x: 0, y: 3)
                                            .opacity(0.8)
                                    }
                                    
                                    
                                    
                                    Spacer ()
                                        .frame(height: 10)
                                    
                                    ZStack {
                                        
                                        
                                        NavigationLink(
                                            destination:  PhotoPopView(user: user, friends: friends),
                                            label: {

                                                Image("IconPhotoNew")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 70, height: 70)
                                                    .foregroundColor(Color.purple)
//                                                    .glow(color: Color.white, radius: 0.3)
//                                                    .shadow(color: .white, radius: 1, x: 3, y: -0.5)
                                                    .opacity(0.95)

                                        })
                                    }
                                }
                            }
                        )}
                    
                    
                                            Spacer()
                                                .frame(height: 30)
                    
                }
            }
        }
    }
}


//
//        NavigationLink(
//            destination:  RR4(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
//            label: {
//
//                ZStack {
//
//                    Image("CoolGuy")
//                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 35, height: 35)
//                        .opacity(0.3)
//                        .blinking(duration: 2.0)
//
//                    Text("First Time User (TAP)")
//                        .fontWeight(.medium)
//                        .frame(width: 170, height: 22)
//                        .foregroundColor(Color.white)
//                        .font(.system(size: 15))
//                        .background(ColorManager .grey3)
//                        .cornerRadius(7)
//                        .rotationEffect(.degrees(-38))
//                        .opacity(0.5)
//                        .blinking(duration: 2.0)
//                        .shadow(color: ColorManager .purple3, radius: 2, x: 0, y: 3)
//
//
//                }
//            })
//    }
//}
