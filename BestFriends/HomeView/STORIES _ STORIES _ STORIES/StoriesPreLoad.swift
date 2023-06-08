//
//  StoriesPreLoad.swift
//  BestFriends
//
//  Created by Social Tech on 11/17/22.
//



import Foundation
import SwiftUI


struct StoriesPreLoad: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    
    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
            
            VStack {
              
            
                
                Text("FriendGroups")
                    .font(.system(size: 30))
                    .foregroundColor(ColorManager .purple3)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
                
                Spacer()
                    .frame(height: 20)
                
                Text("S T O R I E S")
                    .font(.system(size: 40))
                    .foregroundColor(ColorManager .purple4)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
       
          
                
                Spacer()
                    .frame(height: 150)
             
//
//                Text("Designed for users")
//                    .font(.system(size: 25))
//
//                    .foregroundColor(.white)
//                    .fontWeight(.thin)
//                    .multilineTextAlignment(.center)
//
//                Text("in mutiple FriendGroups")
//                    .font(.system(size: 25))
//
//                    .foregroundColor(.white)
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
                
                VStack {
                        
 
                Spacer()
                    .frame(height: 50)
                
 
                    NavigationLink(
                        destination: StoriesPreLoad2(user: user, friends: friends),
                        label: {
                            Text("MomentPOP")
                                .fontWeight(.thin)
                                .foregroundColor(Color.white)
                                .frame(width: 200, height: 40)
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                          
                          
                        }
                 
                    )}

                    
                    Spacer()
                        .frame(height: 50)
                    
                Text("comming soon")
                    .font(.system(size: 20))
                    .italic()
                    .foregroundColor(.green)
                    .fontWeight(.light)
                    .padding()
              
                    Spacer()
                    .frame(height: 50)
                    }
                }
                
            }
            
        }
        

    

