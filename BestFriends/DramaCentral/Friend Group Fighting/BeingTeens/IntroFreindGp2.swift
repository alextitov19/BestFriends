//
//  IntroFreindGp2.swift
//  BestFriends
//
//  Created by Social Tech on 7/4/22.
//


import Foundation
import SwiftUI


struct IntroFriendGp2: View {
    
    let user: User
    let friends: [User]
    let groups: [Group]
    
    
    
    var body: some View {
        ZStack {
            ColorManager.grey4
                  .ignoresSafeArea()
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
            //
            //
            //                AdPlayerView(name: "backgroundAnimation")
            //                    .ignoresSafeArea()
            //                    .blendMode(.screen)
            //                    .offset(y: -250)
            //
            VStack {
      
 

             Text("")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                Text("Drama in your")
                    .font(.system(size: 50))
                    .foregroundColor(.blue)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                 
                
                 Spacer()
                     .frame(height: 5)
                
                Text("FRIEND GROUP")
                    .font(.system(size: 55))
                    .foregroundColor(.blue)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
               
                Spacer()
                    .frame(height: 5)
                
                Text("(what's new, right!)")
                       .font(.system(size: 20))
                       .foregroundColor(.white)
                       .italic()
                       .fontWeight(.light)
                       .multilineTextAlignment(.center)
            VStack {
                    Spacer()
                        .frame(height: 70)
                    
                    NavigationLink(
                        destination: FG_VideoCall(user: user, friends: friends, groups: groups),
                        label: {
                            Text("Some Ideas for Your Group")
                                .fontWeight(.thin)
                                .frame(width: 315, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 28))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                    
                    Spacer()
                        .frame(height: 10)
                
              
                
                    Text("We'll try our best to help")
                        .font(.system(size: 18))
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                      
//                Spacer()
//                    .frame(height: 45)
//                Text("To get past ...")
//                       .font(.system(size: 30))
//                       .foregroundColor(.green)
//                       .italic()
//                       .fontWeight(.light)
//                       .multilineTextAlignment(.center)
//
//                         Text("I'm Not Talking to YOU!")
//                                .font(.system(size: 32))
//                                .foregroundColor(.white)
//
//                                .fontWeight(.light)
//                                .multilineTextAlignment(.center)
//                Spacer()
//                    .frame(height: 45)
//
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
//struct IntroFriendGp2_Previews : PreviewProvider {
//    static var previews: some View {
//        IntroFriendGp2(user: user, friends: friends, groups: groups)
//    }
//}
//

