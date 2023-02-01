//
//  ProfessionalHelp.swift
//  BestFriends
//
//  Created by Social Tech on 2/1/23.
//



import Foundation
import SwiftUI


struct ProfessionalHelp: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
   let user: User
//    let atmosphere: Atmosphere
//    let friends: [User]
//    let groups: [Group]
//    let friendAtmospheres: [Atmosphere]
//
    var body: some View {
        ZStack {
            ColorManager.grey3
                .ignoresSafeArea()
                .onAppear()
            
//            Image("ShaylaBest")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()

            
//            AdPlayerView(name: "sky2")
//                .ignoresSafeArea()
//                .blendMode(.screen)

            
            VStack {
         
                Text("(coming soon)")
                    .font(.system(size: 20, weight: .regular))
                    .italic()
                    .foregroundColor(ColorManager .grey1)
                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                    .opacity(0.50)
                    .multilineTextAlignment(.center)
                Spacer()
                    .frame(height: 10)
                
                Text("We're setting up partnerships now")
                    .font(.system(size: 20, weight: .bold))
                 .foregroundColor(ColorManager .grey1)
                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                    .opacity(0.50)
                    .multilineTextAlignment(.center)
               
                Spacer()
                    .frame(height: 35)
                
                
                Text("Here's a site they may")
                    .font(.system(size: 20, weight: .regular))
                 .foregroundColor(ColorManager .grey1)
                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                    .opacity(0.50)
                    .multilineTextAlignment(.center)
     
                
                Text("help in the meantime")
                    .font(.system(size: 20, weight: .regular))
                 .foregroundColor(ColorManager .grey1)
                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                    .opacity(0.50)
                    .multilineTextAlignment(.center)
                
                
                
            VStack {
                    
            
                Spacer()
                    .frame(height: 10)
            
                    VStack {

                        
                        Link(destination: URL(string: "https://will-to-live.org/")!) {
                            
                            Text("Will to Live")
                                .fontWeight(.thin)
                                .frame(width: 200, height: 30)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 25))
                                .background(ColorManager.pmbc_green)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        }
//
//                        Spacer()
//                            .frame(height: 10)
//
//                        Link(destination: URL(string: "https://socialtechlabs.com/teen-team/")!) {
//                                Text("Meet some of our Teens")
//                                    .fontWeight(.thin)
//                                    .frame(width: 310, height: 40)
//                                    .font(.system(size: 30))
//                                    .foregroundColor(.white)
//                                    .background(ColorManager.pmbc_green)
//                                    .cornerRadius(15)
//                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                    .opacity(0.8)
//
//                        }
//
//                        Spacer()
//                            .frame(height: 130)
//
//                        NavigationLink(
//                            destination: InfoViewPlanet(user: user),
//                            label: {
//                                Text("Walk-through")
//                                    .fontWeight(.thin)
//                                    .frame(width: 175, height: 30)
//                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                    .font(.system(size: 25))
//                                    .background(ColorManager.pmbc_green)
//                                    .cornerRadius(15)
//                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                            })
                        
//
//
//
//                        Text("we'd love t0")
//        //                    .font(.system(size: 25, weight: .bold))
//                            .font(.system(size: 35, weight: .bold))
//                            .foregroundColor(ColorManager .grey1)
//                            .shadow(color: .black, radius: 1, x: 0, y: 1)
//                            .opacity(0.50)
//        //                    .foregroundColor(ColorManager.purple5)
//        //                    .fontWeight(.ultraLight)
//                            .multilineTextAlignment(.center)
//
//
//
//
//                        Text("hear from you ")
//        //                    .font(.system(size: 25, weight: .bold))
//                            .font(.system(size: 35, weight: .bold))
//                            .foregroundColor(ColorManager .grey1)
//                            .shadow(color: .black, radius: 1, x: 0, y: 1)
//                            .opacity(0.50)
//        //                    .foregroundColor(ColorManager.purple5)
//        //                    .fontWeight(.ultraLight)
//                            .multilineTextAlignment(.center)
//                        Link(destination: URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSdpTah0IIOpTjgGgC6x8hxxA5zs5MA6JZWohmd0bKwXDzK0bQ/viewform?usp=sf_link")!) {
//
//                            Text("Survey - 90 Seconds")
//                                .fontWeight(.thin)
//                                .frame(width: 310, height: 40)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 25))
//                                .background(ColorManager.pmbc_green)
//                                .cornerRadius(15)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                        }
                        
                        Spacer()
                            .frame(height: 15)
                        
     
                 
                    }
                }
                
            }
}
    }
}
        
    
    


