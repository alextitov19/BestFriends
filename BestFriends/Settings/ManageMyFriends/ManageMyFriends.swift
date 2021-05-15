//
//  ManageMyFriends.swift
//  BestFriends
//
//  Created by Robert Roe on 5/7/21.
//


import Amplify
import SwiftUI


struct ManageMyFriends: View {

    var body: some View {
        NavigationView{
            ZStack {
                
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    
                
                      
                      Text("To [Switch to BlueMode],")
                         
                          .font(.system(size: 25))
                          .fontWeight(.regular)
                          .foregroundColor(.white)
                          .multilineTextAlignment(.center)
                          .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                          
                                   Spacer()
                                       .frame(height: 30)
                               
                        
                        Text("[Block a Friend] or")
                           
                            .font(.system(size: 25))
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                                     Spacer()
                                         .frame(height: 30)
                        
                        
                        Text("[Delete a Friend]")
                           
                            .font(.system(size: 25))
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                                     Spacer()
                                         .frame(height: 30)
                        
                        
                        
                                 
                                 Text("just long-tapping your friend's name above their star on Homepage.")
                                    
                                     .font(.system(size: 25))
                                     .fontWeight(.regular)
                                     .foregroundColor(.white)
                                     .multilineTextAlignment(.center)
                                     .frame(width: 385, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                     
                        
  
                            
                            
                            
                        }
                        
                      
                    
                    }
                    
                    
                }
            }
            }
            
         
        

    








