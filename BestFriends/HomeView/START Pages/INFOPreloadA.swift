//
//  INFOPreloadA.swift
//  BestFriends
//
//  Created by Social Tech on 12/16/22.
//



import Foundation
import SwiftUI


struct INFOPreloadA: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let groups: [Group]
    let friendAtmospheres: [Atmosphere]
    
    var body: some View {
        ZStack {
            
            Color .black
                .ignoresSafeArea()
                .onAppear()
            
            //            Image("purpleBackground")
            //                 .resizable()
            //                 .ignoresSafeArea()
            //                 .scaledToFill()
            //
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            
            VStack {
                
                Spacer()
                    .frame(height: 30)
                
                
                
//                Text("No one wants to lose their ...")
//                    .font(.system(size: 17))
//                    .italic()
//                    .foregroundColor(ColorManager.grey1)
//                    .fontWeight(.regular)
//                    .multilineTextAlignment(.center)
//                
//                Spacer()
//                    .frame(height: 10)
//                
//                Text("BestFriends")
//                    .font(.system(size: 35))
//                    .foregroundColor(ColorManager.grey1)
//                    .fontWeight(.regular)
//                    .multilineTextAlignment(.center)
//
//                Text("truely like them")
//                    .font(.system(size: 23))
//                    .foregroundColor(ColorManager.grey1)
//                    .fontWeight(.regular)
//                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 80)
                
                VStack {
                   
                    
                    Spacer()
                        .frame(height: 5)
                    
                    Text("Now, you can let the outside of you")
                        .font(.system(size: 19))
                        .italic()
                        .foregroundColor(ColorManager.grey1)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                  
                    Text("match the inside of you on social media")
                        .font(.system(size: 19))
                        .italic()
                        .foregroundColor(ColorManager.grey1)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Text("super safe & protective with five")
                        .font(.system(size: 17))
                        .italic()
                        .foregroundColor(ColorManager.grey1)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 10)
                    
                    Text("BestFriends")
                        .font(.system(size: 35))
                        .foregroundColor(ColorManager.grey1)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                    
                    
                    Spacer()
                        .frame(height: 150)
                    
                    VStack {
                        
                        //SaySomethingNice6(user: user, atmosphere: atmosphere, friends: friends, groups: groups, friendAtmospheres: friendAtmospheres
                        //
                        
                        NavigationLink(
                            
                            destination: INFOMainHowWorks(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                            label: {
                                Text("Walk-through")
                                    .fontWeight(.light)
                                    .foregroundColor(Color.white)
                                    .frame(width: 230, height: 60)
                                    .font(.system(size: 25))
                                    .background(ColorManager.pmbc_green)
                                    .cornerRadius(7)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            })
                        
                        //
                        //                        NavigationLink(
                        //                            destination: INFOMainHowWorks(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                        //                            label: {
                        //                                Text("Walk-through")
                        //                                    .fontWeight(.light)
                        //                                    .frame(width: 220, height: 60)
                        //                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        //                                    .font(.system(size: 25))
                        //                                    .background(ColorManager.purple3)
                        //                                    .cornerRadius(7)
                        //                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        //                                    .opacity(0.50)
                        //                            })
                        //    Spacer()
                        .frame(height: 55)
                     
                        Spacer()
                            .frame(height: 15)
                        
                        
                        Text("-> Then Add Your Friends <-")
                            .font(.system(size: 19))
                            .italic()
                            .foregroundColor(ColorManager.orange4)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                            .frame(height: 150)
                        
                        
                        
                    }
                }
                
            }
        }
    }
    
}
    
 
