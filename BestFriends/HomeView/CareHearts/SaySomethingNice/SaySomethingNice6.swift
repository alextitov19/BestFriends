//
//  SaySomethingNice6.swift
//  BestFriends
//
//  Created by Social Tech on 11/30/22.
//

//

import Foundation
import SwiftUI


struct SaySomethingNice6: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let groups: [Group]
    let friendAtmospheres: [Atmosphere]
    
    var body: some View {
        ZStack {
            
            
//            Color .black
//                .ignoresSafeArea()
//                .onAppear()
//            
//        
//            
//            AdPlayerView(name: "sky2")
//                .ignoresSafeArea()
//                .blendMode(.screen)
            
            
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
            
            VStack {
                
                Text("introducing")
                    .font(.system(size: 12))
                   .italic()
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                
                
                
                Text("BestFriends")
                    .font(.system(size: 50))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple2)
                
//                Spacer()
//                    .frame(height: 5)
                
                Text("Letting the 'outside of you'")
                    .font(.system(size: 19))
//                    .italic()
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                
                Text("match the 'inside of you'")
                    .font(.system(size: 19))
//                    .italic()
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                
                Text("in a highly protected social environment")
                    .font(.system(size: 19))
//                    .italic()
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 35)
                
                VStack {
                    
                    
                    Text("Start sharing")
//                        .italic()
                        .font(.system(size: 25))
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.grey1)
                    
                    
                    Text("Emotional Moments")
                        .font(.system(size: 30))
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.purple2)
                    
                    Text("with your 5 BFFs")
                        .font(.system(size: 25))
//                        .italic()
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.purple2)
                    
                    Spacer()
                        .frame(height: 50)
                    
//                    Text("Setup BestFriends")
//                        .font(.system(size: 17))
//                        .italic()
//                        .foregroundColor(ColorManager.grey2)
//                        .fontWeight(.thin)
//                        .multilineTextAlignment(.center)
                    
                    
                 
                    
                    NavigationLink(
                        
                        destination: INFOMainHowWorks(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                        label: {
                            Text("SetUp / Walk-through")
                                .fontWeight(.light)
                                .foregroundColor(Color.white)
                                .frame(width: 310, height: 60)
                                .font(.system(size: 25))
                                .background(Color.green)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            
                        })
                    
                    Spacer()
                        .frame(height: 30)
                    
                    
                    
                  
                    
                    VStack {
                        
                        //
                        //
                        //
                        //
                        //                NavigationLink(
                        //                    destination: PickMediator(user: user, atmosphere: atmosphere, friends: friends,  friendAtmospheres: friendAtmospheres, groups: groups),
                        //                    label: {
                        //                        Text("Why build a 'gender' \nmixed friend group")
                        //                            .fontWeight(.thin)
                        //                            .frame(width: 240, height: 60)
                        //                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        //                            .font(.system(size: 25))
                        //                            .background(ColorManager.purple3)
                        //                            .cornerRadius(7)
                        //                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        //                            .opacity(0.50)
                        //                    })
                        //
                        //
                        //
                        //
                        
                        NavigationLink(
                            
                            destination: InviteView(user: user, atmosphere: atmosphere, friends: friends,  friendAtmospheres: friendAtmospheres, groups: groups),
                            label: {
                                Text("Invite your friends")
                                    .fontWeight(.light)
                                    .foregroundColor(Color.white)
                                    .frame(width: 310, height: 60)
                                    .font(.system(size: 25))
                                    .background(Color.orange)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            })
                        
                        
                        Text("This app doesn't work")
                            .font(.system(size: 17))
                            .italic()
                            .foregroundColor(ColorManager.grey2)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                        
                        Text("without your friends")
                            .font(.system(size: 17))
                            .italic()
                            .foregroundColor(ColorManager.grey2)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                        
                        
                        
                        
                        Spacer()
                            .frame(height: 30)
                        
                        
                        
                        Link(destination: URL(string: "https://socialtechlabs.com/social-media-influencers/")!) {
                            
                            Text("Social Media Influencers")
                                .fontWeight(.thin)
                                .frame(width: 310, height: 60)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 25))
                                .background(Color.purple)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        }
                        
                                            Text("Our fantastic supporters")
                                                .font(.system(size: 22))
                                                .italic()
                                                .foregroundColor(ColorManager.grey2)
                                                .fontWeight(.thin)
                                                .multilineTextAlignment(.center)
                        
//
//                        Spacer()
//                            .frame(height: 50)
                   
                     
                        
                        
                        
                        
                        
                        
                        
                   
                        
                    }
                }
                
            }
        }
    }
    
}
    
    
