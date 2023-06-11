//
//  HurtFeelings.swift
//  BestFriends
//
//  Created by Social Tech on 6/14/22.
//





import Foundation
import SwiftUI


struct HurtFeelings: View {

    @EnvironmentObject var sessionManager: SessionManager

    let user: User
    //    let atmosphere: Atmosphere
    let friends: [User]
    //    let groups: [Group]
    //    let friendAtmospheres: [Atmosphere]

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



                Text("Image Sharing")
                    .font(.system(size: 17))
                    .italic()
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)


                Spacer()
                    .frame(height: 10)

                Text("Shake your iPhone")
                    .font(.system(size: 40))
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)

                Text("(image friend just sent you)")
                    .font(.system(size: 30))
                    .italic()
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)

                Spacer()
                    .frame(height: 40)

                Text("Pops Up")
                    .font(.system(size: 50))
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)

                Text("Full screen")
                    .font(.system(size: 60))
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)

                VStack {
                    Spacer()
                        .frame(height: 100)

                    Text("(you're alerted via push notification)")
                        .font(.system(size: 17))
                        .italic()
                        .foregroundColor(ColorManager.grey1)
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)


                    Spacer()
                        .frame(height: 20)

                    VStack {



                        NavigationLink(

                            destination: PhotoPopView(user: user, friends: friends),
                            label: {
                                Text("Try it out")
                                    .fontWeight(.light)
                                    .foregroundColor(Color.white)
                                    .frame(width: 230, height: 60)
                                    .font(.system(size: 25))
                                    .background(ColorManager.pmbc_green)
                                    .cornerRadius(7)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)

                            })



                        Spacer()
                            .frame(height: 75)



                    }
                }

            }
        }
    }

}


