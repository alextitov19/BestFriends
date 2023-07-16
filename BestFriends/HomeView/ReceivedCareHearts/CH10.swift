//
//  CH10.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/11/23.
//

//import SwiftUI
//
//struct CH10: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct CH10_Previews: PreviewProvider {
//    static var previews: some View {
//        CH10()
//    }
//}


import Foundation
import SwiftUI
import AVKit

struct CH10: View {

    let user: User
    let friends: [User]
    let groups: [Group]
    let atmosphere: Atmosphere

    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0


    var body: some View {

        ZStack {

        

            Image("CareHeart 2")
                .ignoresSafeArea()
                .scaledToFit()

                
//            AdPlayerView(name: "Galaxy2")
//                .ignoresSafeArea()
//                .blendMode(.screen)


            ZStack{




                VStack {

              

                        NavigationLink(destination: CH9(user: user, friends: friends), label: {
                            HugCircle (color: Color.pink, friendName: "jump up \nand catch \nyour kiss")
                        })
                        .offset(x: showItems ? 85 : 0, y: showItems ? 400: 0)
                        .shadow(color: Color .pink, radius: 10, x: 10, y: 10)
                        .opacity(0.4)

                    NavigationLink(destination: VirtualHug(user: user, friends: friends), label: {
                        HugCircle (color: ColorManager.orange5, friendName: "grab your \nhug")
                    })
                    .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                    .shadow(color: Color.yellow, radius: 10, x: 10, y: 10)
    //                    .opacity(0.6)
                    .opacity(0.4)

                    
                    NavigationLink(destination: CH6(user: user, friends: friends), label: {
                        HugCircle (color: ColorManager .orange2, friendName: "ahhh!... you \ngot a heart")
                    })
                    .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                    
                    .opacity(0.3)
                    
                  
                    NavigationLink(destination: CH7(user: user, friends: friends), label: {
                        HugCircle (color: ColorManager .grey1, friendName: "you got \nnew music!")
                    })
                    .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
                    .shadow(color: Color .blue, radius: 10, x: 10, y: 10)
                    .opacity(0.3)
                    
 
                        VStack {

                            Spacer ()
                                .frame(height: 155)


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


        struct HugCircle: View {
            var color: Color
            var friendName: String

            var body: some View {

                ZStack {

                    Image(systemName: "heart.fill")
                        .resizable()
                        .foregroundColor(color)
                    //                            .foregroundColor(ColorManager .purple2)
                        .frame(width: 200, height: 150)
                        .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)

                    Text(friendName)
                        .fontWeight(.light)
                        .font(.system(size: 20))
                        .italic()
                        .foregroundColor(.black)

                }
            }
        }


    }




//  ***************************************
      

//                    NavigationLink(destination: SendHomie(user: user, friends: friends), label: {
//                        HugCircle (color: ColorManager .grey3, friendName: "send a \nfist pump")
//                    })
//                    .offset(x: showItems ? 30 : 0, y: showItems ? -170: 0)
//                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
////                    .opacity(0.65)
//                    .opacity(0.3)








//                    NavigationLink(destination: EmptyView(), label: {
//                        HugCircle (color: ColorManager.grey3, friendName: "CareHeart \nCoupons")
//                    })
//                    .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
//                    .shadow(color: ColorManager .orange4, radius: 10, x: 10, y: 10)
//    //                    .opacity(0.6)
//                    .opacity(0.65)
//

//




//
//                        Image(systemName: "heart.fill")
//                            .resizable()
//                            .foregroundColor(ColorManager .purple1)
//                            .frame(width: 250, height: 200)
//                        //                    .blur(radius: 2)
//                            .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50) .opacity(0.99)
//                            .opacity(0.70)



      //                    NavigationLink(destination: HurtFeelings(user: user, friends: friends, groups: groups, atmosphere: atmosphere), label: {
      //                        HugCircle (color: ColorManager .grey1, friendName: "MORE \nCareHearts")
      //                    })
      //                    .offset(x: showItems ? 50 : 0, y: showItems ? 50: 0)
      //                    .shadow(color: ColorManager .grey1, radius: 10, x: 10, y: 10)
      //                    .opacity(0.65)
      
//                    NavigationLink(destination: PhotoPopView(user: user, friends: friends), label: {
//                        HugCircle (color: ColorManager .purple4, friendName: "send a \nPhotoPOP")
//                    })
//                    .offset(x: showItems ? -60 : 0, y: showItems ? 350: 0)
//                    .shadow(color: ColorManager .purple5, radius: 10, x: 10, y: 10)
//    //                .opacity(0.85)
//                    .opacity(0.65)



//
//                    NavigationLink(destination: InfoWhyLoveBF(user: user, friends: friends), label: {
//                        HugCircle (color: ColorManager.purple1, friendName: "you looked \nnice \ntoday")
//                    })
//                    .offset(x: showItems ? 120 : 0, y: showItems ? -270: 0)
//                    .shadow(color: ColorManager .purple2, radius: 10, x: 10, y: 10)
////                    .opacity(0.6)
//                    .opacity(0.65)
//
//

//
//
//
//                    NavigationLink(destination: SendHomie(user: user, friends: friends), label: {
//                        HugCircle (color: ColorManager .grey3, friendName: "send a \nfist pump")
//                    })
//                    .offset(x: showItems ? 30 : 0, y: showItems ? -170: 0)
//                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
////                    .opacity(0.65)
//                    .opacity(0.65)

//
//                NavigationLink(destination: HurtFeelings(user: user, friends: friends, groups: groups, atmosphere: atmosphere), label: {
//                    HugCircle (color: Color .green, friendName: "MORE \nCareHearts")
//                })
//                .offset(x: showItems ? 0 : 0, y: showItems ? -100: 0)
//                .shadow(color: ColorManager .grey1, radius: 10, x: 10, y: 10)
//                .opacity(0.8)

//
//                NavigationLink(destination: HugPushNotification(user: user, friends: friends), label: {
//                    HugCircle (color: ColorManager.purple1, friendName: "send a \nhug")
//                })
//                .offset(x: showItems ? 80 : 0, y: showItems ? -200: 0)
//                .shadow(color: ColorManager .orange4, radius: 10, x: 10, y: 10)
////                    .opacity(0.6)
//                .opacity(0.65)



//
//                    NavigationLink(destination: EmptyView(), label: {
//                        HugCircle (color: ColorManager .purple5, friendName: "MORE \nCareHearts")
//                    })
//                    .offset(x: showItems ? 50 : 0, y: showItems ? 50: 0)
//                    .shadow(color: ColorManager .grey1, radius: 10, x: 10, y: 10)
//                    .opacity(0.65)
//

