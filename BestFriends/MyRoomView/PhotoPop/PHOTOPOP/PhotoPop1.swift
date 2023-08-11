//
//  PhotoPop1.swift
//  BestFriends
//
//  Created by Social Tech on 10/10/22.
//



import Foundation
import SwiftUI
import AVKit

struct PhotoPop1: View {
    
    let user: User
//    let atmosphere: Atmosphere
    let friends: [User]
//    let friendAtmospheres: [Atmosphere]
    
    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0

    
    var body: some View {
        
        ZStack {
            
            ColorManager.purple1
                .ignoresSafeArea()
                .onAppear()
           
            ZStack{
   


              NavigationLink(destination: PhotoPop3(user: user, friends: friends), label: {
                  PhotoPopCircle (color: ColorManager.grey3, friendName: "send \npush \nnotification")
            })
            .offset(x: showItems ? 100 : 0, y: showItems ? -155: 0)
                
              
                NavigationLink(destination:  PhotoPopView(user: user, friends: friends), label: {
                    PhotoPopCircle (color: ColorManager.purple2, friendName: "load private \nimages for \nfriends")
                })
                .offset(x: showItems ? -100 : 0, y: showItems ? -170: 0)
                
        
//                NavigationLink(destination:  PhotoPOPFGPreload(user: user, friends: friends), label: {
//                    PhotoPopCircle (color: ColorManager.purple3, friendName: "load public\nimages for \nFriendGroups")
//                })
//                .offset(x: showItems ? 0 : 0, y: showItems ? -250: 0)
                
                
                
                
                NavigationLink(destination: EmptyView(), label: {
                    PhotoPopCircle (color: .red, friendName: "")
                    })
                .offset(x: showItems ? 0 : 0, y: showItems ? 0: 0)

                           
                
            
        Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundColor(.pink)
                    .frame(width: 220, height: 180)
//                    .blur(radius: 2)

                    .shadow(color: .purple, radius: 65, x: 30, y: 50)
                    .opacity(0.95)
            
           VStack {
               
            Spacer ()
                   .frame(height: 0)
                
              Text("'Shake' phone")
                            .font(.system(size: 30))
                        
                            .foregroundColor(.blue)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
//                            .shadow(color: .black, radius: 1, x: 0, y: 1)
              
               
               Text("& see")
                             .font(.system(size: 25))
                         
                             .foregroundColor(.blue)
                             .fontWeight(.thin)
                             .multilineTextAlignment(.center)
 //                            .shadow(color: .black, radius: 1, x: 0, y: 1)
               
               Text("IMAGES")
                             .font(.system(size: 35))
                        
                             .foregroundColor(.blue)
                             .fontWeight(.light)
                             .multilineTextAlignment(.center)
 //                            .shadow(color: .black, radius: 1, x: 0, y: 1)

                    
                }
            }
            
          
           .onTapGesture {
               withAnimation {
               self.showItems.toggle()
               }
               print("tap function is working")
           }
            
           .animation(Animation.easeInOut(duration: 1.5), value: showItems)

            }
        }
    }
   

struct PhotoPopCircle: View {
    var color: Color
    var friendName: String
    
    var body: some View {
       
        ZStack {
          
        Rectangle()
        .frame(width: 120, height: 120)
        .clipShape(Circle())
        .foregroundColor(color)
        .opacity(0.7)
        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 5, x: 0, y: 5)
        
        Text(friendName)
                .fontWeight(.light)
                .italic()
                .foregroundColor(.black)

        }
    }
}

