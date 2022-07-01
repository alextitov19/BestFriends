//
//  IntroBluemodeFriend.swift
//  BestFriends
//
//  Created by Social Tech on 5/7/22.
//


import Foundation
import SwiftUI


struct IntroBluemodeFriend: View {
    
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
      
 

             Text("Not sure what to do after")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .italic()
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                 
                Spacer()
                    .frame(height: 15)
                 
                Text("HUGE FIGHT")
                    .font(.system(size: 70))
                    .foregroundColor(.blue)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Text("with BFF")
                    .font(.system(size: 50))
                    .foregroundColor(.blue)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                Spacer()
                    .frame(height: 35)
                
                Text("You're NOT ALONE")
                       .font(.system(size: 25))
                       .foregroundColor(.white)
                       .italic()
                       .fontWeight(.light)
                       .multilineTextAlignment(.center)
            VStack {
                    Spacer()
                        .frame(height: 15)
                    
                    NavigationLink(
                        destination: DramaMainView(),
                        label: {
                            Text("We can fix this")
                                .fontWeight(.thin)
                                .frame(width: 250, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                    
                    Spacer()
                        .frame(height: 60)
                
              
                
                    Text("- Become friends again \n- Minimizing hurt feelings")
                        .font(.system(size: 20))
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                      
                Spacer()
                    .frame(height: 15)
                Text("Get past ...")
                       .font(.system(size: 25))
                       .foregroundColor(.white)
                       .italic()
                       .fontWeight(.light)
                       .multilineTextAlignment(.center)
                         Text("I'm Not Talking to YOU!")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                                .italic()
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                Spacer()
                    .frame(height: 45)
                
                NavigationLink(
                    destination: DramaMainView(),
                    label: {
                        Text("SKIP")
                            .fontWeight(.thin)
                            .frame(width: 175, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.grey2)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })

//
                    
                    
                }
            }
            
        }
    }
}


struct IntroBluemodeFriend_Previews : PreviewProvider {
    static var previews: some View {
        IntroBluemodeFriend()
    }
}


