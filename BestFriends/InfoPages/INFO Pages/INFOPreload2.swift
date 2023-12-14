//
//  INFOPreload2.swift
//  BestFriends
//
//  Created by Social Tech on 11/8/22.
//
//
//import Foundation
//import SwiftUI
//import AVKit
//
//struct Step4_NuclearOption: View {
//
//    let user: User
//    let friends: [User]
//    let groups: [Group]
//    let atmosphere: Atmosphere
//    let friendAtmospheres: [Atmosphere]
//
//    @State private var showItems: Bool = false
//    @State private var offset: CGFloat = 200.0
//
//
//    var body: some View {
//
//        ZStack {
//
//            ColorManager .purple4
//                .opacity(0.6)
//                .ignoresSafeArea()
//
//
////            Image("FHBackground")
////                .resizable()
////                .scaledToFill()
////                .edgesIgnoringSafeArea(.all)
//
//            Color.black
//               .opacity(0.9)
//                .ignoresSafeArea()
//
//
//            AdPlayerView(name: "PhotoPOP2")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//
//
//
//
//            ZStack{
//
////                Step2_FightLandingView(user: user, friends: friends
//
//                NavigationLink(destination: CH14(user: user, friend: user, friends: friends, groups: groups), label: {
//                        HugCircle (color: Color.purple, friendName: "Fixing this while \nkeepin' it REAL... \n\nTAP here")
//                        .blinking(duration: 2.0)
//                    })
//                    .offset(x: showItems ? 0 : 0, y: showItems ? -20: 0)
//                    .shadow(color: ColorManager .purple1, radius: 30, x: 10, y: 10)
////                    .opacity(0.6)
//                    .opacity(0.8)
//
//
//                        NavigationLink(destination: BreathInView(), label: {
//                            HugCircle (color: ColorManager .purple3, friendName: "Slow down, \ntake a Breath \n\nTAP")
//                        })
//                        .offset(x: showItems ? 120 : 0, y: showItems ? 200: 0)
//                        .shadow(color: ColorManager .grey1, radius: 20, x: 10, y: 10)
//                        .opacity(0.7)
//
//
////                NavigationLink(destination: AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups)
//                NavigationLink(destination: EmptyView(), label: {
//                            HugCircle (color: ColorManager .grey2, friendName: "")
//                        })
//                        .offset(x: showItems ? 430 : 0, y: showItems ? -300: 0)
//                        .shadow(color: ColorManager .grey1, radius: 20, x: 10, y: 10)
//                        .opacity(0.9)
//
//
////                NavigationLink(destination: EmptyView(), label: {
////                            HugCircle (color: ColorManager .purple2, friendName: "sharp words \nerase all the nice words \nyou've ever said")
////                        })
////                        .offset(x: showItems ? 400 : 0, y: showItems ? -400: 0)
//////                        .shadow(color: ColorManager .grey1, radius: 20, x: 10, y: 10)
////                        .opacity(0.99)
//
//
//                VStack {
//
//                    Spacer ()
//                        .frame(height: 15)
//
//                    ZStack {
//
////                        NavigationLink(destination: EmptyView(), label: {
////                            HugCircle (color: ColorManager .grey3, friendName: "")
////                        })
////                        .offset(x: showItems ? -350 : 0, y: showItems ? 350: 0)
////                        .shadow(color: ColorManager .grey1, radius: 20, x: 10, y: 10)
////                        .opacity(0.6)
//
//                        Image(systemName: "circle.fill")
//                            .resizable()
//                            .foregroundColor(Color.orange)
//                            .frame(width: 180, height: 180)
//                        //                    .blur(radius: 2)
////                            .shadow(color: Color .white, radius: 65, x: 30, y: 50) .opacity(0.99)
//                            .shadow(color: ColorManager .grey1, radius: 20, x: 10, y: 10)
//                            .opacity(0.90)
////                            .blinking(duration: 2.0)
//
//                        VStack {
//                            Text("Big Fight")
//                                .font(.system(size: 20, weight: .light))
//                                .fontWeight(.light)
//                                .foregroundColor(ColorManager .grey1)
//                                .multilineTextAlignment(.center)
//
//                            Text("Not talking to each other?")
//                                .font(.system(size: 13, weight: .light))
//                                .fontWeight(.light)
//                                .foregroundColor(ColorManager .grey1)
//                                .multilineTextAlignment(.center)
//
//                            Spacer ()
//                                .frame(height: 15)
//
//                            Text("TAP here")
//                                .font(.system(size: 20, weight: .light))
//                                .fontWeight(.light)
//                                .foregroundColor(ColorManager .grey1)
//                                .multilineTextAlignment(.center)
////                                .blinking(duration: 2.0)
//                        }
//                    }
//
//                        VStack {
//                            Spacer ()
//                                .frame(height: 290)
////
//
//
//                            ZStack {
//
//                                Image(systemName: "circle.fill")
//                                    .resizable()
//                                    .foregroundColor(Color.orange)
//                                    .frame(width: 100, height: 100)
////                                    .rotationEffect(.degrees(7))
//                                    .shadow(color: .white, radius: 2, x: -2, y: 2)
//                                    .shadow(color: Color.white, radius: 2, x: 0, y: 2)
//                                    .opacity(0.9)
//
//
//                                NavigationLink( destination:  PhotoPopFGPreload(user: user, friend: user, friends: friends, groups: groups),
//                                                label: {
//                                    Text("Let's \nMeetup")
//                                        .fontWeight(.light)
//                                        .foregroundColor(Color.white)
//                                        .font(.system(size: 15))
////                                        .rotationEffect(.degrees(7))
////                                        .blinking(duration: 2.0)
//                                        .opacity(0.85)
//
//                                })
//
//                            }
////
////                            NavigationLink(destination: CH13(user: user, friends: friends),
////                                           label: {
////                                Text("Still haven't heard back")
////                                    .fontWeight(.light)
////                                    .frame(width: 250, height: 40)
////                                    .foregroundColor(Color.white)
////                                    .font(.system(size: 20))
////                                    .background(ColorManager .grey3)
////                                    .cornerRadius(10)
////                                    .shadow(color: Color.white, radius: 2, x: 0, y: 2)
////
////                            })
//
//
//                    VStack {
//
//
//
//                        VStack {
//
//                                ZStack {
//
//                                    Image(systemName: "circle.fill")
//                                        .resizable()
//                                        .foregroundColor(Color.orange)
//                                        .frame(width: 100, height: 100)
//                                        .rotationEffect(.degrees(7))
//                                        .shadow(color: .white, radius: 2, x: -2, y: 2)
//                                        .shadow(color: Color.white, radius: 2, x: 0, y: 2)
//                                        .opacity(0.9)
//
//                                    Link(destination: URL(string: "https://socialtechlabs.com/understanding-the-why/")!) {
//
//                                        Text("Keep \nrelationship?")
//                                            .fontWeight(.light)
//                                            .foregroundColor(Color.white)
//                                            .font(.system(size: 15))
////                                            .rotationEffect(.degrees(-7))
//                                            .opacity(0.85)
//
//                                    }
//
//
//                        VStack {
//
//                            HStack {
//
//                                Image(systemName: "circle")
//                                    .resizable()
//                                    .foregroundColor(Color.blue)
//                                    .frame(width: 10, height: 10)
//                                    .rotationEffect(.degrees(7))
//                                    .shadow(color: .white, radius: 2, x: -2, y: 2)
//                                    .shadow(color: Color.white, radius: 2, x: 0, y: 2)
//                                    .opacity(0.5)
//
//                                Spacer ()
//                                    .frame(width: 300)
//
//
//                                ZStack {
//
//                                    Image(systemName: "cirle.fill")
//                                        .resizable()
//                                        .foregroundColor(Color.orange)
//                                        .frame(width: 80, height: 80)
//                                        .rotationEffect(.degrees(7))
//                                        .shadow(color: .white, radius: 2, x: -2, y: 2)
//                                        .shadow(color: Color.white, radius: 2, x: 0, y: 2)
//                                        .opacity(0.9)
//
//
//                                    NavigationLink( destination: CH15(user: user, friends: friends),
//                                                    label: {
//                                        Text("Hurt \nFeelings?")
//                                            .fontWeight(.light)
//                                            .foregroundColor(Color.white)
//                                            .font(.system(size: 15))
//                                            .rotationEffect(.degrees(7))
//                                            .blinking(duration: 2.0)
//                                            .opacity(0.85)
//
//                                    })
//
//                                }
//                             }
//                        }
//
//                    }
//
//                }
//
//            }
//
//        }
//  }
//
//
//
//                    .onTapGesture {
//                        withAnimation {
//                            self.showItems.toggle()
//                        }
//                        print("tap function is working")
//                    }
//
//                    .animation(Animation.easeInOut(duration: 1.7), value: showItems)
//
//                }
//            }
//        }
//
//
//        struct HugCircle: View {
//            var color: Color
//            var friendName: String
//
//            var body: some View {
//
//                ZStack {
//
//                    Image(systemName: "circle.fill")
//                        .resizable()
//                        .foregroundColor(color)
//                    //                            .foregroundColor(ColorManager .purple2)
//                        .frame(width: 160, height: 160)
////                        .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
//
//                    Text(friendName)
////                        .fontWeight(.light)
//                        .font(.system(size: 15, weight: .light))
//                        .italic()
//                        .foregroundColor(.white)
//
//                }
//            }
//        }
//
//
//    }




import Foundation
import SwiftUI


struct INFOPreload2: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    
    var body: some View {
        ZStack {
            
            ColorManager .purple1
                .ignoresSafeArea()
                .onAppear()
            
            //
            //            AdPlayerView(name: "dramaLights")
            //                .ignoresSafeArea()
            //                .blendMode(.screen)
            //                .opacity(0.75)
            
            
            //            Circle()
            //                .frame(width: 300, height: 300)
            //                .foregroundColor(ColorManager.purple2)
            //                .offset(x: 200, y: -450)
            
            Circle()
                .frame(width: 300, height: 300)
                .foregroundColor(ColorManager.purple3)
                .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                .offset(x: -200, y: 400)
            
            
            
            
            
            VStack {
                
                
                VStack {
                    
                    //                    HStack {
                    //
                    //                        Text("Launch Party")
                    //                            .font(.system(size: 35))
                    //                            .fontWeight(.thin)
                    //                            .foregroundColor(ColorManager .purple5)
                    //                            .multilineTextAlignment(.center)
                    //
                    //                    }
                    //
                    HStack {
                        VStack {
                            
                            Text("Launch")
                                .font(.system(size: 35, weight: .ultraLight))
                                .foregroundColor(ColorManager .purple7)
                            
                            
                            Text("Party")
                                .font(.system(size: 35, weight: .ultraLight))
                                .foregroundColor(ColorManager .purple7)
                            
                        }
                        
                        Image("pizzaStickers")
                            .resizable()
                            .frame(width: 75, height: 75)
                            .cornerRadius(10)
                        
                    }
                    
                    
                    
                    
                    
                    
                    Text("stickers & pizza")
                        .font(.system(size: 17))
                        .italic()
                    
                        .fontWeight(.thin)
                        .foregroundColor(ColorManager .purple5)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 25)
                    
                    Text("Harvard _ 02.17.23")
                        .font(.system(size: 17))
                        .fontWeight(.thin)
                        .foregroundColor(Color .black)
                        .multilineTextAlignment(.leading)
                    
                    Text("(our initial public launch)")
                        .font(.system(size: 17))
                        .italic()
                        .fontWeight(.thin)
                        .foregroundColor(Color .black)
                        .multilineTextAlignment(.leading)
                    
                    
                    Spacer()
                        .frame(height: 15)
                    
                    //                    Text("MIT _ TBD")
                    //                        .font(.system(size: 17))
                    //                        .fontWeight(.thin)
                    //                        .foregroundColor(Color .black)
                    //                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                        .frame(height: 5)
                    
                    VStack {
                        
                        Text("Stanford _ this summer")
                            .font(.system(size: 17))
                            .fontWeight(.thin)
                            .foregroundColor(Color .black)
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                            .frame(height: 5)
                        
                        
                        Text("Northwestern _ TBD")
                            .font(.system(size: 17))
                            .fontWeight(.thin)
                            .foregroundColor(Color .black)
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                            .frame(height: 5)
                        
                        
                        VStack {
                            
                            Text("Univ. of Washington _ TBD")
                                .font(.system(size: 17))
                                .fontWeight(.thin)
                                .foregroundColor(Color .black)
                                .multilineTextAlignment(.leading)
                            
                            
                            
                            Spacer()
                                .frame(height: 5)
                            
                            Text("George Washington _ TBD")
                                .font(.system(size: 17))
                                .fontWeight(.thin)
                                .foregroundColor(Color .black)
                                .multilineTextAlignment(.leading)
                            VStack {
                                
                                Spacer()
                                    .frame(height: 5)
                                
                                Text("Exavior Boarding School _ May")
                                    .font(.system(size: 17))
                                    .fontWeight(.thin)
                                    .foregroundColor(Color .black)
                                    .multilineTextAlignment(.leading)
                                
                                Spacer()
                                    .frame(height: 5)
                                
                                Text("George Mason _ TBD")
                                    .font(.system(size: 17))
                                    .fontWeight(.thin)
                                    .foregroundColor(Color .black)
                                    .multilineTextAlignment(.leading)
                                
                                Spacer()
                                    .frame(height: 5)
//
//                                Text("RIT _ May 23")
//                                    .font(.system(size: 17))
//                                    .fontWeight(.thin)
//                                    .foregroundColor(Color .black)
//                                    .multilineTextAlignment(.leading)
//
                                
//
//                                Text("(We are not affiliated with")
//                                    .font(.system(size: 13))
//                                    .italic()
//                                    .fontWeight(.thin)
//                                    .foregroundColor(Color.black)
//                                    .multilineTextAlignment(.center)
//
//                                Text("above listed universities)")
//                                    .font(.system(size: 13))
//                                    .italic()
//                                    .fontWeight(.thin)
//                                    .foregroundColor(Color.black)
//                                    .multilineTextAlignment(.center)
//
//
//
                                
                                Spacer()
                                    .frame(height: 10)
                                
                                VStack {
                                    ZStack {
                                        
                                        Image(systemName: "heart.fill")
                                            .resizable()
                                            .foregroundColor(ColorManager .purple2)
                                            .frame(width: 240, height: 200)
                                            .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50)
                                        
                                        //
                                        
                                        VStack {
                                            
                                            Text("spnosored by")
                                                .fontWeight(.thin)
                                                .italic()
                                                .frame(width: 120, height: 30)
                                                .foregroundColor(Color .black)
                                                .font(.system(size: 15))
                                                .background(ColorManager .purple2)
                                            
                                            
                                            Link(destination: URL(string: "https://rewritingthecode.org")!) {
                                                
                                                Text("Rewriting the Code")
                                                    .fontWeight(.thin)
                                                    .frame(width: 170, height: 30)
                                                    .foregroundColor(Color .white)
//                                                                                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                    .font(.system(size: 20))
                                                    .background(ColorManager .purple5)
                                                    .cornerRadius(10)
                                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                            }
                                            
                                            
                                            
                                            //
                                            //                                            NavigationLink(
                                            //                                                destination: SaySomethingNice6(user: user, atmosphere: atmosphere, friends: friends, groups: groups, friendAtmospheres: friendAtmospheres),
                                            //                                                label: {
                                            //                                                    VStack {
                                            //
                                            
                                            
                                            
                                            Spacer()
                                                .frame(height: 7)
                                            //                                                        Text("Re-writing the Code")
                                            //                                                            .fontWeight(.light)
                                            //                                                            .frame(width: 170, height: 30)
                                            //                                                            .foregroundColor(Color .green)
                                            //                                                            .font(.system(size: 20))
                                            //
                                            //                                                            .background(ColorManager .purple5)
                                            
                                            
                                        }
                                    }
                                    
                                    
                                    //                                            )}
                                    
                                    Spacer()
                                        .frame(height: 15)
                                    //
                                    //                                    Text("Welcome everyone from the")
                                    //                                        .font(.system(size: 25))
                                    //                                        .fontWeight(.thin)
                                    //                                        .foregroundColor(ColorManager .purple5)
                                    //                                        .multilineTextAlignment(.center)
                                    //
                                    //
                                    //
                                    //                                    Text("Harvard WECode 2023")
                                    //                                        .font(.system(size: 25))
                                    //                                        .fontWeight(.thin)
                                    //                                        .foregroundColor(ColorManager .purple5)
                                    //                                        .multilineTextAlignment(.center)
                                    
                                    //
                                    //                                        Text("Email: Admin@SocialTechLabs.com")
                                    //                                            .fontWeight(.thin)
                                    //                                            .frame(width: 250, height: 25)
                                    //                                            .foregroundColor(Color .blue)
                                    //                                            .font(.system(size: 15))
                                    //                                            .background(ColorManager .grey1)
                                    //                                            .cornerRadius(4)
                                    //
                                    //
                                    
                                    
                                    
                                    
                                    
                                    Spacer()
                                        .frame(height: 50)
                                    
                                    
                                }
                                
                            }
                        }
                        
                    }
                }
            }
        }
    }
    
}
