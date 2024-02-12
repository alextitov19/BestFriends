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
    
    
    
    @State private var selectedFriends: [String] = []
    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
    @State private var shareColor = ColorManager.purple5
    @State private var showingAlert = false

    @State private var counter = 0

    @State private var mood: Int = -1
    @State private var summary = ""
    @State private var sharedWith: [String] = []
    @State private var colorChangeTap: String = ""
    
   @State private var shareTapped: Bool = false
    
    @State var audioPlayer: AVAudioPlayer!
    
    
  @State private var homeData: HomeData?
    @State private var inviteClicked = false
    @State private var presentingIANs = false
    
    
    @State var animate: Bool = false
    let animation: Animation = Animation.linear(duration: 3.0).repeatForever(autoreverses: false)
    
    
    var body: some View {
     

            ZStack {
                
                
                if shareTapped {
                
                    Color.black
                        .ignoresSafeArea()
                        .onAppear()

                } else {
                    
                Color.black
                    .opacity(0.99)
                    .ignoresSafeArea()
                
                AdPlayerView(name: "sky2")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .opacity(0.99)
                    
//                    AdPlayerView(name: "moonShots3")
//                        .ignoresSafeArea()
//                        .blendMode(.screen)
//                        .opacity(0.9)
                    
                    AdPlayerView(name: "moonShots")
                        .ignoresSafeArea()
                        .blendMode(.screen)
                        .opacity(0.6)
               
                }
                
  
    
        VStack {
              
            Spacer ()
                .frame(height: 30)
            
            
              VStack {
                  
                  HStack {
                      
                      
                      Text(".")
                          .font(.system(size: 12))
                          .fontWeight(.light)
                          .multilineTextAlignment(.center)
                          .rotationEffect(.degrees(-10))
                          .blinking(duration: 2.0)
                          .foregroundColor(ColorManager .grey2)
                      
                      
                      Spacer()
                          .frame(width: 50)
                      
                      GeometryReader { geo in
                          HStack(spacing: 1) {
                              
                              
                              ZStack {

                             
                                  
                                  
                                  NavigationLink(destination:  PhotoPopView(user: user, friends: friends),
                                                 label: {
                                      
                                      Image("IconPhotoNew")
            //                              .aspectRatio(contentMode: .fit)
                                          .resizable()
                                          .scaledToFit()
                                          .frame(width: 70, height: 70)
                                          .opacity(0.7)

                                  })
                                  
                              }
                              
                              
                              Image("")
                                  .aspectRatio(contentMode: .fit)
                                  .frame(width: geo.size.width, alignment: .trailing)
                          }
                          .frame(width: geo.size.width, height: geo.size.height,
                                 alignment: animate ? .leading : .trailing)
                          
                      
//                              Image("")
//                                  .aspectRatio(contentMode: .fit)
//                                  .frame(width: geo.size.width, alignment: .leading)
//                          }
//                          .frame(width: geo.size.width, height: geo.size.height,
//                                 alignment: animate ? .trailing : .leading)
                    
                  }
                      .ignoresSafeArea()
                      .onAppear {
                          withAnimation(animation) {
                              animate.toggle()
                          }
                          
                      }
                      
                      Spacer()
                          .frame(width: 100)
//                      

                      
//                      ZStack {
//                          
//                          Image("comicBubble")
//                              .resizable()
//                              .foregroundColor(ColorManager .purple1)
//                              .frame(width: 100, height: 70)
//                              .shadow(color: ColorManager .purple1, radius: 3, x: 3, y: 3)
//                              .rotationEffect(.degrees(-10))
//                              .blinking(duration: 2.0)
//                              .opacity(0.7)
//                          
//                          VStack {
//                              
//                              Link(destination: URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSeR-uflz8Y3slsu8utnYIoN9QPKL4Dx6-sOh6r30Y8yB5I5VQ/viewform")!) {
//                                  
//                                  
//                                  
//                                  Text("your \nfeedback")
//                                      .font(.system(size: 12))
//                                      .fontWeight(.light)
//                                      .multilineTextAlignment(.center)
//                                      .rotationEffect(.degrees(-10))
//                                      .blinking(duration: 2.0)
//                                      .foregroundColor(ColorManager .grey2)
//                                  
//                            
//                                  
//                              }
//                          }
//                          }
                      }
              
//                    HStack {
                        NavigationLink(
                            destination:  RR32(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                            label: {
                                
                                ZStack {
                                    VStack {
                                    
                                    Text("today's \natmosphere \n'color' / 'vibe'")
                                        .font(.system(size: 20))
                                        .foregroundColor(Color.white)
                                        .fontWeight(.regular)
                                        .multilineTextAlignment(.center)
                                        .glow(color: ColorManager .grey2, radius: 2)
                                        .opacity(0.3)
                                    
                                    Text("(alerting friends)")
                                        .font(.system(size: 12))
                                        .italic()
                                        .foregroundColor(Color.white)
                                        .fontWeight(.light)
                                        .opacity(0.99)
                                    
                                }

                                        ZStack {
                                            Image(systemName: "circle")
                                                .resizable()
                                                .scaledToFit()
//                                                .blinking(duration: 10.0)
                                                .frame(width: 155, height: 155)
                                                .foregroundColor(Color.purple)
                                                .opacity(0.08)
                                                .glow(color: Color.white, radius: 15)
                                                .shadow(color: Color.white, radius: 10, x: -10, y: 0)
                                               
                                            
                                            Image(systemName: "circle.fill")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 140, height: 140)
                                                .foregroundColor(ColorManager .purple3)
                                                .opacity(0.1)
                                                .glow(color: ColorManager .purple3, radius: 1)
                                                .shadow(color: Color.white, radius: 2, x: 0, y: 3)
                                            
//                                            Image("planet_6")
//                                                .resizable()
//                                                .scaledToFit()
//                                                .frame(width: 150, height: 150)
//                                                .opacity(0.3)
                                        
                                        
                                        
                                        
                                    }
                                }
                            }
                        )}
//                    }
           
//*****************************************************
                
                
                
                
        VStack {
            
            HStack {
                
                
                NavigationLink(destination: RRLoveTarts5(user: user, friend: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres), label: {
                    ZStack {
                        VStack {
//                            Text("sending")
//                                .font(.system(size: 17))
//                                .italic()
//                                .foregroundColor(Color.white)
//                                .fontWeight(.regular)
//                                .rotationEffect(.degrees(-10))
//                                .multilineTextAlignment(.center)
//                                .glow(color: ColorManager .purple3, radius: 2)
//                                .opacity(0.3)
                            
                            Spacer ()
                                .frame(height: 5)
                            
                            Text("LoveTarts")
                                .font(.system(size: 21))
                                .foregroundColor(Color.purple)
                                .fontWeight(.regular)
                                .rotationEffect(.degrees(-10))
                                .multilineTextAlignment(.center)
                                .glow(color: Color.purple, radius: 2)
                                .opacity(0.9)
                            
                            
                            
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
                            .foregroundColor(Color.cyan)
                            .opacity(0.2)
                        //                                        .rotationEffect(.degrees(10))
//                            .glow(color: Color.white, radius: 1)
//                            .shadow(color: Color.white, radius: 2, x: 0, y: 3)
                        
                    }
                })
                
                
                
                Spacer ()
                    .frame(width: 40)
                
                NavigationLink(destination: RRLoveTarts(user: user, friend: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres), label: {
                    ZStack {
                        VStack {
                            
                            Text("  sending")
                                .font(.system(size: 17))
                                .italic()
                                .foregroundColor(Color.white)
                                .fontWeight(.regular)
                                .rotationEffect(.degrees(10))
                                .multilineTextAlignment(.center)
                                .glow(color: ColorManager .purple3, radius: 2)
                                .opacity(0.9)
                            
                            Spacer ()
                                .frame(height: 4)
                            
                            Text("CareHearts")
                                .font(.system(size: 20))
                                .foregroundColor(Color.cyan)
                                .fontWeight(.regular)
                                .rotationEffect(.degrees(10))
                                .multilineTextAlignment(.center)
                                .glow(color: Color.cyan, radius: 1)
                                .opacity(0.99)
                            
                            
                            
                            Spacer ()
                                .frame(height: 20)
                            
                        }
                        
                        Image(systemName: "heart")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 160, height: 160)
                            .foregroundColor(Color.cyan)
                            .opacity(0.05)
                            .rotationEffect(.degrees(10))
                            .glow(color: Color.purple, radius: 1)
                            .shadow(color: Color.purple, radius: 2, x: 0, y: 3)
                        
                        Image(systemName: "heart.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                            .foregroundColor(ColorManager .grey3)
                            .opacity(0.03)
                            .glow(color: ColorManager .grey3, radius: 1)
                            .shadow(color: Color.white, radius: 2, x: 0, y: 3)
                        
                    }
                })
                
            }
        }
        
// ************************************************* Receiving CHs *****
        
        
        ZStack {
            
            NavigationLink(
                destination:  RR56(user: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres),
                label: {
                    VStack {
                        
                        
                        ZStack {
                            Text("Receiving")
                                .fontWeight(.regular)
                                .frame(width: 200, height: 35)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 25))
                            
                                .background(ColorManager .purple4)
                                .cornerRadius(15)
                                .glow(color: Color.white, radius: 1)
                                .shadow(color: Color.white, radius: 2, x: 0, y: 3)
                                .opacity(0.6)
                            
//                                .background(ColorManager .pmbc_blue)
//                                .cornerRadius(15)
//                                .glow(color: Color.white, radius: 1)
//                                .shadow(color: Color.white, radius: 2, x: 0, y: 3)
//                                .opacity(0.8)
                            
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
        
        
        
        
        
        
//  ********************************************** Motivation **********
                
                VStack {

                    Spacer ()
                        .frame(height: 70)

                    ZStack {
                        
                        NavigationLink(
                            destination:  RRMotivationCH(user: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres),
                            label: {
                                
                                HStack {
                               
                                    ZStack {
                                        Text("my BIG day!")
                                            .fontWeight(.regular)
                                            .frame(width: 150, height: 35)
                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                            .font(.system(size: 20))
                                            .background(Color.purple)
                                            .cornerRadius(15)
                                            .glow(color: Color.white, radius: 1)
                                            .shadow(color: Color.white, radius: 2, x: 0, y: 3)
                                            .opacity(0.6)
                                           
//
//                                        Image(systemName: "star")
//                                            .resizable()
//                                            .scaledToFit()
//                                            .frame(width: 80, height: 80)
//                                            .rotationEffect(.degrees(10))
//                                            .glow(color: Color.purple, radius: 1)
//                                            .shadow(color: Color.purple, radius: 2, x: 0, y: 3)
                                        
//                                        Image(systemName: "star.fill")
//                                            .resizable()
//                                            .scaledToFit()
//                                            .frame(width: 75, height: 75)
//                                            .foregroundColor(ColorManager .purple4)
//                                            .opacity(0.2)
//                                            .rotationEffect(.degrees(10))
//                                            .glow(color: Color.white, radius: 1)
//                                            .shadow(color: Color.purple, radius: 2, x: 0, y: 3)
//
//                                        VStack {
//                                            Text("Say")
//                                                .font(.system(size: 21))
//                                                .foregroundColor(ColorManager .grey3)
//                                                .fontWeight(.medium)
//                                                .opacity(0.99)
//                                                .rotationEffect(.degrees(10))
//                                                .multilineTextAlignment(.center)
//
////                                            Spacer ()
////                                                .frame(height: 7)
//                                        }
                                        
                                    }

                                }
                            }
                        )}
                    }
                
 

                VStack {

                        Spacer ()
                            .frame(height: 23)
                    
                    ZStack {
                        
                        NavigationLink(
                            destination:  RR59(user: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres),
                            label: {
                                VStack {
                                    
                                    
                                    ZStack {
                                        Text("Orbiting Jupitar")
                                            .fontWeight(.regular)
                                            .frame(width: 200, height: 35)
                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                            .font(.system(size: 25))
                                        
                                            .background(ColorManager .pmbc_blue)
                                            .cornerRadius(15)
                                            .glow(color: Color.white, radius: 1)
                                            .shadow(color: Color.white, radius: 2, x: 0, y: 3)
                                            .opacity(0.8)
                                        
                                        
//                                        **********************
//                                            .background(ColorManager .purple4)
//                                            .cornerRadius(15)
//                                            .glow(color: Color.white, radius: 1)
//                                            .shadow(color: Color.white, radius: 2, x: 0, y: 3)
//                                            .opacity(0.8)
                                    }
                                    
//  ******************************
      
                                    
//**********************************************
                                    
                                    Spacer ()
                                        .frame(height: 90)
                                    
//                                    ZStack {
//                                        
//                                        
//                                        NavigationLink(
//                                            destination:  PhotoPopView(user: user, friends: friends),
//                                            label: {
//
//                                                Image("IconPhotoNew")
//                                                    .resizable()
//                                                    .scaledToFit()
//                                                    .frame(width: 70, height: 70)
//                                                    .foregroundColor(ColorManager .purple3)
//                                                    .glow(color: ColorManager .purple4, radius: 0.2)
//                                                    .shadow(color: .white, radius: 1, x: 3, y: -0.5)
//                                                    .opacity(0.7)
//
//                                        })
//                                    }
                                }
                            }
                        )}
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
