//
//  IntroBluemodeFriend.swift
//  BestFriends
//
//  Created by Social Tech on 5/7/22.
//


import Foundation
import SwiftUI


struct IntroBluemodeFriend: View {
    
    let user: User
    let friends: [User]
    let groups: [Group]
    let atmosphere: Atmosphere
    
    var body: some View {
        ZStack {
            ColorManager.grey4
                 .ignoresSafeArea()

//            ColorManager.grey3
//                  .ignoresSafeArea()
//
//            // Stars animation...
//            AdPlayerView(name: "backgroundAnimation")
//                .ignoresSafeArea()
//                .blendMode(.screen)
            VStack {
      
 

             Text("Not sure what to do after a")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
            
                 
                Text("HUGE FIGHT")
                    .font(.system(size: 60))
                    .foregroundColor(.purple)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Text("with a BFF")
                    .font(.system(size: 50))
                    .foregroundColor(.purple)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                Spacer()
                    .frame(height: 5)
                
                Text("(it's ok, most TEENS don't)")
                       .font(.system(size: 17))
                       .foregroundColor(.white)
                       .italic()
                       .fontWeight(.light)
                       .multilineTextAlignment(.center)
            VStack {
                    Spacer()
                        .frame(height: 70)
                    
                    NavigationLink(
                        destination: DramaMainView(user: user, friends: friends, groups: groups, atmosphere: atmosphere),
                        label: {
                            Text("Let us HELP you")
                                .fontWeight(.thin)
                                .frame(width: 250, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                    
                    Spacer()
                        .frame(height: 10)
                
              
                
                    Text("Step-by-Step things you can try")
                        .font(.system(size: 18))
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                      
                Spacer()
                    .frame(height: 45)
                Text("Getting you past ...")
                       .font(.system(size: 30))
                       .foregroundColor(.purple)
                       .italic()
                       .fontWeight(.light)
                       .multilineTextAlignment(.center)
                
                         Text("I'm Not Talking to YOU!")
                                .font(.system(size: 32))
                                .foregroundColor(.white)
                                
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                Spacer()
                    .frame(height: 125)
                
//                NavigationLink(
//                    destination: DramaMainView(),
//                    label: {
//                        Text("SKIP")
//                            .fontWeight(.thin)
//                            .frame(width: 175, height: 40)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 30))
//                            .background(ColorManager.grey2)
//                            .cornerRadius(15)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                    })

//
                    
                    
                }
            }
            
        }
    }
}

//
//struct IntroBluemodeFriend_Previews : PreviewProvider {
//    static var previews: some View {
//        IntroBluemodeFriend()
//    }
//}


