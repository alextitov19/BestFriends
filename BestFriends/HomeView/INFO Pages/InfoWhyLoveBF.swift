//
//  InfoWhyLoveBF.swift
//  BestFriends
//
//  Created by Social Tech on 1/11/23.
//



import Foundation
import SwiftUI
import AVKit

struct InfoWhyLoveFB: View {

    let user: User

    var body: some View {

        ZStack {

            ColorManager .purple1
                .ignoresSafeArea()
                .onAppear()




            VStack {



                Text("Hey guys")
                    .font(.system(size: 35))
                    
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey2)


                ZStack {


                    Image(systemName: "heart.fill")
                        .resizable()
                        .foregroundColor(ColorManager .grey2)
                        .frame(width: 330, height: 330)
                        .shadow(color: ColorManager .red, radius: 65, x: 30, y: 50)
                        .opacity(0.8)



                    VStack {


                        Spacer ()
                            .frame(height: 60)

                        Text("It's like they really understand ")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color .white)

                        Text("me and my friends")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color .white)


//                        Spacer ()
//                            .frame(height: 20)
//
//                        Text("It will vibrate for a second")
//                            .italic()
//                            .font(.system(size: 20))
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(Color .white)
//



                           Spacer ()
                                .frame(height: 100)

                    }
                }
            }
        }
    }

}

