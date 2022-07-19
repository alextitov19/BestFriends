//
//  Subscriptions.swift
//  BestFriends
//
//  Created by Social Tech on 7/18/22.
//


import Foundation

import SwiftUI


struct Subscriptions: View {
    @EnvironmentObject var sessionManager: SessionManager
    
//    @State var group: Group
//    @State var user: User
//
    var body: some View {
        ZStack {
            
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//
//            AdPlayerView(name: "FieldFlowers")
//                .ignoresSafeArea()
            
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
            
            VStack {
//                Text("Getting STARTED")
////                    .foregroundColor(.gray)
//                    .foregroundColor(ColorManager.grey2)
//                    .font(.system(size: 25, weight: .bold))
//
//                Spacer()
//                .frame(height: 5)
                
                Text("Select Plan")
                    .font(.system(size: 40))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                   .foregroundColor(Color.purple)
              
                Spacer()
                .frame(height: 15)
                
                NavigationLink(
                    destination: EmptyView(),
                    label: {
                        Text("BestFriends")
                            .fontWeight(.thin)
                            .frame(width: 300, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 20))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                  
                    })
              
                
             
                
                Text("-FREE")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(Color.white)
                    .foregroundColor(ColorManager.grey1)
                
                Text("-Access to all Features listed on previous page")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(Color.white)
                    .foregroundColor(ColorManager.grey1)
             
                VStack {
               
                    
                Text("-Can Add up to 5 friends")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey1)
//                    .foregroundColor(.gray)

             
                }
                Spacer()
                .frame(height: 15)
               
            VStack {
                
                
                
                NavigationLink(
                    destination: EmptyView(),
                    label: {
                        Text("BestFrends Premium")
                            .fontWeight(.thin)
                            .frame(width: 300, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 20))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                  
                    })
              
             
              
                
                Text("-Customize Planets \n-Choose Premium backgrounds \n-???")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(Color.white)
                    .foregroundColor(ColorManager.grey1)
                
                Text("-.99 Cents per Month \n-$10 per year")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(Color.white)
                    .foregroundColor(ColorManager.grey1)
               
                Spacer()
                .frame(height: 15)

             
                
            VStack {
                
                
                
                NavigationLink(
                    destination: EmptyView(),
                    label: {
                        Text("Family Plan - *BEST DEAL")
                            .fontWeight(.thin)
                            .frame(width: 300, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 20))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                  
                    })
                
                
                Text("-Add up to 10 users per User")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(Color.white)
                    .foregroundColor(ColorManager.grey1)
                
                Text("-Designed to minimize 'Disfunction'")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(Color.white)
                    .foregroundColor(ColorManager.grey1)
                
                Text("-Access all BestFriend's Premium benefits")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(Color.white)
                    .foregroundColor(ColorManager.grey1)
                
                
                Text("-$2 per month \n-$19.95 per year")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(Color.white)
                    .foregroundColor(ColorManager.grey1)
                
                Spacer()
                .frame(height: 200)
               
          
       
            }
        }
        
    }
}
}



}
