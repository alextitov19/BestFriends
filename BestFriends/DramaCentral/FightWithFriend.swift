//
//  FiightWithFriend.swift
//  BestFriends
//
//  Created by Social Tech on 4/28/22.
//


import Foundation
import SwiftUI


struct FightWithFriend: View {
    
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
      
                Spacer()
                    .frame(height: 25)
                
                Text("We'll help you through \nthese tense times")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                 
                Spacer()
                    .frame(height: 10)
                 
                Text("minimazing the wreckage")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .fontWeight(.light)
                   
                
            VStack {
                    Spacer()
                        .frame(height: 60)
                    
                    NavigationLink(
                        destination: DramaCentralView(),
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
                
                Text("finding your")
                    .font(.system(size: 30))
                    .italic()
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                
                
                Text("SMILE")
                    .font(.system(size: 90))
                    .foregroundColor(.blue)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
              
                
//                    Text("Easy-to-use, \n 7-Step method \nquickly helping you \nbecome friends again.")
//                        .font(.system(size: 25))
//                        .fontWeight(.light)
//                        .foregroundColor(Color.white)
//                        .multilineTextAlignment(.center)
//                       
//               
                    
                    
                    
                    
                }
            }
            
        }
    }
}


struct FightWithFriend_Previews : PreviewProvider {
    static var previews: some View {
        FightWithFriend()
    }
}



//
//   Text("We'll help you through \nthese tense times \nminimazing the wreckage")
//       .font(.system(size: 30))
//       .fontWeight(.light)
//       .foregroundColor(Color.white)
//
