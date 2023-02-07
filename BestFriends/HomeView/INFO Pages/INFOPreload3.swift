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

            ColorManager .grey4
                .ignoresSafeArea()
                .onAppear()

            //
            //            AdPlayerView(name: "dramaLights")
            //                .ignoresSafeArea()
            //                .blendMode(.screen)
            //                .opacity(0.75)


            Circle()
                .frame(width: 300, height: 300)
                .foregroundColor(ColorManager.purple2)
                .offset(x: 200, y: -450)

            Circle()
                .frame(width: 300, height: 300)
                .foregroundColor(ColorManager.purple3)
                .offset(x: -200, y: 400)





            VStack {


                VStack {

                    Image("sticker")
                        .resizable()
                        
                        .frame(width: 300, height: 300)
                    
                    Text("Free stickers for you & your friends")
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
                        .frame(height: 10)
                    
                    Text("(we pay shipping)")
                        .font(.system(size: 15))
                        .italic()
                        .fontWeight(.thin)
                        .foregroundColor(ColorManager .grey1)
                        .multilineTextAlignment(.center)
                    
                       Spacer()
                                    .frame(height: 100)





                            }

                        }

                    }
                }

            }
    
