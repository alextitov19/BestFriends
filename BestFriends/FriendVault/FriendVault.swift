//
//  FriendVault.swift
//  BestFriends
//
//  Created by Social Tech on 4/22/22.
//



import Foundation
import SwiftUI

struct FriendVault: View {
    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0
   
    var body: some View {
        
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()

            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
           
            Image("planet_1")
        
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
           
            Rectangle()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .foregroundColor(.green)
                

               
            Text("my \nDistinctive \nMessages")
                    .font(.system(size: 35))
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)

//                    .offset(x: 0, y: offset)
//                    .onTapGesture {
//                        withAnimation(.default) {
//                            offset += 100.0
//
            }
           .onTapGesture { self.showItems.toggle()}
                   .animation(Animation.easeInOut(duration: 1.0), value: showItems)

            }
        
        }
            
            
        }
   }
       
        
struct FriendVault_Previews : PreviewProvider {
    static var previews: some View {
        FriendVault()
    }
}


//
//
//struct ContentView: View {
//
//    @State private var offset: CGFloat = 200.0
//
//    var body: some View {
//
//        Image(systemName: "ant")
//            .font(Font.system(size: 100.0))
//            .offset(y: offset)
//            .shadow(radius: 10.0)
//            .onTapGesture { offset -= 100.0 }
//            .animation(Animation.easeInOut(duration: 1.0), value: offset)
//
//    }
//}

//
//
//struct SwiftUWithAnimation: View {
//@State private var offset: CGFloat = .zero
//
//var body: some View {
//
//    Circle()
//        .frame(width: 100, height: 100, alignment: .center)
//        .offset(x: 0, y: offset)
//        .onTapGesture {
//            withAnimation(.default) {
//                offset += 100.0
//         }
//      }
//   }
//}
