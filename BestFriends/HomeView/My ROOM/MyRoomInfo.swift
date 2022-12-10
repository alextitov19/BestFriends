//
//  MyRoomInfo.swift
//  BestFriends
//
//  Created by Social Tech on 11/4/22.
//



import Foundation
import SwiftUI
import AVKit

struct MyRoomInfo: View {
    
    //    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0
    
    
    var body: some View {
        
        ZStack {
            
            //            ColorManager.purple1
            //                .ignoresSafeArea()
            //                .onAppear()
            
            
            //            Image("ShaylaBest3")
            //                .resizable()
            //                .ignoresSafeArea()
            //                .scaledToFill()
            //                .opacity(0.5)
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
                .opacity(0.5)
            
            
            
            AdPlayerView(name: "MyRoom5")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            
            
            
            
            ZStack{
                
                
                
                //                AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends),
                
                NavigationLink(destination:   SendSongPush(user: user, friends: friends),
                               label: {
                    MyRoomCircle (color: ColorManager .purple1, friendName: "found \nnew \nMusic")
                })
                .offset(x: showItems ? -35 : 0, y: showItems ? -260: 0)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
                
                
                
                
                NavigationLink(destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres), label: {
                    MyRoomCircle (color: ColorManager.purple2, friendName: "saved \n'Nice' \nmessages")
                })
                .offset(x: showItems ? 100 : 0, y: showItems ? -200: 0)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
                
                
                
                ZStack {
                    
                    NavigationLink(destination: DreamVaultView(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres:  friendAtmospheres, groups: groups), label: {
                        MyRoomCircle (color: ColorManager.grey1, friendName: "DreamVault \ncoming \n2023")
                    })
                    .offset(x: showItems ? 75 : 0, y: showItems ? 140: 0)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
                    
                    
                    NavigationLink(destination: EmptyView(), label: {
                        MyRoomCircle (color: ColorManager.grey1, friendName: "Group \nGallery \ncoming \n2023")
                    })
                    .offset(x: showItems ? -75 : 0, y: showItems ? 160: 0)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
                    
                    
                    
                    
                    Image(systemName: "triangle.fill")
                        .resizable()
                        .foregroundColor(ColorManager .grey2)
                        .frame(width: 220, height: 180)
                    //                    .blur(radius: 2)
                    
                        .shadow(color: ColorManager .purple4, radius: 65, x: 30, y: 50)
//                        .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50)
                        .opacity(0.95)
                    
                    
                    
                    Spacer ()
                        .frame(height: 100)
                    
                    
                    
                    
                    VStack {
                        
                        NavigationLink(
                            destination: HideMyRoom(user: user),
                            label: {
                                
                                //                            Image("iconSettings15")
                                
                                Text("Lock Room")
                                    .fontWeight(.light)
                                    .frame(width: 85, height: 21)
                                //                        .foregroundColor(ColorManager.grey1)
                                    .foregroundColor(.white)
                                    .font(.system(size: 15))
                                    .background(ColorManager.grey3)
                                    .cornerRadius(15)
                                //                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                        
                        Spacer ()
                            .frame(height: 25)
                        
                        
                        
                        Text("my room")
                            .font(.system(size: 37))
                            .foregroundColor(.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        
                        
                        
                    }
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
        
        
        struct MyRoomCircle: View {
            var color: Color
            var friendName: String
            
            var body: some View {
                
                ZStack {
                    
                    Rectangle()
                        .frame(width: 110, height: 110)
                        .clipShape(Circle())
                        .foregroundColor(color)
                        .opacity(0.7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 5, x: 0, y: 5)
                    
                    Text(friendName)
                        .fontWeight(.light)
                        .italic()
                        .foregroundColor(.black)
                    
                }
                
                VStack {
                    
                
                
            }
        }
    }
}
