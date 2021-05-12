//
//  DarkModePage1.swift
//  BestFriends
//
//  Created by Robert Roe on 5/10/21.
//



import Amplify
import SwiftUI




// ************************************************
struct DarkModePage1: View {

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
                                .frame(height: 125)
                                                    
                            Image("Penguin4")
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
                            
                                Text("Just had a huge fight with your friend.")
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
                
                    
                    Text("Please STOP! We know you're upset and hurt. But, before you start thinking about 'unfriending' each other on IG & Snap, or re-posting private messages that will be hurtful - let's give 'BlueMode' a try.")
                       
                        .font(.system(size: 25))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 385, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                    
                    Spacer()
                        .frame(height: 50)
                   
                Text("We'll unlock special features helping you fix this mess.")
                   
                    .font(.system(size: 25))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 385, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                
                Spacer()
                    .frame(height: 50)
                NavigationLink(destination: DarkModeView()) {
                                    Text("Ok, I'll try this.")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                        .frame(width: 200, height: 50)
                                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                }
            Spacer()
                .frame(height: 75)
        
        }
        }
    .navigationBarTitle("")
    .navigationBarHidden(true)
    
   
   
    }
}
}
