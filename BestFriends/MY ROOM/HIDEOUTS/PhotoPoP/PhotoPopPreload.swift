//
//  PhotoPopPreload.swift
//  BestFriends
//
//  Created by Social Tech on 7/8/22.
//


import Foundation
import SwiftUI


struct PhotoPopPreload: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    
    var body: some View {
        ZStack {
            
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
            
            
            
            
            
            
            VStack {
                
              
                
                Text("Shake")
                    .font(.system(size: 50))
                    .foregroundColor(.blue)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Text("Your Phone")
                    .font(.system(size: 40))
                    .foregroundColor(.blue)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Text("and your favorite")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Text("images popup")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height:20)
                
                Text("bringing a Smile")
                    .font(.system(size: 25))
                    .foregroundColor(.blue)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Text("to your face")
                    .font(.system(size: 25))
                    .foregroundColor(.blue)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                
                VStack {
               
         
                    
                Spacer()
                    .frame(height: 50)
                
            
                
                    NavigationLink(destination: PhotoPopView(user: user, friends: [user]), label: {
                    Text("SKIP")
                        .fontWeight(.thin)
                        .frame(width: 100, height: 40)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 30))
                        .background(ColorManager.purple3)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                })
                
                    Text("'Setting Up PhotoPop'")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                

                Text("you can add one image")
                    .font(.system(size: 17))
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    
                    
                    Text("for each friend")
                        .font(.system(size: 17))
                        .foregroundColor(.white)
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                   
                    Text("and one for yourself")
                        .font(.system(size: 17))
                        .foregroundColor(.white)
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                    
//
                VStack {
                    Spacer()
                        .frame(height: 30)
                    
//                    Text("You let your friends know how \nyou feel, now let them help you")
//                        .font(.system(size: 20))
//                        .foregroundColor(.blue)
//                        .fontWeight(.light)
//                        .foregroundColor(Color.white)
                    Spacer()
                        .frame(height: 15)
                    
//                    Text("- re-read nice messages from \nFriends you long-tapped in Chat")
//                        .font(.system(size: 15))
//                        .italic()
//                        .foregroundColor(ColorManager.grey2)
//                        .fontWeight(.light)
//                        .foregroundColor(Color.white)
//
//                    Spacer()
//                        .frame(height: 10)
//
//                    Text("- listen to a song a friend sent \nto match your mood")
//                        .font(.system(size: 15))
//                        .italic()
//                        .foregroundColor(ColorManager.grey2)
//                        .fontWeight(.light)
//                        .foregroundColor(Color.white)
//
//                    Spacer()
//                        .frame(height: 10)
//
//                    Text("- Shake you phone and see favorite \nimages your friends sent you")
//                        .font(.system(size: 15))
//                        .italic()
//                        .foregroundColor(ColorManager.grey2)
//                        .fontWeight(.light)
//                        .foregroundColor(Color.white)
//
                
                    
                   
                     
                        Spacer()
                            .frame(height: 70)
                        
                        
                        
                    
                    
                    
                    
                }
            }
            
        }
        
    }
    
}

}
