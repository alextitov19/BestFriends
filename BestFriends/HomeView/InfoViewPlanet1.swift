//
//  InfoViewPlanet1.swift
//  BestFriends
//
//  Created by Social Tech on 9/5/22.
//



import Foundation

import SwiftUI


struct InfoViewPlanet1: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    
    var body: some View {
        ZStack {
            
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//
//            AdPlayerView(name: "FieldFlowers")
//                .ignoresSafeArea()
            
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
            
            VStack {
//                Text("Getting STARTED")
////                    .foregroundColor(.gray)
//                    .foregroundColor(ColorManager.grey2)
//                    .font(.system(size: 25, weight: .bold))

                
              
                
            VStack {

                Text("Hi everyone. Welcome to ")
                    .italic()
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey2)
                
                Text("BestFriends")
                
                    .font(.system(size: 50))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey2)
                
                Spacer()
                .frame(height: 40)
                
                Text("*Yep! We're working out the bugs.")
                    .italic()
                    .font(.system(size: 20))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.red)
                
                Text("We ask for your patience.")
                    .italic()
                    .font(.system(size: 30))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.red)
                
                
                Spacer()
                .frame(height: 20)
                
         
                VStack {
                
                Link(destination: URL(string: "https://socialtechlabs.com/reporting-issues-in-bestfriends/")!) {
                    
                    Text("Report Issues")
                        .fontWeight(.thin)
                        .frame(width: 310, height: 40)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 25))
                        .background(ColorManager.pmbc_green)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                }

        
                
            
                
                VStack {
                    Spacer()
                    .frame(height: 110)

                    Text("First time through")
                        .font(.system(size: 20))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.grey2)
                    
                    Text("is a little confusing,")
                        .font(.system(size: 23))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.grey2)
                    
                Text("take a second to review ...")
                    .font(.system(size: 20))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey2)
                   
                  
                }
                
         
               
            VStack {
 
                NavigationLink(
                    
                    destination: InfoViewPlanet(user: user, atmosphere: atmosphere),
                    label: {
                        Text("Walk-Through")
                            .fontWeight(.thin)
                            .foregroundColor(Color.white)
                            .frame(width: 200, height: 40)
                            .font(.system(size: 25))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                    }
                    
                    
                )}
             
                    Text("(We're working to make it more user friendly)")
                        .italic()
                        .font(.system(size: 15))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.red)
                    
                    
                Spacer()
                .frame(height: 70)
                
                VStack {
                        NavigationLink(
                            destination: SettingsView(user: user, atmosphere: atmosphere),
                            label: {
                                Text("SETTINGS PAGE")
                                    .fontWeight(.thin)
                                    .frame(width: 275, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 30))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                          
                            
                            })
            

                
                Spacer()
                .frame(height: 100)
                

           
               
            }
        }
        
    }
}
}


    }
}


