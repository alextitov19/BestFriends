//
//  MyRoomPreload.swift
//  BestFriends
//
//  Created by Social Tech on 6/25/22.
//


import Foundation

import SwiftUI


struct MyRoomPreload: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    let atmosphere: Atmosphere
    let friendAtmospheres: [Atmosphere]
    
    var body: some View {
        ZStack {
            
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
            
            
            
            
            
            
            VStack {
                
                NavigationLink(destination: MyRoomDVid(user: user, friends: friends, atmosphere: atmosphere, friendAtmospheres:  friendAtmospheres), label: {
                    Text("Demo Video")
                        .fontWeight(.thin)
                        .frame(width: 200, height: 40)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 30))
                        .background(ColorManager.pmbc_blue)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                })
                
                Text("Yep, its one of those")
                    .font(.system(size: 37))
                    .foregroundColor(.blue)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                
                
                Text("D A Y S")
                    .font(.system(size: 65))
                    .foregroundColor(.blue)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 10)
                
                VStack {
               
                    Text("Maybe you just want to")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                

                Text("by yourself for a while")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    
                    Spacer()
                        .frame(height: 40)
                    
                Text("in the Safety")
                    .font(.system(size: 40))
                    .fontWeight(.ultraLight)
                    .foregroundColor(.blue)
                
                   
                
                    Text("of your Room")
                        .font(.system(size: 40))
                        .fontWeight(.ultraLight)
                        .foregroundColor(.blue)
                  
                      
                    
                Spacer()
                    .frame(height: 50)
                
            
                
                NavigationLink(destination: HideoutsView(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres:  friendAtmospheres), label: {
                    Text("SKIP")
                        .fontWeight(.thin)
                        .frame(width: 100, height: 40)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 30))
                        .background(ColorManager.purple3)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                })
                

                VStack {
                    Spacer()
                        .frame(height: 30)
                    
//                    Text("You let your friends know how \nyou feel, now let them help you")
//                        .font(.system(size: 20))
//                        .foregroundColor(.blue)
//                        .fontWeight(.light)
//                        .foregroundColor(Color.white)
                    Spacer()
                        .frame(height: 15)
                    
//                    Text("- re-read nice messages from \nFriends you long-tapped in Chat")
//                        .font(.system(size: 15))
//                        .italic()
//                        .foregroundColor(ColorManager.grey2)
//                        .fontWeight(.light)
//                        .foregroundColor(Color.white)
//
//                    Spacer()
//                        .frame(height: 10)
//
//                    Text("- listen to a song a friend sent \nto match your mood")
//                        .font(.system(size: 15))
//                        .italic()
//                        .foregroundColor(ColorManager.grey2)
//                        .fontWeight(.light)
//                        .foregroundColor(Color.white)
//
//                    Spacer()
//                        .frame(height: 10)
//
//                    Text("- Shake you phone and see favorite \nimages your friends sent you")
//                        .font(.system(size: 15))
//                        .italic()
//                        .foregroundColor(ColorManager.grey2)
//                        .fontWeight(.light)
//                        .foregroundColor(Color.white)
//
                
                    
                   
                     
                        Spacer()
                            .frame(height: 70)
                        
                        
                        
                    
                    
                    
                    
                }
            }
            
        }
        
    }
    
}

}
