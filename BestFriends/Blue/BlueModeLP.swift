//
//  BlueModeLP.swift
//  BestFriends
//
//  Created by Robert Roe on 5/18/21.
//


import SwiftUI

struct BlueModeLP: View {

    var body: some View {
    
  
        ZStack {
            
            
            Image("AriC2")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
                
            VStack {
                    
                    HStack {
                        VStack {
                                                   
                            Spacer()
                                .frame(height: 0)
                                                    
                          
                                                    
                                }
                        VStack {
                       
                            ZStack {
                                
                               
                            }
                           
                        }
                    }
                    
          
               
                    
               
                
                Spacer()
                    .frame(height: 455)
                
                    
                    Text("We know you're upset and hurt. But, before you start thinking about 'unfriending' each other on IG & Snap, or re-posting private messages that will be hurtful - let's switch to 'BlueMode'.")
                        .italic()
                        .font(.system(size: 25))
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 395, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        
                        
                        
                        
                       // .font(.system(size: 22))
                      //  .fontWeight(.regular)
                    //    .foregroundColor(Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
                    //    .multilineTextAlignment(.center)
                   //     .frame(width: 385, height: 170, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                
                
                
                
                Spacer()
                    .frame(height: 7)
                NavigationLink(destination: DarkModeView()) {
                                    Text("Ok, activate 'BlueMode'")
                                        .font(.system(size: 30))
                                        .fontWeight(.ultraLight)
                                        .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                                        .frame(width: 350, height: 50)
                                        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .cornerRadius(25)
                
                    
                    
                }
           
        
                
        }
//    .navigationBarTitle("")
//    .navigationBarHidden(true)
    
   
   
    }
}
}
