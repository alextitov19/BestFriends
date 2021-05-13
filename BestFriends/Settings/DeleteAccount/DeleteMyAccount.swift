//
//  DeleteMyAccount.swift
//  BestFriends
//
//  Created by Robert Roe on 5/9/21.
//


import Amplify
import SwiftUI

struct DeleteMyAccount: View {

    var body: some View {
        NavigationView{
    
  
        ZStack {
            
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
                
            VStack {
                    
                    HStack {
                        VStack {
                                                   
                            Spacer()
                                .frame(height: 25)
                                                    
                            Image("Penguin2")
                                .resizable()
                                .frame(width: 150, height: 150)
                                .scaledToFill()
                                                    
                                }
                        VStack {
                       
                            ZStack {
                                
                                
                                Image("ChatBubbleTrans")
                                    .resizable()
                                    .frame(width: 300, height: 175)
                                    .scaledToFill()
                            
                                Text("Sorry to see you go. We sincerely hope to see you again sometime")
                                    .italic()
                                    .font(.system(size: 20))
                                    .fontWeight(.ultraLight)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }
                           
                        }
                    }
                    
                Spacer()
                    .frame(height: 25)
                
                    
                    Text("If you have a minute for a ONE question survey  - we'd love to get your feedback.")
                       
                        .font(.system(size: 25))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 385, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                    
               
                    
                
                Spacer()
                    .frame(height: 0)
                
                Link("Survey", destination: URL(string: "https://socialtechlabs.com/survey/")!)
                .frame(width: 230, height: 50, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                .cornerRadius(25)
                
                
                Spacer()
                    .frame(height: 30)
                
                Button("Delete my Account", action: {()
                })
                .frame(width: 300, height: 50, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                .background(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)))
                .cornerRadius(25)
                
                
                        Spacer()
                            .frame(height: 200)
                }
           
        
        }
        }
  //  .navigationBarTitle("")
   // .navigationBarHidden(true)
    
   
   
    }
}
}

