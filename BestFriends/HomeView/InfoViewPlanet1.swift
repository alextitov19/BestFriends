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
    let friends: [User]
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

            VStack {
                Spacer()
                .frame(height: 50)

                Text("First time through")
                    .font(.system(size: 20))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey2)
                
                Text("is CONFUSING!")
                    .font(.system(size: 23))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey2)
          

              
            }
            
     
           
        VStack {

            NavigationLink(
                
                destination: InfoViewPlanet(user: user, atmosphere: atmosphere),
                label: {
                    Text("-> Walk-Through <-")
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .frame(width: 250, height: 60)
                        .font(.system(size: 25))
                        .background(ColorManager.red)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
                }
                
                
            )}
            
            
        Text("take a minute to review Setup")
            .font(.system(size: 20))
            .fontWeight(.light)
            .multilineTextAlignment(.center)
            .foregroundColor(ColorManager.red)
            
            VStack {

//                Text("Welcome to")
//                    .italic()
//                    .font(.system(size: 25))
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager.grey2)
//
//                Text("BestFriends")
//                    .font(.system(size: 50))
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager.grey2)
//
//                Text("on iOS")
//                    .italic()
//                    .font(.system(size: 25))
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager.grey2)
//
//                Text("Android version summer 2023")
//                    .font(.system(size: 15))
//                    .italic()
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager.red)
//
             
                VStack {
                    
             
//
//                Text("This is our frist semi-Public launch.")
//                    .italic()
//                    .font(.system(size: 15))
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager.red)
//
//                Text("Yep! We're still work'n out the bugs.")
//                    .italic()
//                    .font(.system(size: 15))
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager.red)
//
//
//
                
                Spacer()
                .frame(height: 50)
                
         
                VStack {
                
                Link(destination: URL(string: "https://socialtechlabs.com/reporting-issues-in-bestfriends/")!) {
                    
                    Text("Report Issues")
                        .fontWeight(.thin)
                        .frame(width: 250, height: 40)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 25))
                        .background(ColorManager.pmbc_green)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                }

        
                
                    Text("We ask for your patience.")
                        .italic()
                        .font(.system(size: 20))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.red)
                
       
             
                    
                Spacer()
                .frame(height: 100)
                
                VStack {
                        NavigationLink(
                            destination: SettingsView(user: user, friends: friends, atmosphere: atmosphere),
                            label: {
                                Text("S E T T I N G S")
                                    .fontWeight(.thin)
                                    .frame(width: 310, height: 80)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 50))
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
}

