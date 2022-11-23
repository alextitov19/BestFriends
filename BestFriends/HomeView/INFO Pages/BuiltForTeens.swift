//
//  BuiltForTeens.swift
//  BestFriends
//
//  Created by Social Tech on 8/30/22.
//



import Foundation
import SwiftUI


struct BuiltForTeens: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
//    let atmosphere: Atmosphere
//    let friends: [User]
//    let groups: [Group]
//    let friendAtmospheres: [Atmosphere]
//    
    var body: some View {
        ZStack {
//            ColorManager.grey3
//                .ignoresSafeArea()
//                .onAppear()
            
//            Image("lampblue")
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
          
            ZStack {
                Circle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(ColorManager.purple3)
                    .offset(x: 200, y: -450)
                
                Circle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(ColorManager.purple3)
                    .offset(x: -200, y: 400)
            }
                
            VStack {
                
                
//                Text("Add up to five ...")
//                            .font(.system(size: 27))
//                            .italic()
//                            .fontWeight(.light)
//                            .foregroundColor(ColorManager.purple3)
                
                Text("FriendGroups")
                            .font(.system(size: 45))
                            .italic()
                            .fontWeight(.light)
                            .foregroundColor(ColorManager.purple3)
               
                     Text("- standing together in the storm \n- always having each other's backs \n- never giving up on each other \n- yet, each of us uniquely special")
                         .font(.system(size: 23))
                         .fontWeight(.thin)
                         .foregroundColor(Color.white)
                         .padding()
                
                
 //
                Spacer()
                    .frame(height: 100)
            
                    VStack {

                        NavigationLink(
                           destination: ShaylaPage(user: user),
                           label: {
                               Text("Envisioned by Teens")
                                   .fontWeight(.thin)
                                   .frame(width: 310, height: 30)
                                   .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                   .font(.system(size: 25))
                                   .background(ColorManager.purple3)
                                   .cornerRadius(15)
                                   .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                           })
                        
                        
                        NavigationLink(
                            destination: InfoViewPlanet(user: user),
                            label: {
                                Text("Walk-through")
                                    .fontWeight(.thin)
                                    .frame(width: 175, height: 30)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 25))
                                    .background(ColorManager.pmbc_green)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            })
                        
                        
                        Spacer()
                            .frame(height: 80)

   
                      
                 
                        
                    }
                }
                
            }
}
    }

        
  
