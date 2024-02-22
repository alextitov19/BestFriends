//
//  InfoWhyLoveBF2.swift
//  BestFriends
//
//  Created by Social Tech on 1/29/23.
//


import Foundation
import SwiftUI
import AVKit

struct InfoWhyLoveFB2: View {


    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]

    var body: some View {

        ZStack {

            ColorManager .purple1
                .ignoresSafeArea()
                .onAppear()




            VStack {



                Text("BestFriends")
                    .font(.system(size: 35))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey2)
                
//                Spacer ()
//                     .frame(height: 70)

                ZStack {
               

                    Image(systemName: "heart.fill")
                        .resizable()
                        .foregroundColor(ColorManager .purple2)
                        .frame(width: 330, height: 330)
                        .shadow(color: ColorManager .purple5, radius: 65, x: 30, y: 50)
                        .opacity(0.8)



                    VStack {
                 
//                      
//
//                        Text("Letting the")
//                            .font(.system(size: 20))
//                            .italic()
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager .grey3)
//
//                  
//                    
//
//                        Text("outside of you")
//                            .italic()
//                            .font(.system(size: 20))
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager .grey3)
//                        
//                    
//                        Text("match the")
//                            .italic()
//                            .font(.system(size: 20))
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager .grey3)
//
//                        Text("inside of you")
//                            .italic()
//                            .font(.system(size: 20))
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager .grey3)
//                        
//                        
//                        Spacer ()
//                            .frame(height: 17)
//                        
//                        
//
//                        Text("on difficult days")
//                        
//                            .font(.system(size: 20))
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(Color .white)
//                        
                        Spacer ()
                             .frame(height: 20)
                        
                        
                         NavigationLink(
                            destination: INFOMainHowWorks(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                            label: {
                                Text("walk-through")
                                    .fontWeight(.thin)
                                    .frame(width: 200, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 30))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })


                           Spacer ()
                                .frame(height: 30)

                    }
                }
            }
        }
    }

}

