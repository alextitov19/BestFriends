//
//  FriendVault.swift
//  BestFriends
//
//  Created by Social Tech on 4/22/22.
//



import Foundation
import SwiftUI

struct FriendVault: View {
    @State var showItems: Bool = false
    
    var body: some View {
        
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()

            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
        
        ZStack {
//            animationAmount += 1
            
            Rectangle()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
            .foregroundColor(.blue)
            .offset(x: showItems ? -60 : 0)
            Text("friend 1")
                    .fontWeight(.ultraLight)
            
            Rectangle()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
                .foregroundColor(.yellow)
                .offset(y: showItems ? -60 : 0)
            Text("friend 2")
                    .fontWeight(.ultraLight)
            
            Rectangle()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
                .foregroundColor(.purple)
                .offset(x: showItems ? 60 : 0)
            Text("friend 3")
                    .fontWeight(.ultraLight)
           
            ZStack {
                Image("planet_1")
            Rectangle()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .foregroundColor(.green)
                
//                .background(ColorManager.purple3)
               
            Text("my \nDistinctive \nMessages")
                    .font(.system(size: 35))
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    
             
                    Spacer ()
                
            }
            .onTapGesture {
                    self.showItems.toggle()
            }
        
        }
            
        .animation(.easeInOut)
            
        }
   }

}
struct FriendVault_Previews : PreviewProvider {
    static var previews: some View {
        FriendVault()
    }
}

