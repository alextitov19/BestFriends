//
//  SubscriptionsInfoView.swift
//  BestFriends
//
//  Created by Social Tech on 7/20/22.
//



import Foundation

import SwiftUI


struct SubscriptionsInfoView: View {
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
            
            ColorManager.grey3
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
                
                Text("SUBSCRIBE NOW")
                    .font(.system(size: 40))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                   .foregroundColor(Color.blue)
              
              
                NavigationLink(
                    destination: ContentView(),
                    label: {
                        Text("BestFriends FAMILY")
                            .fontWeight(.thin)
                            .frame(width: 300, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 20))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                  
                    })
             
                Spacer()
                .frame(height: 25)
                
                
                Text("Helps build stronger families")
                    .font(.system(size: 35))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(Color.white)
                    .foregroundColor(ColorManager.purple3)
                
                Text("-Helps children get along better")
                    .font(.system(size: 20))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(Color.white)
                    .foregroundColor(ColorManager.grey2)
                
                Text("-Offers opportunity for them to work together")
                    .font(.system(size: 20))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(Color.white)
                    .foregroundColor(ColorManager.grey2)
                
                Text("(Teaching socialaization skills)")
                    .font(.system(size: 12))
                    .italic()
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(Color.white)
                    .foregroundColor(.white)
             
                VStack {
                    Spacer()
                    .frame(height: 25)
                    
                    
                    Text("Helps Resolve Fights")
                        .font(.system(size: 35))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
    //                    .foregroundColor(Color.white)
                        .foregroundColor(ColorManager.purple3)
                    
                    Text("and Dissagreement")
                        .font(.system(size: 35))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
    //                    .foregroundColor(Color.white)
                        .foregroundColor(ColorManager.purple3)
                    
                    Text("-For younger teens - 5 Step Strategy")
                        .font(.system(size: 20))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
    //                    .foregroundColor(Color.white)
                        .foregroundColor(ColorManager.grey2)
                    
                    Text("-Tips for older teens & college age")
                        .font(.system(size: 20))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
    //                    .foregroundColor(Color.white)
                        .foregroundColor(ColorManager.grey2)
                    
                    Text("(........)")
                        .font(.system(size: 12))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
    //                    .foregroundColor(Color.white)
                        .foregroundColor(.white)
                 
               
            VStack {
                
                
                
            
                
                   Spacer()
                   .frame(height: 150)
              
       
            }
        }
        
    }
}
}



}
