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
            
            
            
            AdPlayerView(name: "myRoom1")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            
            
            
            
            ZStack{
                
                NavigationLink(destination:  AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends), label: {
                    MyRoomCircle (color: .cyan, friendName: "Set my \n'Vibe'")
                })
                .offset(x: showItems ? -35 : 0, y: showItems ? -260: 0)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
                
                
                
                
                NavigationLink(destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres), label: {
                    MyRoomCircle (color: ColorManager.purple3, friendName: "Saved \n'Nice' \nmessages")
                })
                .offset(x: showItems ? 100 : 0, y: showItems ? -200: 0)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
                
                
                
                ZStack {
                    
                    NavigationLink(destination: DreamVaultView(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres:  friendAtmospheres, groups: groups), label: {
                        MyRoomCircle (color: ColorManager.grey2, friendName: "DreamVault \ncomming \n2023")
                    })
                    .offset(x: showItems ? 75 : 0, y: showItems ? 140: 0)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
                    
                    
                    NavigationLink(destination: EmptyView(), label: {
                        MyRoomCircle (color: ColorManager.grey2, friendName: "FriendGroup \nGallery \ncomming \n2023")
                    })
                    .offset(x: showItems ? -75 : 0, y: showItems ? 160: 0)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
                    
                    
                    
                    
                    Image(systemName: "triangle.fill")
                        .resizable()
                        .foregroundColor(ColorManager .orange3)
                        .frame(width: 220, height: 180)
                    //                    .blur(radius: 2)
                    
                        .shadow(color: .orange, radius: 65, x: 30, y: 50)
                        .opacity(0.95)
                    
                    
                        
                        Spacer ()
                            .frame(height: 30)
                        
                        
                        
                        
                        VStack {
                            
                            
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
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                    .foregroundColor(color)
                    .opacity(0.7)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 5, x: 0, y: 5)
                
                Text(friendName)
                    .fontWeight(.light)
                    .italic()
                    .foregroundColor(.black)
                
            }
        }
    }
}
