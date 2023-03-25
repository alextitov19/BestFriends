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
         
                Text("BestFriends is about")
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
                    .frame(height: 25)
                
                Text("If you want to realize \nyour most precious dreams")
                    .font(.system(size: 22))
                
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
            
                Spacer()
                    .frame(height: 70)
                
            VStack {
           
              
            
          NavigationLink(
              
              destination: SaySomethingNice6(user: user, atmosphere: atmosphere, friends: friends, groups: groups, friendAtmospheres: friendAtmospheres),
              label: {
                  Text("then TAP here")
                      .fontWeight(.light)
                      .foregroundColor(Color.white)
                      .frame(width: 230, height: 60)
                      .font(.system(size: 25))
                      .background(ColorManager.pmbc_green)
                      .cornerRadius(7)
                      .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                      
              })
          
  
                        
                        Spacer()
                            .frame(height: 15)
                        
     
                 
                    }
                }
                
            }
      }
}

        
    
 
