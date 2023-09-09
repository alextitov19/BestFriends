//
//  RR18.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 8/18/23.
//

//import SwiftUI
//
//struct RR18: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct RR18_Previews: PreviewProvider {
//    static var previews: some View {
//        RR19()
//    }
//}


import Foundation
import SwiftUI
import AVKit

struct RR18: View {
    
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
            
            AdPlayerView(name: "background_7")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            
            
            //
            //                            NavigationLink(destination: BeSinger(user: user), label: { WhoFightingCircle (color: .orange, friendName: "'I' wanna \nbe a \nsinger")
            //                            })
            //                                .offset(x: showItems ? 150 : 0, y: showItems ? -140: 0)
            //
//            NavigationLink(destination: DreamSteps(), label: { WhoFightingCircle (color: ColorManager.pmbc_green, friendName: "Let's \nDo This")
//            })
//            .offset(x: showItems ? 80 : 0, y: showItems ? 290: 0)
            
            
//            NavigationLink(destination: RR10(), label: {
//                WhoFightingCircle (color: Color .green, friendName: "Dream \nJournals")
//            })
//                .offset(x: showItems ? 0 : 0, y: showItems ? 270: 0)
                                      
            
            ZStack {
                
                NavigationLink(destination: RR19(),
                               label: { WhoFightingCircle (color: ColorManager.purple1, friendName: "LoveTart \n'Linen Dress'")
                })
                .offset(x: showItems ? -25 : 0, y: showItems ? -300: 0)
                
                
                
//                NavigationLink(destination: NewPoems(user: user, friends: friends, groups: groups), label: {
//                    WhoFightingCircle (color: ColorManager.orange2, friendName: "newest \nLoveTarts")
//                })
//                .offset(x: showItems ? -120 : 0, y: showItems ? -190: 0)
                
                
//
//                NavigationLink(destination: AudioCode(), label: {
//                    WhoFightingCircle (color: ColorManager.purple2, friendName: "off the \nnarrow \nedge")
//                })
//                .offset(x: showItems ? -140 : 0, y: showItems ? -275: 0)
                
                
                
//                NavigationLink(destination: EverybodyOk(user: user), label: {
//                    WhoFightingCircle (color: ColorManager.pmbc_green, friendName: "neuro- \nscience")
//                })
//                .offset(x: showItems ? -80 : 0, y: showItems ? 290: 0)
                
                
            
//
//                NavigationLink(destination: DreamsWeDare2(user: user, friends: friends), label: {
//                    WhoFightingCircle (color: ColorManager.purple3, friendName: "LoveTart \n'Happy Tear'")
//                })
//                .offset(x: showItems ? 50 : 0, y: showItems ? -190: 0)
////

             

                NavigationLink(destination: RR19(), label: {
                    DreamCircle (color: ColorManager.grey1, friendName: "TEST \nLoveTart \na linen dress")
                })
                .offset(x: showItems ? 150 : 0, y: showItems ? -270: 0)
//
//
//                NavigationLink(destination: EmptyView(), label: {
//                    DreamCircle (color: ColorManager.grey4, friendName: "")
//                })
//                .offset(x: showItems ? 0 : 0, y: showItems ? 0: 0)
//
//
                
        
                
                
                                    ZStack {
                
                Image(systemName: "circle.fill")
                    .resizable()
                    .foregroundColor(ColorManager .grey3)
                    .frame(width: 230, height: 230)
                    .opacity(0.80)
                    .shadow(color: .white, radius: 100, x: 50, y: 50)

   
                    
                                        VStack {
                                            
                                            
                                            Text("Love")
                                                .font(.system(size: 20))
                                            //                            .italic()
                                                .foregroundColor(Color.white)
                                                .fontWeight(.regular)
                                                .multilineTextAlignment(.center)
                                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                                            
                                            
                                            
                                            Text("Tarts")
                                                .font(.system(size: 20))
                                                .foregroundColor(Color.white)
                                                .fontWeight(.regular)
                                                .multilineTextAlignment(.center)
                                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                                            
                                        }
                        
                        Spacer()
                            .frame(height:100)
                        
                                  
                        
                    }
                
                
                Text("Issue: \n\nDid a friend do or say something \nthat's been bugging you all week? \n\nMaybe you're just a little nervous to say something.")
                    .fontWeight(.regular)
                    .frame(width: 300, height: 150)
                    .foregroundColor(Color.green)
                    .font(.system(size: 15))
                    .background(ColorManager .grey4)
                    .cornerRadius(10)
                    .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                
                
                }
                
                
                .onTapGesture {
                    withAnimation {
                        self.showItems.toggle()
                    }
                    print("tap function is working")
                }
                
                .animation(Animation.easeInOut(duration: 3.5), value: showItems)
                
            }
        }
    }
    
    
    struct DreamCircle: View {
        var color: Color
        var friendName: String
        
        var body: some View {
            
            ZStack {
                
//
//                Image(systemName: "star.fill")
//                    .resizable()
//                    .foregroundColor(color)
//                //                            .foregroundColor(ColorManager .purple2)
//                    .frame(width: 90, height: 90)
//                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
//
                
                
                Rectangle()
                    .frame(width: 120, height: 120)
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
    

    
    
    
    
//}
