//
//  NuclearOption.swift
//  BestFriends
//
//  Created by Social Tech on 4/28/22.
//


import Foundation
import SwiftUI
import AVKit

struct Step4_NuclearOption: View {

    let user: User
    let friends: [User]
//    let groups: [Group]
//    let atmosphere: Atmosphere

    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0


    var body: some View {

        ZStack {
            
            
                        ColorManager.grey4
                            .ignoresSafeArea()
            
//
//            ColorManager.purple7
//                .opacity(0.6)
//                .ignoresSafeArea()
                
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)


            ZStack{

              

                    NavigationLink(destination: Step2_FightLandingView(user: user, friends: friends), label: {
                        HugCircle (color: ColorManager.purple4, friendName: "when you're ready to \nreach out \n\nlet's try to fix this")
                    })
                    .offset(x: showItems ? 100 : 0, y: showItems ? -240: 0)
                    .shadow(color: ColorManager .purple1, radius: 30, x: 10, y: 10)
//                    .opacity(0.6)
                    .opacity(0.65)



                    NavigationLink(destination: BreathInView(), label: {
                        HugCircle (color: ColorManager .grey2, friendName: "just Breathe")
                    })
                    .offset(x: showItems ? 0 : 0, y: showItems ? 0: 0)
                    .shadow(color: ColorManager .grey1, radius: 20, x: 10, y: 10)
                    .opacity(0.65)






                VStack {


                    
                    NavigationLink(destination: SendSongPush(user: user, friends: friends), label: {
                        HugCircle (color: Color.orange, friendName: "You were best friends \nbefore & you will \nbe again")
                    })
                    .offset(x: showItems ? 80 : 0, y: showItems ? 400: 0)
//                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                    .opacity(0.4)


                    NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), label: {
                        HugCircle (color: Color.orange, friendName: "Remenber; sharp words \nerase all the nice words \nyou've ever said")
                    })
                    .offset(x: showItems ? -100 : 0, y: showItems ? 325: 0)
//                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                    .opacity(0.9)



                    ZStack {
                        
                        Image(systemName: "circle.fill")
                            .resizable()
                            .foregroundColor(ColorManager .purple1)
                            .frame(width: 50, height: 50)
                        //                    .blur(radius: 2)
                            .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50) .opacity(0.99)
                            .opacity(0.70)
                        
                        Text("Tap")
                            .font(.system(size: 15, weight: .light))
//                            .italic()
                            .fontWeight(.light)
                            .foregroundColor(ColorManager .grey4)
                            .multilineTextAlignment(.center)
                    }
                        
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

                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(color)
                    //                            .foregroundColor(ColorManager .purple2)
                        .frame(width: 200, height: 200)
//                        .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)

                    Text(friendName)
                        .fontWeight(.light)
                        .italic()
                        .foregroundColor(.white)

                }
            }
        }


    }


//*********************************************************

//******************************************

//import Foundation
//import SwiftUI
//
//
//struct Step4_NuclearOption: View {
//
//    @EnvironmentObject var sessionManager: SessionManager
//
//    let user: User
//    let friends: [User]
//
//    var body: some View {
//
//        ZStack {
//
//            ColorManager.grey4
//                .ignoresSafeArea()
//
//
//            VStack {
//
//                VStack {
//
//
//                    Text("first let's")
//                        .font(.system(size: 15, weight: .light))
//                        .italic()
//                        .fontWeight(.light)
//                        .foregroundColor(ColorManager .grey1)
//                        .multilineTextAlignment(.center)
//
//
//                    NavigationLink(
//                        destination: BreathInView(),
//                        label: {
//                            Text("Breathe")
//                                .fontWeight(.thin)
//                                .frame(width: 275, height: 40)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 30))
//                                .background(ColorManager.pmbc_blue)
//                                .cornerRadius(15)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                        })
//
//                    Spacer()
//                        .frame(height: 60)
//
////                    Image(systemName: "circle.fill")
////                        .resizable()
////                        .foregroundColor(Color.orange)
////                        .frame(width: 400, height: 400)
////                        .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
////                        .opacity(0.95)
//
//                    Text("remember")
//                        .font(.system(size: 15, weight: .light))
//                        .italic()
//                        .fontWeight(.light)
//                        .foregroundColor(ColorManager .grey1)
//                        .multilineTextAlignment(.center)
//
//                    Text("Sharp words erase all the nice words you've ever said.")
//                        .fontWeight(.light)
//                        .foregroundColor(Color.white)
//                        .italic()
//                        .multilineTextAlignment(.center)
//                        .frame(width: 300, height: 80, alignment: .leading)
//                        .font(.system(size: 25))
//                        .padding(10)
//                        .background(Color.orange)
//                        .cornerRadius(25)
//                        .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
//
//                }
//
//                Spacer()
//                    .frame(height: 30)
//
//                Text("believe")
//                    .font(.system(size: 15, weight: .light))
//                    .italic()
//                    .fontWeight(.light)
//                    .foregroundColor(ColorManager .grey1)
//                    .multilineTextAlignment(.center)
//
//                Text("You were best friends before and you will be again!")
//                    .fontWeight(.light)
//                    .foregroundColor(Color.white)
//                    .italic()
//                    .multilineTextAlignment(.center)
//                    .frame(width: 300, height: 80, alignment: .leading)
//                    .font(.system(size: 25))
//                    .padding(10)
//                    .background(Color.orange)
//                    .cornerRadius(25)
//                    .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
//
//
//                Spacer()
//                    .frame(height: 80)
//
//
//
//                Text("when you're ready to reach out")
//                    .font(.system(size: 15, weight: .light))
//                    .italic()
//                    .fontWeight(.light)
//                    .foregroundColor(ColorManager .grey1)
//                    .multilineTextAlignment(.center)
//
//                NavigationLink(
//                    destination: Step2_FightLandingView(user: user, friends: friends),
//                    label: {
//                        Text("Let's try to fix this")
//                            .fontWeight(.thin)
//                            .frame(width: 310, height: 40)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 30))
//                            .background(ColorManager.purple3)
//                            .cornerRadius(15)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                    })
//
//
//
//                VStack {
//
//
//                    Spacer()
//                        .frame(height: 15)
//
//                    Button(action: {
//                        sessionManager.showLogin()
//                    },
//                           label: {
//                        Image("home-alt2")
//                            .frame(width: 50, height: 25)
//                            .foregroundColor(.white)
//                            .font(.system(size: 20))
//                            .background(ColorManager .grey3)
//                            .cornerRadius(15)
//                            .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
//                            .opacity(0.70)
//
//                    })
//
//                }
//            }
//
//        }
//    }
//
//}
//

