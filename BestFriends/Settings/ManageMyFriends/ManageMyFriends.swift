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
                    
                    Text("Long-tap your friend's name above their star on Homepage to:")
                       
                        .font(.system(size: 25))
                        
                    .italic()
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                      
                    Spacer()
                        .frame(height: 50)
                    
                    
                      Text("Switch to BlueMode")
                         
                          .font(.system(size: 40))
                          .fontWeight(.regular)
                          .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                          .multilineTextAlignment(.center)
                        .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                          
                                   Spacer()
                                       .frame(height: 20)
                               
                        
                        Text("Block Friend")
                           
                            .font(.system(size: 40))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                                     Spacer()
                                         .frame(height: 20)
                        
                        
                        Text("Delete Friend")
                           
                            .font(.system(size: 40))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                                     Spacer()
                                         .frame(height: 30)
                        
                        
                        
                                 
                               
                            
                     
                        }
                    }
                }
            }
        }
            
struct ManageMyFriends_Previews : PreviewProvider {
    static var previews: some View {
        ManageMyFriends()
    }
}

        

    








