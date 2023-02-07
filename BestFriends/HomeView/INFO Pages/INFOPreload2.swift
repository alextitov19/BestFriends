//
//  INFOPreload2.swift
//  BestFriends
//
//  Created by Social Tech on 11/8/22.
//

//

import Foundation
import SwiftUI


struct INFOPreload2: View {

    @EnvironmentObject var sessionManager: SessionManager

    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    

    var body: some View {
        ZStack {

            ColorManager .grey4
                .ignoresSafeArea()
                .onAppear()

            //
            //            AdPlayerView(name: "dramaLights")
            //                .ignoresSafeArea()
            //                .blendMode(.screen)
            //                .opacity(0.75)


//            Circle()
//                .frame(width: 300, height: 300)
//                .foregroundColor(ColorManager.purple2)
//                .offset(x: 200, y: -450)

            Circle()
                .frame(width: 300, height: 300)
                .foregroundColor(ColorManager.purple3)
                .offset(x: -200, y: 400)





            VStack {


                VStack {

                    Image("Harvard")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(10)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
                    
                    Text("Welcome everyone from the ____________")
                        .font(.system(size: 25))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 10)
                 

                    Spacer()
                        .frame(height: 50)
                    
                    Text("Just send us your name \n& mailing address to:")
                        .font(.system(size: 17))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    
                    
                    Spacer()
                        .frame(height: 10)
                    
                    Text("stickers@SocialTechLabs.com")
                        .font(.system(size: 20))
                        .fontWeight(.thin)
                        .foregroundColor(ColorManager .grey4)
                        .multilineTextAlignment(.center)

                    
                    Spacer()
                        .frame(height: 70)
                    
                    Text("(available while supplies last, \nwe pay shipping)")
                        .font(.system(size: 12))
                        .italic()
                        .fontWeight(.thin)
                        .foregroundColor(ColorManager .grey1)
                        .multilineTextAlignment(.center)
                    
                       Spacer()
                                    .frame(height: 50)





                            }

                        }

                    }
                }

            }
    
