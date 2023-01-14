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
                        .foregroundColor(ColorManager .purple2)
                        .frame(width: 330, height: 330)
                        .shadow(color: ColorManager .purple5, radius: 65, x: 30, y: 50)
                        .opacity(0.8)



                    VStack {


                        Spacer ()
                            .frame(height: 60)
                        
                        Text("BestFriends")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color .white)

                      

                        Text("was designed by teen girls")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color .white)

                        Spacer ()
                            .frame(height: 35)
                        

                        Text("It's like they")
                            
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color .white)
                        
                        Text("really understand")
                        
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color .white)

                        Text("me and my friends")
                        
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color .white)


                        
                        
                         NavigationLink(
                            destination: INFOMainHowWorks(user: user),
                            label: {
                                Text("a peak Inside")
                                    .fontWeight(.thin)
                                    .frame(width: 200, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 30))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })


                           Spacer ()
                                .frame(height: 100)

                    }
                }
            }
        }
    }

}

