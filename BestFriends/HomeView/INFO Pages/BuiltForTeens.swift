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
//     
//            Color .black
//              .ignoresSafeArea()
//              .onAppear()
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()

            AdPlayerView(name: "dramaLights")
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
//
//                     Text("standing together in our drama")
//                         .font(.system(size: 23))
//                         .fontWeight(.thin)
//                         .foregroundColor(Color.white)
//                         .padding()
//
//
//                Text("protecting each other's backs")
//                    .font(.system(size: 23))
//                    .fontWeight(.thin)
//                    .foregroundColor(Color.white)
//                    .padding()
//
//
//                Text("never giving up on friends in need, \n            yielding true friends")
//                    .font(.system(size: 23))
//                    .fontWeight(.thin)
//                    .foregroundColor(Color.white)
//                    .padding()
//
//                Text("yet, each of us remaining \n       uniquely different")
//                    .font(.system(size: 23))
//                    .fontWeight(.thin)
//                    .foregroundColor(Color.white)
//                    .padding()
//
// //
//                Spacer()
//                    .frame(height: 50)
//
                    VStack {

                        NavigationLink(
                           destination: ShaylaPage(user: user),
                           label: {
                               Text("Envisioned by Teens")
                                   .fontWeight(.thin)
                                   .frame(width: 270, height: 30)
                                   .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                   .font(.system(size: 25))
                                   .background(ColorManager.purple3)
                                   .cornerRadius(15)
                                   .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                           })
                        
                        Spacer()
                            .frame(height: 30)
                        
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
                            .frame(height: 50)


                      
                 
                        
                    }
                }
                
            }
}
    }

        
  
