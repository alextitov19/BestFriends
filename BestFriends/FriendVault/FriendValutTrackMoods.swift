//
//  FriendValutTrackMoods.swift
//  BestFriends
//
//  Created by Social Tech on 5/18/22.
//


import Foundation
import SwiftUI


struct FriendVaultTrackMoods: View {
    
    var body: some View {
        ZStack {
          
            ColorManager.purple2
                .ignoresSafeArea()
            
            VStack {
      
                Spacer()
                    .frame(height: 25)
                
                Text("We'll HELP in these \ntense times")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .italic()
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                 
                Spacer()
                    .frame(height: 30)
                 
                Text("Yanking you from")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .fontWeight(.light)
                
                Text("the")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .fontWeight(.light)
                
                Text("Wreckage")
                    .font(.system(size: 80))
                    .foregroundColor(.blue)
                    .fontWeight(.ultraLight)
                   
                
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
                    .font(.system(size: 40))
                    .italic()
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                
                
                Text("SMILE")
                    .font(.system(size: 100))
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


struct FriendVaultTrackMoods_Previews : PreviewProvider {
    static var previews: some View {
        FriendVaultTrackMoods()
    }
}


