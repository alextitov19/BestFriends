//
//  HurtFeelings.swift
//  BestFriends
//
//  Created by Social Tech on 6/14/22.
//





import Foundation
import SwiftUI
import AVKit

struct HurtFeelings: View {

    let user: User
    let friends: [User]
    let groups: [Group]
    let atmosphere: Atmosphere

    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0


    var body: some View {

        ZStack {
            
//            ColorManager.purple7
//                .opacity(0.6)
//                .ignoresSafeArea()
//
//            AdPlayerView(name: "sky2")
//                .ignoresSafeArea()
//                .blendMode(.screen)

            Image("KellyBackground 1")
                .ignoresSafeArea()
                .scaledToFit()

                
            AdPlayerView(name: "Galaxy2")
                .ignoresSafeArea()
                .blendMode(.screen)

            ZStack{

              

                    NavigationLink(destination: InfoWhyLoveBF(user: user, friend: user, friends: friends, groups: groups), label: {
                        HugCircle (color: ColorManager.purple1, friendName: "you looked \nnice \ntoday")
                    })
                    .offset(x: showItems ? 120 : 0, y: showItems ? -270: 0)
                    .shadow(color: ColorManager .purple2, radius: 10, x: 10, y: 10)
//                    .opacity(0.6)
                    .opacity(0.65)


//                    NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), label: {
//                        HugCircle (color: ColorManager .orange2, friendName: "thinking \nof you")
//                    })
//                    .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
//                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
//                    .opacity(065)
//


         

//
//                NavigationLink(destination: PhotoPopView(user: user, friends: friends), label: {
//                    HugCircle (color: ColorManager .purple3, friendName: "PhotoPOP")
//                })
//                .offset(x: showItems ? -60 : 0, y: showItems ? 200: 0)
//                .shadow(color: ColorManager .pmbc_green, radius: 10, x: 10, y: 10)
////                .opacity(0.85)
//                .opacity(0.65)
//


                NavigationLink(destination: SaySomethingNice8(user: user, atmosphere: atmosphere, friends: friends), label: {
                    HugCircle (color: ColorManager .grey1, friendName: "say \nsomething \nnice")
                })
                .offset(x: showItems ? -50 : 0, y: showItems ? -300: 0)
                .shadow(color: ColorManager .grey1, radius: 10, x: 10, y: 10)
                .opacity(0.65)







                    NavigationLink(destination: EmptyView(), label: {
                        HugCircle (color: ColorManager .purple4, friendName: "TAP")
                    })
                    .offset(x: showItems ? 0 : 0, y: showItems ? 0: 0)
                    .shadow(color: ColorManager .grey1, radius: 10, x: 10, y: 10)
                    .opacity(0.65)






                VStack {

//                    NavigationLink(destination: HugPushNotification(user: user, friends: friends), label: {
//                        HugCircle (color: ColorManager.purple1, friendName: "send a \nhug")
//                    })
//                    .offset(x: showItems ? 80 : 0, y: showItems ? 400: 0)
//                    .shadow(color: ColorManager .orange4, radius: 10, x: 10, y: 10)
////                    .opacity(0.6)
//                    .opacity(0.65)
                    
                    NavigationLink(destination: SendSongPush(user: user, friends: friends), label: {
                        HugCircle (color: ColorManager .grey1, friendName: "send a \nsong")
                    })
                    .offset(x: showItems ? 80 : 0, y: showItems ? 400: 0)
                    .shadow(color: Color .blue, radius: 10, x: 10, y: 10)
                    .opacity(0.65)

//                        NavigationLink(destination: SendKisses(user: user, friends: friends), label: {
//                            HugCircle (color: ColorManager .red, friendName: "blowing \nkisses")
//                        })
//                        .offset(x: showItems ? 100 : 0, y: showItems ? 425: 0)
//                        .shadow(color: Color .white, radius: 10, x: 10, y: 10)
//                        .opacity(0.50)

                  
                    NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), label: {
                        HugCircle (color: ColorManager .orange2, friendName: "thinking \nof you")
                    })
                    .offset(x: showItems ? 100 : 0, y: showItems ? 425: 0)
                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                    .opacity(065)










                        Image(systemName: "heart.fill")
                            .resizable()
                            .foregroundColor(ColorManager .purple1)
                            .frame(width: 130, height: 100)
                        //                    .blur(radius: 2)
                            .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50) .opacity(0.99)
                            .opacity(0.70)


                        VStack {

                            Spacer ()
                                .frame(height: 255)


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
                        .frame(width: 130, height: 100)
                        .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)

                    Text(friendName)
                        .fontWeight(.light)
                        .italic()
                        .foregroundColor(.black)

                }
            }
        }


    }








//
//
//import Foundation
//import SwiftUI
//
//
//struct HurtFeelings: View {
//
//    @EnvironmentObject var sessionManager: SessionManager
//
//    let user: User
//    //    let atmosphere: Atmosphere
//    let friends: [User]
//    //    let groups: [Group]
//    //    let friendAtmospheres: [Atmosphere]
//
//    var body: some View {
//        ZStack {
//
//            Color .black
//                .ignoresSafeArea()
//                .onAppear()
//
//            //            Image("purpleBackground")
//            //                 .resizable()
//            //                 .ignoresSafeArea()
//            //                 .scaledToFill()
//            //
//            AdPlayerView(name: "sky2")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//
//
//            VStack {
//
//
//
//                Text("Image Sharing")
//                    .font(.system(size: 17))
//                    .italic()
//                    .foregroundColor(ColorManager.grey1)
//                    .fontWeight(.thin)
//                    .multilineTextAlignment(.center)
//
//
//                Spacer()
//                    .frame(height: 10)
//
//                Text("Shake your iPhone")
//                    .font(.system(size: 40))
//                    .foregroundColor(ColorManager.grey1)
//                    .fontWeight(.thin)
//                    .multilineTextAlignment(.center)
//
//                Text("(image friend just sent you)")
//                    .font(.system(size: 30))
//                    .italic()
//                    .foregroundColor(ColorManager.grey1)
//                    .fontWeight(.thin)
//                    .multilineTextAlignment(.center)
//
//                Spacer()
//                    .frame(height: 40)
//
//                Text("Pops Up")
//                    .font(.system(size: 50))
//                    .foregroundColor(ColorManager.grey1)
//                    .fontWeight(.thin)
//                    .multilineTextAlignment(.center)
//
//                Text("Full screen")
//                    .font(.system(size: 60))
//                    .foregroundColor(ColorManager.grey1)
//                    .fontWeight(.thin)
//                    .multilineTextAlignment(.center)
//
//                VStack {
//                    Spacer()
//                        .frame(height: 100)
//
//                    Text("(you're alerted via push notification)")
//                        .font(.system(size: 17))
//                        .italic()
//                        .foregroundColor(ColorManager.grey1)
//                        .fontWeight(.thin)
//                        .multilineTextAlignment(.center)
//
//
//                    Spacer()
//                        .frame(height: 20)
//
//                    VStack {
//
//
//
//                        NavigationLink(
//
//                            destination: PhotoPopView(user: user, friends: friends),
//                            label: {
//                                Text("Try it out")
//                                    .fontWeight(.light)
//                                    .foregroundColor(Color.white)
//                                    .frame(width: 230, height: 60)
//                                    .font(.system(size: 25))
//                                    .background(ColorManager.pmbc_green)
//                                    .cornerRadius(7)
//                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                            })
//
//
//
//                        Spacer()
//                            .frame(height: 75)
//
//
//
//                    }
//                }
//
//            }
//        }
//    }
//
//}
//
//
