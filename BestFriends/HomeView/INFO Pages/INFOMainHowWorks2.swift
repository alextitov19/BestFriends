//
//  INFOMainHowWorks2.swift
//  BestFriends
//
//  Created by Social Tech on 1/11/23.
//

import Foundation


import Foundation
import SwiftUI
import AVKit

struct INFOMainHowWorks2: View {

    let user: User
//    let friends: [User]
//    let groups: [Group]
//    let atmosphere: Atmosphere

    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0


    var body: some View {

        ZStack {
            
                        ColorManager.purple1
                            .ignoresSafeArea()
                            .onAppear()


//
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//                .opacity(0.5)
//
//
//
//            AdPlayerView(name: "AloneBeach")
//                .ignoresSafeArea()
//                .blendMode(.screen)


            ZStack{

                NavigationLink(destination: EmptyView(), label: {
                    BrandingCircle (color: ColorManager.purple1, friendName: "They \nreally \nunderstand \nme")
                })
                .offset(x: showItems ? 120 : 0, y: showItems ? -270: 0)
                .shadow(color: ColorManager .purple2, radius: 10, x: 10, y: 10)




                    NavigationLink(destination: EmptyView(), label: {
                        BrandingCircle (color: ColorManager .grey1, friendName: "Like \nthey built \nit \njust")
                    })
                    .offset(x: showItems ? 30 : 0, y: showItems ? -170: 0)
                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)



//
//                NavigationLink(destination: EmptyView(), label: {
//                    BrandingCircle (color: ColorManager .grey1, friendName: "for me \n& my \nfriends")
//                })
//                .offset(x: showItems ? 0 : 0, y: showItems ? 0: 0)
//                .shadow(color: ColorManager .grey1, radius: 10, x: 10, y: 10)
//





                    Image(systemName: "heart.fill")
                        .resizable()
                        .foregroundColor(ColorManager .purple1)
                        .frame(width: 30, height: 30)
                    //                    .blur(radius: 2)
                        .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50) .opacity(0.99)
                        .opacity(0.70)


                    VStack {

                        Spacer ()
                            .frame(height: 10)

                        Text("?")
                            .font(.system(size: 25))

                            .foregroundColor(ColorManager .red)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                        //                            .shadow(color: .black, radius: 1, x: 0, y: 1)

                      
                    }
                }



                .onTapGesture {
                    withAnimation {
                        self.showItems.toggle()
                    }
                    print("tap function is working")
                }

                .animation(Animation.easeInOut(duration: 1.7), value: showItems)

            }
        }
    }


    struct BrandingCircle: View {
        var color: Color
        var friendName: String

        var body: some View {

            ZStack {

                Image(systemName: "circle.fill")
                            .resizable()
                            .foregroundColor(color)
//                            .foregroundColor(ColorManager .purple2)
                            .frame(width: 130, height: 100)
                            .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)

                Text(friendName)
                    .fontWeight(.light)
                    .italic()
                    .foregroundColor(.black)

            }
        }
    }



