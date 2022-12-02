//
//  TeenBoysUsing.swift
//  BestFriends
//
//  Created by Social Tech on 12/1/22.
//



import Foundation
import SwiftUI


struct TeenBoysUsing: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
//    let user: User
//    let atmosphere: Atmosphere
//    let friends: [User]
//    let groups: [Group]
//    let friendAtmospheres: [Atmosphere]
//
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
                
                
                       
                        
                        Text("Over 90% of the teen boys interviewed")
                            .font(.system(size: 17, weight: .bold))
                            .foregroundColor(ColorManager .grey1)
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                            .opacity(0.50)
                            .multilineTextAlignment(.center)

            
                        Text("during beta testing said,")
                            .font(.system(size: 17, weight: .bold))
                            .foregroundColor(ColorManager .grey1)
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                            .opacity(0.50)
                            .multilineTextAlignment(.center)
                
                
                Spacer()
                    .frame(height: 20)
                
                Text("YES")
//                    .font(.system(size: 25, weight: .bold))
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(ColorManager .grey1)
                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                    .opacity(0.50)
//                    .foregroundColor(ColorManager.purple5)
//                    .fontWeight(.ultraLight)
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
                     
                Text("If invited by a girl")
//                    .font(.system(size: 25, weight: .bold))
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(ColorManager .grey1)
                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                    .opacity(0.50)
//                    .foregroundColor(ColorManager.purple5)
//                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
//
//                Text("connections over more, often toxic, ones")
////                    .font(.system(size: 25, weight: .bold))
//                    .font(.system(size: 35, weight: .bold))
//                    .foregroundColor(ColorManager .grey1)
//                    .shadow(color: .black, radius: 1, x: 0, y: 1)
//                    .opacity(0.50)
////                    .foregroundColor(ColorManager.purple5)
////                    .fontWeight(.ultraLight)
//                    .multilineTextAlignment(.center)
//
               
                 
                Spacer()
                    .frame(height: 50)
   
     
                    }
                }
                
            }
}
    
    
    


