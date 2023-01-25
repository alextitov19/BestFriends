//
//  DreamVaultView.swift
//  BestFriends
//
//  Created by Social Tech on 9/13/22.
//



import Foundation
import SwiftUI
import AVKit

struct DreamVaultView: View {
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0
    
    
    var body: some View {
        
        ZStack {
            
            //            Image("purpleBackground")
            //                .resizable()
            //                .ignoresSafeArea()
            //                .scaledToFill()
            Color .black
                .ignoresSafeArea()
                .onAppear()
            
            AdPlayerView(name: "PlanetSound")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            
            ZStack {
                
                //            NavigationLink(destination: BeSinger(user: user), label: { WhoFightingCircle (color: .orange, friendName: "'I' wanna \nbe a \nsinger")
                //            })
                //                .offset(x: showItems ? 150 : 0, y: showItems ? -140: 0)
                
                NavigationLink(destination: DreamSteps(), label: { WhoFightingCircle (color: .orange, friendName: "dream \nsteps")
                })
                .offset(x: showItems ? 0 : 0, y: showItems ? 250: 0)
                
             
                    //            NavigationLink(destination: HorizonHomeView(user: user, friends: friends, atmosphere: atmosphere), label: {
                    //                WhoFightingCircle (color: Color .green, friendName: "Let's \nDo This")
                    //            })
                    //                .offset(x: showItems ? 0 : 0, y: showItems ? 290: 0)
                    
                    
                    NavigationLink(destination: DreamMap(), label: { WhoFightingCircle (color: ColorManager.purple1, friendName: "passing \nthe next \nstar")
                    })
                    .offset(x: showItems ? -25 : 0, y: showItems ? -345: 0)
                    
                    
                    //            NavigationLink(destination: EverybodyOk(user: user), label: {
                    //                WhoFightingCircle (color: ColorManager.pmbc_green, friendName: "neuro- \nscience")
                    //            })
                    //               .offset(x: showItems ? 0 : 0, y: showItems ? 215: 0)
                    
                    
                    NavigationLink(destination: AudioCode(), label: {
                        WhoFightingCircle (color: ColorManager.purple2, friendName: "off the \nnarrow \nedge")
                    })
                    .offset(x: showItems ? -140 : 0, y: showItems ? -275: 0)
                    
                    
                    NavigationLink(destination: DreamsWeDare(), label: {
                        WhoFightingCircle (color: ColorManager.purple3, friendName: "dreams \nwe \ndare")
                    })
                    .offset(x: showItems ? 50 : 0, y: showItems ? -190: 0)
                    
                    NavigationLink(destination: NewPoems(user: user, friends: friends, groups: groups), label: {
                        WhoFightingCircle (color: ColorManager.orange2, friendName: "new poems")
                    })
                    .offset(x: showItems ? -120 : 0, y: showItems ? -190: 0)
                    
                    NavigationLink(destination: TwinkieDream(user: user, friends: friends), label: {
                        DreamCircle (color: ColorManager.grey1, friendName: "twinkie \ndreams")
                    })
                    .offset(x: showItems ? 150 : 0, y: showItems ? -270: 0)
                    
                    
            
                    ZStack {
                        
                        Image(systemName: "rectangle.fill")
                            .resizable()
                            .foregroundColor(ColorManager .grey4)
                            .frame(width: 100, height: 230)
                        //                    .blur(radius: 2)
                            .opacity(0.90)
                        
                            .shadow(color: .white, radius: 65, x: 30, y: 50)
                        
                        
                        VStack {
                            
                            Text("our \ndream's \nfloating")
                                .font(.system(size: 12))
                                .foregroundColor(ColorManager.grey2)
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                            
                            Text("somewhere \nout \nthere")
                                .font(.system(size: 12))
                                .foregroundColor(ColorManager.grey2)
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                            
                            
                        }
                    }
                    
                    
                    .onTapGesture {
                        withAnimation {
                            self.showItems.toggle()
                        }
                        print("tap function is working")
                    }
                    
                    .animation(Animation.easeInOut(duration: 3.0), value: showItems)
                    
                }
            }
        }
        
        
        struct DreamCircle: View {
            var color: Color
            var friendName: String
            
            var body: some View {
                
                ZStack {
                    
                    Rectangle()
                        .frame(width: 90, height: 90)
                        .clipShape(Circle())
                        .foregroundColor(color)
                        .opacity(0.7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 5, x: 0, y: 5)
                    
                    Text(friendName)
                        .fontWeight(.light)
                        .italic()
                        .foregroundColor(ColorManager.grey4)
                    
                }
                
                
                
            }
        }
    }
    
    
    
    

