//
//  CreateChatRooms.swift
//  BestFriends
//
//  Created by Social Tech on 12/20/22.
//



import Foundation
import SwiftUI
import AVKit

struct CreateChatRooms: View {
    
    //    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    //    let atmosphere: Atmosphere
    //    let friends: [User]
    //    let friendAtmospheres: [Atmosphere]
    //    let groups: [Group]
    //    //    let friendAtmospheres: [Atmosphere]
    
    //    @State private var showItems: Bool = false
    //    @State private var offset: CGFloat = 200.0
    //
    
    var body: some View {
        
        ZStack {
            
            ColorManager .purple1
                .ignoresSafeArea()
                .onAppear()
            
            //            Image("purpleBackground")
            //                .resizable()
            //                .scaledToFill()
            //                .ignoresSafeArea()
            //
            //            Image("Meet750")
            //               .frame(width: 100, height: 50)
            //                .ignoresSafeArea()
            //                .scaledToFill()
            
            
            VStack {
                
                
                Text("Create Chat Rooms")
                    .font(.system(size: 35))
                    .italic()
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
             
                
                ZStack {
                    
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(ColorManager .purple1)
                        .frame(width: 300, height: 300)
                        .shadow(color: .purple, radius: 65, x: 30, y: 50)
                        .opacity(0.95)
                    
                    
                    
                    VStack {
                        
                        
                        Spacer ()
                            .frame(height: 55)
                        
                        Text("Individual Rooms")
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.purple3)
                        
                        Spacer ()
                            .frame(height: 10)
                        
                        Text("Homepage: tap Friend's Planet")
                            .font(.system(size: 15))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.purple5)
                    
                        
                        Text("Tap [Create Chat Rooms]")
                            .font(.system(size: 15))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.purple5)
                        
                        Text("Name Chat Room")
                            .font(.system(size: 15))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.purple5)
                        
                        Text("Exit app and re-enter to activate")
                            .font(.system(size: 15))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.purple5)
                        
                        VStack {
                        
                            
                            Text(".  .  .")
                                .font(.system(size: 25, weight: .bold))
                                .foregroundColor(ColorManager .purple4)
                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                                .opacity(0.50)
                                .multilineTextAlignment(.center)
                            
                            Spacer ()
                                .frame(height: 10)
                            Text("Group Rooms")
                                .font(.system(size: 20))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager.purple3)
                            
                            Spacer ()
                                .frame(height: 10)
                            
                            Text("Tap ALL planets you want in room")
                                .font(.system(size: 15))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager.purple5)
                        
                            
                            
                            Text("Then follow above instructions")
                                .font(.system(size: 15))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager.purple5)
                            
//                            Text("Exit app and re-enter to activate")
//                                .font(.system(size: 15))
//                                .fontWeight(.light)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(ColorManager.purple5)
                            
                            Spacer ()
                                .frame(height: 100)
                            
                        }
                        
                    }
                }
            }
        }
    }
    
}
                            
                            //
                            //
                            //                        Spacer ()
                            //                            .frame(height: 60)
                            //
                            //                        Text("Please read Note:")
                            //                            .foregroundColor(.green)
                            //                            .font(.system(size: 30, weight: .light))
                            //                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                            
                            //                        Spacer ()
                            //                            .frame(height: 100)
                            //
                            //                        VStack {
                            //
                            //
                            //                            Text("Create")
                            //                                .font(.system(size: 35))
                            //                                .fontWeight(.light)
                            //                                .multilineTextAlignment(.center)
                            //                                .foregroundColor(ColorManager.purple3)
                            //
                            //                            Text("Group Chat Rooms")
                            //                                .font(.system(size: 35))
                            //                                .fontWeight(.light)
                            //                                .multilineTextAlignment(.center)
                            //                                .foregroundColor(ColorManager.purple3)
                            //
                            //                            ZStack {
                            //
                            //
                            //                                Image(systemName: "circle.fill")
                            //                                    .resizable()
                            //                                    .foregroundColor(ColorManager .grey2)
                            //                                    .frame(width: 250, height: 250)
                            //                                    .shadow(color: .purple, radius: 65, x: 30, y: 50)
                            //                                    .opacity(0.95)
                            //
                            //
                            //
                            //                                VStack {
                            //
                            //
                            //                                    Spacer ()
                            //                                        .frame(height: 10)
                            //
                            //
                            //                                    Text("-Tap Friend's Planet")
                            //                                        .font(.system(size: 15))
                            //                                        .fontWeight(.light)
                            //                                        .multilineTextAlignment(.center)
                            //                                        .foregroundColor(ColorManager.red)
                            //
                            //                                    Spacer()
                            //                                        .frame(height: 20)
                            //
                            //                                    Text("-Tap [Create NEW Chat Rooms]")
                            //                                        .font(.system(size: 15))
                            //                                        .fontWeight(.light)
                            //                                        .multilineTextAlignment(.center)
                            //                                        .foregroundColor(ColorManager.red)
                            //
                            //                                    Text("-Name Chat Room")
                            //                                        .font(.system(size: 15))
                            //                                        .fontWeight(.light)
                            //                                        .multilineTextAlignment(.center)
                            //                                        .foregroundColor(ColorManager.red)
                            //
                            //                                    Text("-Exit app and re-enter")
                            //                                        .font(.system(size: 23))
                            //                                        .fontWeight(.light)
                            //                                        .multilineTextAlignment(.center)
                            //                                        .foregroundColor(ColorManager.red)
                            //
                            //                                    Text("  to Activate NEW Room")
                            //                                        .font(.system(size: 23))
                            //                                        .fontWeight(.light)
                            //                                        .multilineTextAlignment(.center)
                            //                                        .foregroundColor(ColorManager.red)
                            //
                            //                                    Text("-Try 'motion' background in Settings")
                            //                                        .font(.system(size: 15))
                            //                                        .fontWeight(.light)
                            //                                        .multilineTextAlignment(.center)
                            //                                        .foregroundColor(.white)
                            //
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
                    //                    .animation(Animation.easeInOut(duration: 3.0), value: showItems)
                    //
                    //                }
                    //            }
                    //        }
                    //
                    //
                    //        struct StartHereCircle: View {
                    //            var color: Color
                    //            var friendName: String
                    //
                    //            var body: some View {
                    //
                    //                ZStack {
                    //
                    //                    Rectangle()
                    //                        .frame(width: 110, height: 110)
                    //                        .clipShape(Circle())
                    //                        .foregroundColor(color)
                    //
                    //                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
                    //                        .opacity(0.7)
                    //
                    //
                    //                    Text(friendName)
                    //                        .fontWeight(.light)
                    //                        .italic()
                    //                        .foregroundColor(.black)
                    //
 
    
//}
