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
            
            
//                        ColorManager.purple7
//                            .ignoresSafeArea()
            //
            //            ColorManager.purple7
            //                .opacity(0.6)
            //                .ignoresSafeArea()
            
            Image("FHBackground")
                .ignoresSafeArea()
                .scaledToFit()

                
            AdPlayerView(name: "Galaxy2")
                .ignoresSafeArea()
                .blendMode(.screen)


            ZStack{

//                Spacer ()
//                    .frame(height: 500)

                    NavigationLink(destination: Step2_FightLandingView(user: user, friends: friends), label: {
                        HugCircle (color: Color.purple, friendName: "When \nyou're ready to \nreach out to try to fix this \n\nTAP Here...")
                    })
                    .offset(x: showItems ? 20 : 0, y: showItems ? 50: 0)
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
                            HugCircle (color: ColorManager .purple5, friendName: "ask \nfriends for \n CareHearts \n\nTAP Here...")
                        })
                        .offset(x: showItems ? 130 : 0, y: showItems ? -300: 0)
                        .shadow(color: ColorManager .grey1, radius: 20, x: 10, y: 10)
                        .opacity(0.9)
                
                
                NavigationLink(destination: EmptyView(), label: {
                            HugCircle (color: ColorManager .purple5, friendName: "")
                        })
                        .offset(x: showItems ? 300 : 0, y: showItems ? -400: 0)
                        .shadow(color: ColorManager .grey1, radius: 20, x: 10, y: 10)
                        .opacity(0.9)
           
                
//                NavigationLink(destination: EmptyView(), label: {
//                    HugCircle (color: ColorManager .grey3, friendName: "sharp words \nerase all the nice words \nyou've ever said")
//                })
//                .offset(x: showItems ? -100 : 0, y: showItems ? 100: 0)
//                //                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
//                .opacity(0.9)
//                
//                NavigationLink(destination: EmptyView(), label: {
//                    HugCircle (color: ColorManager .grey3, friendName: "Never allow someone \nto be your prioity while \nyou are their option")
//                })
//                .offset(x: showItems ? 90 : 0, y: showItems ? 170: 0)
//                //                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
//                .opacity(0.75)
                
                
                VStack {


                 
                    
                        
                 
                        
                   
                    
                    
                    NavigationLink(destination: EmptyView(), label: {
                        HugCircle (color: ColorManager .grey3, friendName: "Sometimes your heart \nneeds more time to accept what \nyou mind already knows")
                    })
                    .offset(x: showItems ? -400 : 0, y: showItems ? 400: 0)
                    //                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                    .opacity(0.9)
                    
                
                    
                NavigationLink(destination: EmptyView(), label: {
                    HugCircle (color: ColorManager .grey3, friendName: "The hardest part of letting go \nis realizing the other \nperson already did")
                })
                .offset(x: showItems ? -400 : 0, y: showItems ? -600: 0)
                //                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                .opacity(0.6)
                
                
//                NavigationLink(destination: EmptyView(), label: {
//                    HugCircle (color: ColorManager .grey3, friendName: "The way they leave \ntells you everything")
//                })
//                .offset(x: showItems ? -300 : 0, y: showItems ? 325: 0)
//                //                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
//                .opacity(0.9)
                    
                 
//                    NavigationLink(destination: EmptyView(), label: {
//                        HugCircle (color: ColorManager .grey3, friendName: "Tears dry on their own")
//                    })
//                    .offset(x: showItems ? -300 : 0, y: showItems ? 325: 0)
//                    //                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
//                    .opacity(0.9)
//

                    NavigationLink(destination: EmptyView(), label: {
                        HugCircle (color: ColorManager .grey3, friendName: "sharp words \nerase all the nice words \nyou've ever said")
                    })
                    .offset(x: showItems ? 120 : 0, y: showItems ? 100: 0)
                    //                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                    .opacity(0.6)
                    
                    NavigationLink(destination: EmptyView(), label: {
                        HugCircle (color: ColorManager .grey3, friendName: "Never allow someone \nto be your prioity while \nyou are their option")
                    })
                    .offset(x: showItems ? -130 : 0, y: showItems ? 310: 0)
                    //                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                    .opacity(0.7)
                    

                    Spacer ()
                        .frame(height: 15)
                    
                    ZStack {
                        
                       
                        
                        Image(systemName: "circle.fill")
                            .resizable()
                            .foregroundColor(Color.purple)
                            .frame(width: 90, height: 90)
                        //                    .blur(radius: 2)
                            .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50) .opacity(0.99)
                            .opacity(0.70)
                       
                        VStack {
                            Text("Maybe we \ncan help")
                                .font(.system(size: 13, weight: .light))
                            //                            .italic()
                                .fontWeight(.light)
                                .foregroundColor(ColorManager .grey4)
                                .multilineTextAlignment(.center)
                            
                            
                            Text("TAP")
                                .font(.system(size: 30, weight: .light))
                            //                            .italic()
                                .fontWeight(.light)
                                .foregroundColor(ColorManager .grey4)
                                .multilineTextAlignment(.center)
                            
                        }
                    }
                        
                        VStack {

                            
                            Link(destination: URL(string: "https://socialtechlabs.com/understanding-the-why/")!) {
                                
                                Text("Taking a hard look \nat this relationship")
                                    .fontWeight(.thin)
                                    .frame(width: 300, height: 80)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 26))
                                    .background(ColorManager.grey3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            }
                            Spacer()
                                .frame(height: 40)
                            
                            Spacer ()
                                .frame(height: 200)


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

