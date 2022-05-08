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
                
                Text("fights between members cause")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                 
                Spacer()
                    .frame(height: 5)
                 
                Text("Drama in Group")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .fontWeight(.light)
                   
                
            VStack {
                    Spacer()
                        .frame(height: 60)
                    
                    NavigationLink(
                        destination: FightWithFriend(),
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
                
                Text("what does everyone suggest")
                    .font(.system(size: 30))
                    .italic()
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                
                
                Text("to fix this ")
                    .font(.system(size: 80))
                    .foregroundColor(.blue)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
              
                
                    Text("kdkdkdkdkdk")
                        .font(.system(size: 25))
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                       
               
                    
                    
                    
                    
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


