//
//  INFOPreload3.swift
//  BestFriends
//
//  Created by Social Tech on 12/17/22.
//



import Foundation
import SwiftUI


struct INFOPreload3: View {

    @EnvironmentObject var sessionManager: SessionManager

    let user: User
    //    let atmosphere: Atmosphere
    //    let friends: [User]
    //    let groups: [Group]
    //    let friendAtmospheres: [Atmosphere]
    //
    var body: some View {
        ZStack {

            ColorManager .grey3
                .ignoresSafeArea()
                .onAppear()

            //
            //            AdPlayerView(name: "dramaLights")
            //                .ignoresSafeArea()
            //                .blendMode(.screen)
            //                .opacity(0.75)


            Circle()
                .frame(width: 300, height: 300)
                .foregroundColor(ColorManager.purple1)
                .offset(x: 200, y: -450)

            Circle()
                .frame(width: 300, height: 300)
                .foregroundColor(ColorManager.purple1)
                .offset(x: -200, y: 400)





            VStack {


                VStack {


                    Text("Free stickers for you & your friends")
                        .font(.system(size: 20))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 10)
                    Text("Just send us you name & mailing address")
                        .font(.system(size: 20))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)

                    Spacer()
                        .frame(height: 30)
                    
                    Text("Just send us you name & mailing address to:")
                        .font(.system(size: 20))
                        .fontWeight(.thin)
                        .foregroundColor(ColorManager .purple3)
                        .multilineTextAlignment(.center)

                    
                    Text("Stickers@SocialTechLabs.com")
                        .font(.system(size: 20))
                        .fontWeight(.thin)
                        .foregroundColor(ColorManager .purple3)
                        .multilineTextAlignment(.center)

                    Text("(we pay postage)")
                        .font(.system(size: 20))
                        .italic()
                        .fontWeight(.thin)
                        .foregroundColor(ColorManager .grey4)
                        .multilineTextAlignment(.center)
                    
                       Spacer()
                                    .frame(height: 100)





                            }

                        }

                    }
                }

            }
    
