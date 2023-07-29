//
//  NuclearOption.swift
//  BestFriends
//
//  Created by Social Tech on 4/28/22.
//


import Foundation
import SwiftUI
import AVKit

struct Step4_NuclearOption: View {

    let user: User
    let friends: [User]
    let groups: [Group]
    let atmosphere: Atmosphere
    let friendAtmospheres: [Atmosphere]

    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0


    var body: some View {

        ZStack {
            
            ColorManager .purple4
                .opacity(0.6)
                .ignoresSafeArea()
            
            
            Image("FHBackground")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
//            Image("FHBackground")
//                .ignoresSafeArea()
//                .scaledToFit()
//
//
//            AdPlayerView(name: "Galaxy2")
//                .ignoresSafeArea()
//                .blendMode(.screen)


            ZStack{



                    NavigationLink(destination: Step2_FightLandingView(user: user, friends: friends), label: {
                        HugCircle (color: Color.purple, friendName: "When \nyou're ready to \nreach out to try to fix this \n\nTAP Here...")
                    })
                    .offset(x: showItems ? 0 : 0, y: showItems ? 80: 0)
                    .shadow(color: ColorManager .purple1, radius: 30, x: 10, y: 10)
//                    .opacity(0.6)
                    .opacity(0.8)

                
                        NavigationLink(destination: BreathInView(), label: {
                            HugCircle (color: ColorManager .purple3, friendName: "just Breathe \n\nTAP Here...")
                        })
                        .offset(x: showItems ? -90 : 0, y: showItems ? -200: 0)
                        .shadow(color: ColorManager .grey1, radius: 20, x: 10, y: 10)
                        .opacity(0.85)
                        
               
                
                NavigationLink(destination: AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups), label: {
                            HugCircle (color: ColorManager .grey2, friendName: "ask \nfriends for \n CareHearts \n\nTAP Here...")
                        })
                        .offset(x: showItems ? 130 : 0, y: showItems ? -300: 0)
                        .shadow(color: ColorManager .grey1, radius: 20, x: 10, y: 10)
                        .opacity(0.9)
                
                
                NavigationLink(destination: EmptyView(), label: {
                            HugCircle (color: ColorManager .purple2, friendName: "")
                        })
                        .offset(x: showItems ? 400 : 0, y: showItems ? -400: 0)
                        .shadow(color: ColorManager .grey1, radius: 20, x: 10, y: 10)
                        .opacity(0.99)
           

                VStack {
//
//                    NavigationLink(destination: EmptyView(), label: {
//                        HugCircle (color: ColorManager .grey3, friendName: "sharp words \nerase all the nice words \nyou've ever said")
//                    })
//                    .offset(x: showItems ? -350 : 0, y: showItems ? 350: 0)
//                    //                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
//                    .opacity(0.6)
//                    

                    Spacer ()
                        .frame(height: 15)
                    
                    ZStack {
                        
                        NavigationLink(destination: EmptyView(), label: {
                            HugCircle (color: ColorManager .grey3, friendName: "sharp words \nerase all the nice words \nyou've ever said")
                        })
                        .offset(x: showItems ? -350 : 0, y: showItems ? 350: 0)
                        //                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                        .opacity(0.6)
                        
                        Image(systemName: "circle.fill")
                            .resizable()
                            .foregroundColor(Color.cyan)
                            .frame(width: 140, height: 100)
                        //                    .blur(radius: 2)
                            .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50) .opacity(0.99)
                            .opacity(0.70)
                       
                        VStack {
                            Text("Big Fight")
                                .font(.system(size: 20, weight: .light))
                                .fontWeight(.light)
                                .foregroundColor(ColorManager .grey4)
                                .multilineTextAlignment(.center)
                            
                            Text("Maybe we can help")
                                .font(.system(size: 13, weight: .light))
                                .fontWeight(.light)
                                .foregroundColor(ColorManager .grey4)
                                .multilineTextAlignment(.center)
                            
                            
                            Text("TAP")
                                .font(.system(size: 30, weight: .light))
                                .fontWeight(.light)
                                .foregroundColor(ColorManager .grey4)
                                .multilineTextAlignment(.center)
                            
                        }
                    }
                        
                        VStack {
                            Spacer ()
                                .frame(height: 235)
                            
                            Link(destination: URL(string: "https://socialtechlabs.com/understanding-the-why/")!) {
                                
                                Text("Taking a hard look \nat this relationship")
                                    .fontWeight(.thin)
                                    .frame(width: 300, height: 80)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 26))
                                    .background(Color.orange)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            }
                         
                            
                            Spacer ()
                                .frame(height: 100)


                        }
                    }



                    .onTapGesture {
                        withAnimation {
                            self.showItems.toggle()
                        }
                        print("tap function is working")
                    }

                    .animation(Animation.easeInOut(duration: 1.7), value: showItems)

                }
            }
        }


        struct HugCircle: View {
            var color: Color
            var friendName: String

            var body: some View {

                ZStack {

                    Image(systemName: "heart.fill")
                        .resizable()
                        .foregroundColor(color)
                    //                            .foregroundColor(ColorManager .purple2)
                        .frame(width: 220, height: 160)
//                        .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)

                    Text(friendName)
//                        .fontWeight(.light)
                        .font(.system(size: 15, weight: .light))
                        .italic()
                        .foregroundColor(.white)

                }
            }
        }


    }

