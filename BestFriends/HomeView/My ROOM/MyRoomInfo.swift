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
                
                NavigationLink(destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres), label: {
                    AtmosphereCircle (color: ColorManager.purple3, friendName: "Saved \n'Nice' \nmessages")
                })
                .offset(x: showItems ? 100 : 0, y: showItems ? -200: 0)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
                
                
                
                NavigationLink(destination: ReceivedPlaylist(), label: {
                    AtmosphereCircle (color: ColorManager.orange5, friendName: "FriendGroup \nPlaylists")
                })
                .offset(x: showItems ? 95 : 0, y: showItems ? -50: 0)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
                
                
                
                NavigationLink(destination: DreamVaultView(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres:  friendAtmospheres, groups: groups), label: {
                    AtmosphereCircle (color: ColorManager.grey2, friendName: "Dream \nGalaxy")
                })
                .offset(x: showItems ? -75 : 0, y: showItems ? -250: 0)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
                
                
                
                NavigationLink(destination: EmptyView(), label: {
                    AtmosphereCircle (color: ColorManager.purple2, friendName: "my \nVibe \n(comming \nsoon)")
                })
                .offset(x: showItems ? -75 : 0, y: showItems ? 150: 0)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
                
                
                
                
                NavigationLink(destination: PhotoPop1(user: user, friends: friends), label: {
                    AtmosphereCircle (color: ColorManager.pmbc_blue, friendName: "PhotoPOP \n'shake' \niPhone")
                })
                .offset(x: showItems ? -35 : 0, y: showItems ? -150: 0)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
                
                
                
                
                
                Image(systemName: "triangle.fill")
                    .resizable()
                    .foregroundColor(ColorManager .orange3)
                    .frame(width: 220, height: 180)
                //                    .blur(radius: 2)
                
                    .shadow(color: .orange, radius: 65, x: 30, y: 50)
                    .opacity(0.95)
                
                VStack {
                    
                    Spacer ()
                        .frame(height: 30)
                    
                   
                 
                    
                    VStack {
//                        
//                        Text("Want to be")
//                            .font(.system(size: 20))
//                            .foregroundColor(.white)
//                            .fontWeight(.light)
//                            .foregroundColor(Color.white)
//                        
//                        
//                        Text("by myself in")
//                            .font(.system(size: 20))
//                            .foregroundColor(.white)
//                            .fontWeight(.light)
//                            .foregroundColor(Color.white)
//                     
                     
                        
                        Text("my room")
                            .font(.system(size: 37))
                            .foregroundColor(ColorManager .purple3)
                        
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
          
                        
                        
                    }
                }
//
//                VStack {
//
//                    Spacer ()
//                        .frame(height: 400)
//
//                    Text("Yep, its one of those")
//                        .font(.system(size: 37))
//                        .foregroundColor(.blue)
//                        .fontWeight(.ultraLight)
//                        .multilineTextAlignment(.center)
//
//
//
//                    Text("D A Y S")
//                        .font(.system(size: 65))
//                        .foregroundColor(.blue)
//                        .fontWeight(.ultraLight)
//                        .multilineTextAlignment(.center)
//
//
//
//                }
                .onTapGesture {
                    withAnimation {
                        self.showItems.toggle()
                    }
                    print("tap function is working")
                }
                
                .animation(Animation.easeInOut(duration: 1.5), value: showItems)
                
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
                //        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 5, x: 0, y: 5)
                //
                Text(friendName)
                    .fontWeight(.light)
                    .italic()
                    .foregroundColor(.black)
                
            }
        }
    }
    
}


