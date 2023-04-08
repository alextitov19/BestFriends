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
         
                Text("BestFriendsNetwork")
                    .font(.system(size: 30))
                    
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Text("is about")
                    .font(.system(size: 20))
                    .italic()
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                Text("friendships")
                    .font(.system(size: 65))
                    
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 100)
                
             
                
                Text("If you want simple reassurances \nyour friends truely like you")
                    .font(.system(size: 22))
                
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                
                
                Spacer()
                    .frame(height: 25)
                
                Text("If you want your friends \nto be there for you on bad days")
                    .font(.system(size: 22))
                
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                
            
            
                Spacer()
                    .frame(height: 70)
                
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
      
      Text("Then Add Your Friends")
          .font(.system(size: 19))
          .italic()
          .foregroundColor(ColorManager.grey1)
          .fontWeight(.regular)
          .multilineTextAlignment(.center)
                        
                        Spacer()
                            .frame(height: 15)
                        
     
                 
                    }
                }
                
            }
      }
}

        
    
 
