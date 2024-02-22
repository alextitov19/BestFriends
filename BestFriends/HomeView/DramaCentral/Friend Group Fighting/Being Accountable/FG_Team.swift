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
                      
                      ZStack {
//                      Image(systemName: "heart.fill")
//                                  .resizable()
//                                  .foregroundColor(.purple)
//                                  .frame(width: 100, height: 100)
//                                  .shadow(color: .blue, radius: 65, x: 30, y: 50)
//                                  .opacity(0.5)
//
//                          Text("true")
//                              .font(.system(size: 20))
//                              .italic()
//                              .fontWeight(.light)
//                              .foregroundColor(Color.blue)
                  
                          
                          Image(systemName: "heart.fill")
                                      .resizable()
                                      .foregroundColor(.purple)
                                      .frame(width: 150, height: 150)
                  //                    .blur(radius: 2)

                                      .shadow(color: .blue, radius: 65, x: 30, y: 50)
                                     .opacity(0.9)

                             VStack {
                                Text("TrueFriends")
                                              .font(.system(size: 20))
                                              .foregroundColor(.blue)
                                              .fontWeight(.medium)
                                              .multilineTextAlignment(.center)
                                              .shadow(color: .black, radius: 1, x: 0, y: 1)
                             }
                             
                          
                          

                      }
                      Text("True friends don't leave a friend behind.")
                          .font(.system(size: 20))
                          .fontWeight(.light)
                          .foregroundColor(Color.white)
                      
                      Text("One day you'll need them!")
                          .font(.system(size: 20))
                          .fontWeight(.light)
                          .foregroundColor(Color.white)

                      
            VStack {
                   
                Spacer()
                          .frame(height: 35)
                
             
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

