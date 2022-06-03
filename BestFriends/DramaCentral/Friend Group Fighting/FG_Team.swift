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

    var body: some View {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
         
              
              VStack {
              
               
                  
                  VStack {
                      Text("consider . . .")
                          .font(.system(size: 40))
                          .foregroundColor(.white)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                   
                        Text("coming together")
                            .font(.system(size: 50))
                            .foregroundColor(.white)
                            .fontWeight(.ultraLight)
                            .multilineTextAlignment(.center)
                      
                      Text("as a TEAM")
                          .font(.system(size: 60))
                          .foregroundColor(.white)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                            
                        Spacer()
                            .frame(height: 50)
                        
                      Text("- Teams rely on one another to win? \n- teams have each other's back \n- teams have common dreams \n- teams are basically - bad ass!")
                          .font(.system(size: 24))
                          .fontWeight(.light)
                          .foregroundColor(Color.white)
           
                      Spacer()
                          .frame(height: 60)
            VStack {
                      
                        Text("just a thought from our")
                            .font(.system(size: 30))
                            .italic()
                            .fontWeight(.light)
                            .foregroundColor(Color.blue)
                        
                        Text("teens")
                            .font(.system(size: 50))
                            .italic()
                            .fontWeight(.light)
                            .foregroundColor(Color.blue)
                   
               
            VStack {
                Spacer()
                    .frame(height: 40)
                    
                    NavigationLink(
                        destination: FG_BeAccountable(),
                        label: {
                            Text("NEXT")
                                .fontWeight(.thin)
                                .frame(width: 100, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                      
                        })

            }
              
        }
    }
}
}
    }
}



struct FG_Team_Previews : PreviewProvider {
    static var previews: some View {
        FG_Team()
    }
}


