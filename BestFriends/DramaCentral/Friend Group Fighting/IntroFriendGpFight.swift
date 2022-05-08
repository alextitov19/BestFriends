//
//  IntroFriendGpFight.swift
//  BestFriends
//
//  Created by Social Tech on 5/8/22.
//



import Foundation
import SwiftUI


struct IntroFriendGpFight: View {
    
    var body: some View {
        ZStack {
          
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            //
            //
            //                AdPlayerView(name: "backgroundAnimation")
            //                    .ignoresSafeArea()
            //                    .blendMode(.screen)
            //                    .offset(y: -250)
            //
            VStack {
      
                
                Text("Problem")
                    .font(.system(size: 70))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 20)
                
                Text("How fix fights between ")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                 
                Spacer()
                    .frame(height: 5)
                 
                Text("Friend Group Members?")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .fontWeight(.light)
                   
                
            VStack {
                    Spacer()
                        .frame(height: 60)
                    
                    NavigationLink(
                        destination: Step1FG_SuggestedSolutions(),
                        label: {
                            Text("NEXT")
                                .fontWeight(.thin)
                                .frame(width: 100, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                    
                    Spacer()
                        .frame(height: 60)
                
                Text("Adults Suggest")
                    .font(.system(size: 40))
                    .fontWeight(.light)
                    .foregroundColor(Color.blue)
               
                Spacer()
                    .frame(height: 10)
                
                Text("- Don't get involved in fight\n- Don't pick sides \n- Don't personalize their fight \n- The two fighting must fix it")
                    .font(.system(size: 23))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    
                    
                    
                    
                }
            }
            
        }
    }
}


struct IntroFriendGpFight_Previews : PreviewProvider {
    static var previews: some View {
        IntroFriendGpFight()
    }
}


