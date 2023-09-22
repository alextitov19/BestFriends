//
//  RR23.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 9/10/23.
//

//import SwiftUI
//
//struct RR23: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct RR23_Previews: PreviewProvider {
//    static var previews: some View {
//        RR23()
//    }
//}



import Foundation
import SwiftUI

struct RR23: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    
    
    @State private var selectedFriends: [String] = []
    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
    @State private var shareColor = ColorManager.purple5
    @State private var showingAlert = false
    
    @State private var counter = 0
    
    @State private var mood: Int = -1
    @State private var summary = ""
    @State private var sharedWith: [String] = []
    @State private var colorChangeTap: String = ""
    @State private var shareTapped: Bool = false
    
    var body: some View {
        //        ScrollView {
        
        ZStack {
            
            Color.black
                .opacity(0.9)
                .ignoresSafeArea()
            
            AdPlayerView(name: "background_9")
                .ignoresSafeArea()
                .blendMode(.screen)
 

            VStack {
                
 
                ZStack {
                    
              
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(Color.purple)
                        .frame(width: 375, height: 375)
                        .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                        .opacity(0.5)
                    
                    VStack {
                        

                        Text("Best Days")
                            .font(.system(size: 27))
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                        
                        Text("(coming soon)")
                            .font(.system(size: 15))
                            .italic()
                            .foregroundColor(Color.white)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
              
                        
                        Spacer()
                            .frame(height: 20)
                        
                        
                        Text("Our newest feature where")
                            .font(.system(size: 19))
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)

                        Text("you and your friends celebrate")
                            .font(.system(size: 19))
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                        
                        Text("your best days together!")
                            .font(.system(size: 19))
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                  
                    }
                    
                }
                


//                    NavigationLink(
//                        destination: RR12(user: user, friend: user, friends: friends, groups: groups),
//                        label: {
//                            Text("send  a congratulations \nCareHeart")
//
//                                .fontWeight(.regular)
//                                .frame(width: 170, height: 35)
//                                .foregroundColor(Color.white)
//                                .font(.system(size: 13))
//                                .background(Color.orange)
//                                .cornerRadius(15)
//                                .shadow(color: Color.white, radius: 2, x: 0, y: 2)
//                        }
//
//                    )}
       
            }
            
        }
        
    }
    
    
}
        


















