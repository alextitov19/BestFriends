//
//  SaySomethingNice6.swift
//  BestFriends
//
//  Created by Social Tech on 11/30/22.
//

//

import Foundation
import SwiftUI


struct SaySomethingNice6: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
   let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let groups: [Group]
    let friendAtmospheres: [Atmosphere]

    var body: some View {
        ZStack {
//            ColorManager.grey4
//                .ignoresSafeArea()
//                .onAppear()
            
            Image("purpleBackground")
                 .resizable()
                 .ignoresSafeArea()
                 .scaledToFill()
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)

            
            VStack {
         
                Text("BestFriends")
                    .font(.system(size: 27))
                
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                
                Text("is about friendships")
                    .font(.system(size: 25))
                    .italic()
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 50)
                
                Text("If you don't add friends")
                    .font(.system(size: 25))
                
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Text("this app doesn't work")
                    .font(.system(size: 35))
                
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                

            
                Spacer()
                    .frame(height: 70)
                
            VStack {
           
              
             
                
                
                NavigationLink(
                    destination: PickMediator(user: user, atmosphere: atmosphere, friends: friends,  friendAtmospheres: friendAtmospheres, groups: groups),
                    label: {
                        Text("Why build a \nmixed friend group")
                            .fontWeight(.thin)
                            .frame(width: 220, height: 60)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 25))
                            .background(ColorManager.purple3)
                            .cornerRadius(7)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            .opacity(0.50)
                    })
                
        
                
                
                
          NavigationLink(
              
              destination: InviteView(user: user, atmosphere: atmosphere, friends: friends,  friendAtmospheres: friendAtmospheres, groups: groups),
              label: {
                  Text("Invite your friends")
                      .fontWeight(.light)
                      .foregroundColor(Color.white)
                      .frame(width: 220, height: 60)
                      .font(.system(size: 25))
                      .background(ColorManager.pmbc_green)
                      .cornerRadius(7)
                      .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                      
              })
          
                
                
                
                
                Spacer()
                    .frame(height: 50)
                
                
                        NavigationLink(
                            destination: INFOMainHowWorks(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                            label: {
                                Text("Walk-through")
                                    .fontWeight(.light)
                                    .frame(width: 220, height: 60)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 25))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(7)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    .opacity(0.50)
                            })
                 
                
                
                Spacer()
                    .frame(height: 30)
                
                
                        
                NavigationLink(
                    destination: INFOPreload2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                    label: {
                        Text("University 'Launch Party' schedule")
                            .fontWeight(.light)
                            .frame(width: 220, height: 90)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 25))
                            .background(ColorManager.purple3)
                            .cornerRadius(7)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            .opacity(0.50)
                    })
         
                
                        
                        
                        Spacer()
                            .frame(height: 15)
                        
     
                 
                    }
                }
                
            }
      }
}

        
    
    



//import Foundation
//import SwiftUI
//
//struct SaySomethingNice6: View {
//
//    @EnvironmentObject var sessionManager: SessionManager
//
//    let user: User
//    let atmosphere: Atmosphere
//    let friends: [User]
//
//    var body: some View {
//
//        VStack {
//
//
//            ZStack {
//
//                ColorManager.grey4
//                    .ignoresSafeArea()
//                    .onAppear()
//    //
//    //            Image("girlwalking")
//    ////                .frame(width: 300, height: 20)
//    //                .resizable()
//    //                .scaledToFill()
//    //                .ignoresSafeArea()
//    //
//    //                      Spacer()
//    //                          .frame(height: 0)
//    //
//
//
//
//        VStack {
//
//
//
//            VStack {
//
//
//                VStack {
//
//                    Text("When you send 'Nice' message")
//                        .font(.system(size: 30))
//
//                        .fontWeight(.regular)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager .purple3)
//
//                    Spacer()
//                        .frame(height: 30)
//
//                    Text("Your friend will get a")
//                        .font(.system(size: 25))
//                        .foregroundColor(Color.white)
//                        .fontWeight(.thin)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager .purple3)
//
//                    Text("Push Notification")
//                        .font(.system(size: 25))
//                        .foregroundColor(Color.white)
//                        .fontWeight(.thin)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager .purple3)
//
//                    Spacer()
//                        .frame(height: 30)
//
////                    Text("They Tap it")
////                        .font(.system(size: 30))
////
////                        .fontWeight(.regular)
////                        .multilineTextAlignment(.center)
////                        .foregroundColor(ColorManager .purple3)
////
//                    Spacer()
//                        .frame(height: 60)
//
//                    Text("Step 1: On homepage they tap \nyour planet")
//                        .font(.system(size: 18))
//                        .italic()
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager .purple3)
//
//                    Spacer()
//                        .frame(height: 20)
//
//
//                    Text("Step 2: Select [Friend sent 'Nice' \nmessage} from dropdown")
//                        .font(.system(size: 18))
//                        .italic()
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager .purple3)
//
//                VStack {
//
//                Spacer()
//                    .frame(height: 140)
//
//        }
//    }
//
//}
//}
//}
//}
//}
//}
//
//
//
