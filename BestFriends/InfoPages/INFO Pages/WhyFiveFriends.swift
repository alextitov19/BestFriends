//
//  WhyFiveFriends.swift
//  BestFriends
//
//  Created by Social Tech on 11/24/22.
//


import Foundation
import SwiftUI


struct WhyFiveFriends: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    //    let user: User
    //    let atmosphere: Atmosphere
    //    let friends: [User]
    //    let groups: [Group]
    //    let friendAtmospheres: [Atmosphere]
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    var body: some View {
        ZStack {
            
            
            //            Image("ShaylaBest")
            //                .resizable()
            //                .ignoresSafeArea()
            //                .scaledToFill()
            
            
            
            Color .black
                .ignoresSafeArea()
                .onAppear()
            
            //            Image("purpleBackground")
            //                .resizable()
            //                .ignoresSafeArea()
            //                .scaledToFill()
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.75)
            
            
            VStack {
                
                
                
                
                Text("Over 70% of the 500 teens worldwide")
                    .font(.system(size: 17, weight: .bold))
                    .foregroundColor(ColorManager .grey1)
                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                    .opacity(0.50)
                    .multilineTextAlignment(.center)
                
                
                Text("we surveyed wanted 5 or less")
                    .font(.system(size: 17, weight: .bold))
                    .foregroundColor(ColorManager .grey1)
                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                    .opacity(0.50)
                    .multilineTextAlignment(.center)
                
                Text("of their closest, most trusted friends")
                    .font(.system(size: 17, weight: .bold))
                    .foregroundColor(ColorManager .grey1)
                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                    .opacity(0.50)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 50)
                
                //
                //
                //                        Link(destination: URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSdpTah0IIOpTjgGgC6x8hxxA5zs5MA6JZWohmd0bKwXDzK0bQ/viewform?usp=sf_link")!) {
                //
                //                            Text("Take, 90-second Survey")
                //                                .fontWeight(.thin)
                //                                .frame(width: 310, height: 40)
                //                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                //                                .font(.system(size: 25))
                //                                .background(ColorManager.pmbc_green)
                //                                .cornerRadius(15)
                //                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                //                        }
                
                Text("Teens prefer fewer more personal")
                //                    .font(.system(size: 25, weight: .bold))
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(ColorManager .grey1)
                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                    .opacity(0.50)
                //                    .foregroundColor(ColorManager.purple5)
                //                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                
                Text("connections over more, often toxic, ones")
                //                    .font(.system(size: 25, weight: .bold))
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(ColorManager .grey1)
                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                    .opacity(0.50)
                //                    .foregroundColor(ColorManager.purple5)
                //                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                
                
                
                
                
                
                VStack {
                    
                    
                    Spacer()
                        .frame(height: 50)
                    
                    
                    NavigationLink(
                        destination: INFOPreload4(user: user, atmosphere: atmosphere, friends: friends,  friendAtmospheres: friendAtmospheres, groups: groups),
                        label: {
                            Text("Building a mixed friend group")
                                .fontWeight(.thin)
                                .frame(width: 310, height: 30)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 25))
                                .background(ColorManager.pmbc_green)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                    
                    Text("However, if you build a mixed")
                    //                    .font(.system(size: 25, weight: .bold))
                        .font(.system(size: 17, weight: .bold))
                        .foregroundColor(Color .white)
                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                        .opacity(0.50)
                        .multilineTextAlignment(.center)
                    
                    Text("group of friends, you may")
                    //                    .font(.system(size: 25, weight: .bold))
                        .font(.system(size: 17, weight: .bold))
                        .foregroundColor(ColorManager .grey1)
                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                        .opacity(0.50)
                        .multilineTextAlignment(.center)
                    
                    Text("invite up to 7 total friends.")
                    //                    .font(.system(size: 25, weight: .bold))
                        .font(.system(size: 17, weight: .bold))
                        .foregroundColor(ColorManager .grey1)
                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                        .opacity(0.50)
                        .multilineTextAlignment(.center)
                    
                    
                    
                }
            }
            
        }
    }
    
}
    


