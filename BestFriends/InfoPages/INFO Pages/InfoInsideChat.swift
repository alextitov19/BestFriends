//
//  InfoInsideChat.swift
//  BestFriends
//
//  Created by Social Tech on 10/25/22.
//



import Foundation
import SwiftUI
import AVKit

struct InfoInsideChat: View {

    let user: User

    var body: some View {

//        ZStack {
//
//            ColorManager .purple1
//                .ignoresSafeArea()
//                .onAppear()
//
//
//
//
//            VStack {
//
//
//
//                Text("Create New Chat Rooms")
//                    .font(.system(size: 35))
//
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager.grey2)
//
//
//                ZStack {
//
//
//                    Image(systemName: "heart.fill")
//                        .resizable()
//                        .foregroundColor(ColorManager .grey2)
//                        .frame(width: 330, height: 330)
//                        .shadow(color: ColorManager .red, radius: 65, x: 30, y: 50)
//                        .opacity(0.8)

        
        ZStack {
            
            ColorManager .purple1
                .ignoresSafeArea()
                .onAppear()
            
            
            
            
            VStack {
                
                
                Text("Creating")
                    .font(.system(size: 35))
            
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey3)
                
                Text("NEW Chat Rooms")
                    .font(.system(size: 35))
            
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey2)
                ZStack {
                    
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(ColorManager .purple1)
                        .frame(width: 400, height: 400)
                        .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                        .opacity(0.95)
                    

                    VStack {


                        Spacer ()
                            .frame(height: 60)

                        Text("On homepage, tap friend's planets")
//                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .grey2)

                        Text("you want in the chat room")
//                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .grey2)



                        Spacer ()
                            .frame(height: 20)

                        Text("Then, tap the popup")
//                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .grey2)

                        Text("[Create New Chat Room]")
//                            .italic()
                            .font(.system(size: 23))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .purple4)


                        Spacer ()
                             .frame(height: 15)
                        
                        NavigationLink(
                            destination: ChangeChatBackgroundView(user: user),
                            label: {
                                Text("Customize Chat Background")
                                    .fontWeight(.thin)
                                    .frame(width: 310, height: 30)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 25))
                                    .background(ColorManager .grey3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    .opacity(0.5)
                            })
                        
                        
                        
                           Spacer ()
                                .frame(height: 100)

                    }
                }
            }
        }
    }

}

