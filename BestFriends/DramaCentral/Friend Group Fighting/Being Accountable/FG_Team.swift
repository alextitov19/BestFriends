//
//  FG_Team.swift
//  BestFriends
//
//  Created by Social Tech on 5/30/22.
//



import Foundation

import SwiftUI


struct FG_Team: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @State private var colorChangeTap: String = ""
    @State private var hugTapped = false
   
 
//    let user: User
//    let friend: User
    
    var body: some View {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
         
              
              VStack {
              
               
                  
                  VStack {
                      
                      
                        Text("True friends are there in")
                            .font(.system(size: 30))
                            .italic()
                            .fontWeight(.ultraLight)
                            .foregroundColor(Color.blue)
                        
                        Text("hard times")
                            .font(.system(size: 50))
                            .italic()
                            .fontWeight(.light)
                            .foregroundColor(Color.blue)
                     
                      Spacer()
                            .frame(height: 40)
               
                      
                      
                      
                  
                      
                      Text("Get the Friend Group together. \nHelp support them in the \nprivacy of BestFriends.")
                          .font(.system(size: 24))
                          .fontWeight(.light)
                          .foregroundColor(Color.white)
                      
                      Spacer()
                            .frame(height: 100)
                
                      Text("True friends don't leave a freind behind.")
                          .font(.system(size: 20))
                          .fontWeight(.light)
                          .foregroundColor(Color.white)
                      
                      Text("One day you'll need their help.")
                          .font(.system(size: 20))
                          .fontWeight(.light)
                          .foregroundColor(Color.white)

                      
            VStack {
                   
                Spacer()
                          .frame(height: 35)
                
//                      Text("Send a Virtual Hug")
//                          .font(.system(size: 40))
//                          .italic()
//                          .fontWeight(.ultraLight)
//                          .foregroundColor(Color.blue)
//
//
//                      Spacer()
//                          .frame(height: 60)
//
//
//
//                    if !hugTapped {
//                    Image("Hug4")
//                        .resizable()
//                        .frame(width: 50, height: 50)
//                        .scaledToFit()
//                //                        .colorInvert()
//                        .onTapGesture {
//                            RestApi.instance.sendPushNotification(title: "Hug", body: "", APNToken: friend.APNToken ?? "")
//                            hugTapped.toggle()
//
//                    }
                  
                
            }
              
        }
    }
}
}
    }


//
//
//struct FG_Team_Previews : PreviewProvider {
//    static var previews: some View {
//        FG_Team()
//    }
//}

