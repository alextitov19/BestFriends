//
//  DeleteMyAccount.swift
//  BestFriends
//
//  Created by Robert Roe on 5/9/21.
//


import Amplify
import SwiftUI


struct DeleteMyAccount: View {

    @EnvironmentObject var sessionManager: SessionManager

    @State private var Reason: String = ""

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
                
                    
                    Text("We're working hard to make BestFriends better and better. Before you go, please give us a short reason for leaving.")
                       
                        .font(.system(size: 25))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 385, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                 
                Spacer()
                    .frame(height: 20)
                
                
                TextField("Reason", text: $Reason)
                    .multilineTextAlignment(.center)
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .frame(width: 300, height: 40, alignment: .center)
                    .font(.title)
                    
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(20)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)

                Spacer()
                    .frame(height: 50)
                
                
                
                Button("Delete my Account", action: {()
                })
                .frame(width: 230, height: 50, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .background(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
                .cornerRadius(25)
                
                Spacer()
                    .frame(height: 210)
                }
           
        
        }
        }
  //  .navigationBarTitle("")
   // .navigationBarHidden(true)
    
   
   
    }
}


