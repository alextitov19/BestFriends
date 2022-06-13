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
                        
                    
                      
                      Spacer()
                          .frame(height: 20)
                      
                      Text("Maybe everyone's watching")
                          .font(.system(size: 24))
                          .fontWeight(.light)
                          .foregroundColor(Color.white)
                      Spacer()
                          .frame(height: 20)
                      
                      
                      Text("Maybe everyone's talking")
                          .font(.system(size: 24))
                          .fontWeight(.light)
                          .foregroundColor(Color.white)
                      Spacer()
                          .frame(height: 20)
                      
                      Text("Maybe you don't know what to do?")
                          .font(.system(size: 24))
                          .fontWeight(.light)
                          .foregroundColor(Color.white)
                
            VStack {
                   
                Spacer()
                          .frame(height: 35)
                
                      Text("Send a Virtual Hug")
                          .font(.system(size: 40))
                          .italic()
                          .fontWeight(.ultraLight)
                          .foregroundColor(Color.blue)

     
                      Spacer()
                          .frame(height: 60)
         
                Image("Hug4")
                    .resizable()
                    .frame(width: 70, height: 70)
                
                    .scaledToFit()
                    .onTapGesture {
//                        RestApi.instance.sendPushNotification(title: "Hug", body: "", APNToken: friend.APNToken ?? "")
//                   
                   
               
//            VStack {
//                Spacer()
//                    .frame(height: 40)
//                    
//                    NavigationLink(
//                        destination: FG_VideoCall(),
//                        label: {
//                            Text("NEXT")
//                                .fontWeight(.thin)
//                                .frame(width: 100, height: 40)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 30))
//                                .background(ColorManager.purple3)
//                                .cornerRadius(15)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                      
//                        })

            }
              
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


