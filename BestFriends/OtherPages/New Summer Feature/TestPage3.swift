//
//  TestPage3.swift
//  BestFriends
//
//  Created by Social Tech on 4/9/23.
//

//***************************************************************

//********************************************
import Foundation
import SwiftUI
import AVKit

struct TestPage3: View {


    
    let user: User
//    let atmosphere: Atmosphere
    let friends: [User]
//    let friendAtmospheres: [Atmosphere]
//    let groups: [Group]

    var body: some View {

        ZStack {

            ColorManager .purple1
                .ignoresSafeArea()
                .onAppear()




            VStack {
                
//
//                   Text("friends Supporting friends")
//                       .font(.system(size: 27))
//
//                       .fontWeight(.light)
//                       .multilineTextAlignment(.center)
//                       .foregroundColor(ColorManager .grey3)

                ZStack {
               

                    Image(systemName: "heart.fill")
                        .resizable()
                        .foregroundColor(ColorManager .purple2)
                        .frame(width: 360, height: 330)
                        .shadow(color: ColorManager .purple5, radius: 65, x: 30, y: 50)
                        .opacity(0.8)



                    VStack {
                 
                        Text("New Summer 2023 Feature")
                           .italic()
                           .font(.system(size: 20))
                           .fontWeight(.light)
                           .multilineTextAlignment(.center)
                           .foregroundColor(ColorManager .grey3)
                        
                        Spacer ()
                             .frame(height: 20)
                        
                        
                        NavigationLink( destination: EmptyView(),
//                               destination: AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                            label: {
                                Text("comming soon")
                                    .fontWeight(.thin)
                                    .frame(width: 235, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 23))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })


//
//                                                 Text("to trusted BFFs")
//                                                    .italic()
//                                                    .font(.system(size: 20))
//                                                    .fontWeight(.light)
//                                                    .multilineTextAlignment(.center)
//                                                    .foregroundColor(ColorManager .grey3)
//
                        
                           Spacer ()
                                .frame(height: 30)

                    }
                }
            }
        }
    }

}


