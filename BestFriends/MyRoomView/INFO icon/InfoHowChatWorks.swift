//
//  HowChatWorks.swift
//  BestFriends
//
//  Created by Social Tech on 12/19/22.
//



import SwiftUI

struct InfoHowChatWorks: View {
    @State private var selectedIndex = 0
    
    var sentences = [
        "Yes, yes, yes!: \n\nYour friends are 'always' \nhere for you on \n\nBestFriends",
        "Look Up: \n\nYour friend just blew a kiss \nin your direction \n\njump up high and catch it",
        "Your friend sent a PhotoPOP: \n\nShake you iPhone and friend's \nimage pops up full-screen",
        "Tough day? \n\nYour friend sent a HUG, \nhold phone to your heart \n\nyep, it vibrates",
        "That's Right: \n\nWe even let you know when \na friend is ready to talk \nafter a fight",
        "Your friends love you: \n\nRedeem a Friendship Coupon",
    ]
    
    var body: some View {
        ZStack { // Use a ZStack to layer the views
            // Background Image
            Image("FHBackground")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            Spacer()
            
            // Purple Rectangular Section
            VStack {
//                Spacer ()
//                    .frame(height: 30)
         
                
                
                VStack(spacing: 16) {
                    Spacer().frame(height: 250) // Add spacer with height to push content down
                    
                    ZStack {
                        // ScrollView
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack(spacing: 16) {
                                ForEach(0..<sentences.count, id: \.self) { index in
                                    Text(sentences[index])
                                        .foregroundColor(.white)
                                        .font(.system(size: 30, weight: .light))
                                    //                                    .font(.title)
                                        .opacity(index == selectedIndex ? 1 : 0.5)
                                        .frame(maxWidth: .infinity)
                                        .cornerRadius(15)
                                        .id(index)
                                }
                            }
                            .padding(16)
                            .background(Color.purple)
                            .opacity(0.8)
                            .cornerRadius(10)
                            .frame(height: 350) // Adjust the height as needed
                            .onAppear {
                                selectedIndex = 0 // Set initial selected index
                            }
                        }
                        
                     
                        
                        // Name Tag
                        //                    Text("Name Tag")
                        //                        .foregroundColor(.white)
                        //                        .font(.headline)
                        //                        .padding(8)
                        //                        .background(Color.blue)
                        //                        .cornerRadius(8)
                        //                        .offset(x: -120, y: -200) // Adjust the offset as needed
                        //                        .shadow(color: .black, radius: 3, x: 0, y: 2) // Add a shadow
                        //                        .alignmentGuide(.leading) { $0[.leading] }
                    }
                    
                    Spacer()
                        .frame(height: 40)// Push the content to the bottom
                }
                Text("For Real-time FriendGroups \nplease turn Notification 'ON'")
                    .fontWeight(.light)
                    .frame(width: 200, height: 60)
                    .foregroundColor(ColorManager .grey4)
                    .font(.system(size: 13))
                    .background(Color.green)
                    .cornerRadius(15)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                
                .padding()
                .frame(maxHeight: .infinity) // Extend the height to the maximum
                
              
            }
        }
    }
    
}
//struct InfoHowChatWorks_Previews: PreviewProvider {
//    static var previews: some View {
//        FH1()
//    }
//}


//**********************************************************************
//********************************************************

//import Foundation
//import SwiftUI
//
//
//struct InfoHowChatWorks: View {
//
//    @EnvironmentObject var sessionManager: SessionManager
//
//
//    let user: User
//
//
//    var body: some View {
//        ZStack {
//
//
//            ColorManager.grey4
//                .ignoresSafeArea()
//                .onAppear()
//
//            VStack {
//
//                Text("My")
//                    .font(.system(size: 30, weight: .bold))
//                    .foregroundColor(Color .white)
//                    .shadow(color: .black, radius: 1, x: 0, y: 1)
//                    .opacity(0.50)
//                    .multilineTextAlignment(.center)
//
//                Text("Real-time Friendships")
//                    .font(.system(size: 30, weight: .bold))
//                    .foregroundColor(Color .white)
//                    .shadow(color: .black, radius: 1, x: 0, y: 1)
//                    .opacity(0.50)
//                    .multilineTextAlignment(.center)
//
//
//
//
//
//                Spacer()
//                    .frame(height: 10)
//
//                Text("Please turn 'ON' notifications for BestFriends")
//                    .font(.system(size: 15, weight: .regular))
//                    .italic()
//                    .foregroundColor(Color.green)
//                    .opacity(0.50)
//                    .multilineTextAlignment(.center)
//
//
//
//
//                ZStack {
//
//                    Spacer()
//                        .frame(height: 90)
//
//                    VStack {
//
//
//
//                    }
//
//                    Image(systemName: "circle.fill")
//                        .resizable()
//                        .foregroundColor(Color.purple)
//                        .frame(width: 450, height: 450)
//                        .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
//                        .opacity(0.95)
//
//
//
//                    VStack {
//
//
//                        Spacer()
//                            .frame(height: 10)
//
//
//
//                        Spacer()
//                            .frame(height: 10)
//
//                        Text("- Friends that are 'always' here for you")
//                            .font(.system(size: 16, weight: .light))
//                            .foregroundColor(Color.white)
//                            .opacity(0.50)
//                            .multilineTextAlignment(.center)
//
//                        Spacer()
//                            .frame(height: 10)
//
//                        Text("- Your friend just blew a kiss - jump up & catch it")
//                            .font(.system(size: 16, weight: .light))
//                            .foregroundColor(Color.white)
//                            .opacity(0.50)
//                            .multilineTextAlignment(.center)
//
//                        Spacer()
//                            .frame(height: 10)
//
//                        Text("- Your friend just sent an image, \njust 'shake' you iPhone to see it")
//                            .font(.system(size: 15, weight: .light))
//                            .foregroundColor(Color.white)
//                            .opacity(0.50)
//                            .multilineTextAlignment(.center)
//
//
//
//                        VStack {
//
//                            Spacer()
//                                .frame(height: 10)
//
//
//                            Text("- Tough day - hold your phone to your heart \nyour friend's virtual HUG vibrates your phone")
//                                .font(.system(size: 15, weight: .light))
//                                .foregroundColor(Color.white)
//                                .opacity(0.50)
//                                .multilineTextAlignment(.center)
//                            Spacer()
//                                .frame(height: 10)
//
//
//                            Text("- We even let you know when a friend is \nready to talk after a fight")
//                                .font(.system(size: 15, weight: .light))
//                                .foregroundColor(Color.white)
//                                .opacity(0.50)
//                                .multilineTextAlignment(.center)
//
//                            Spacer()
//                                .frame(height: 10)
//
//                            Text("- Redeem a Friendship Coupon")
//                                .font(.system(size: 15, weight: .light))
//                                .foregroundColor(Color.white)
//                                .opacity(0.50)
//                                .multilineTextAlignment(.center)
//
//
//                            Spacer()
//                                .frame(height: 10)
////
////
////
////                                                       Text("and more cool stuff")
////                                                           .font(.system(size: 19, weight: .bold))
////                                                          .foregroundColor(Color .white)
////                                                           .shadow(color: .black, radius: 1, x: 0, y: 1)
////                                                          .opacity(0.50)
////                                                          .multilineTextAlignment(.center)
//                        }
//                    }
//
//
//
//
//
//
//                }
//            }
//
//        }
//    }
//
//
//}

//***************************************************************************
//*************************************************



//
//import Foundation
//import SwiftUI
//import AVKit
//
//struct InfoHowChatWorks: View {
//   
//    let user: User
//   
//    var body: some View {
//        
//        ZStack {
//            
//            ColorManager .purple1
//                .ignoresSafeArea()
//                .onAppear()
//            
//        
//            
//            
//            VStack {
//                
//                
//                Text("How Chat Works")
//                    .font(.system(size: 35))
//                    
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager.grey2)
//             
//                
//                ZStack {
//                    
//                    
//                    Image(systemName: "circle.fill")
//                        .resizable()
//                        .foregroundColor(ColorManager .purple1)
//                        .frame(width: 335, height: 335)
//                        .shadow(color: ColorManager .pmbc_blue, radius: 65, x: 30, y: 50)
//                        .opacity(0.95)
//                    
//                    
//                    
//                    VStack {
//                        
//                        
//                        Spacer ()
//                            .frame(height: 75)
//                        
//                        Text("Long-tap messages to:")
//                            .font(.system(size: 20))
//                            .fontWeight(.regular)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager .grey2)
//                        
//                        Text("-save message to SmileVault")
//                            .font(.system(size: 15))
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager .grey4)
//                    
//                        
//                        Text("-Report Abuse")
//                            .font(.system(size: 15))
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager .grey4)
//                        
//                        Spacer ()
//                            .frame(height: 15)
//                        
//                        Text("Tap [Remove Me] at top of Chat")
//                            .font(.system(size: 20))
//                            .fontWeight(.regular)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager .grey2)
//                        
//                        
//                        Text("to be removed from room")
//                            .font(.system(size: 15))
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager .grey4)
//                        
//                        
//                        Spacer ()
//                            .frame(height: 15)
//
//                        VStack {
//                            Text("Sending Images")
//                                .font(.system(size: 20))
//                                .fontWeight(.regular)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(ColorManager .grey2)
//                            
//                            Text("-image shows as camera icon")
//                                .font(.system(size: 15))
//                                .fontWeight(.light)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(ColorManager .grey4)
//                        
//                            
//                            Text("-tap icon to see image \ntap image to reduce size")
//                                .font(.system(size: 15))
//                                .fontWeight(.light)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(ColorManager .grey4)
//                            
//                            Spacer ()
//                                .frame(height: 15)
//
//
//                            Text("*** MANUAL scroll")
//                                .font(.system(size: 20))
//                                .fontWeight(.regular)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(ColorManager .grey2)
//                            
//                            
//                            Spacer ()
//                                .frame(height: 100)
//                            
//                        }
//                        
//                    }
//                }
//            }
//        }
//    }
//    
//}
// 
