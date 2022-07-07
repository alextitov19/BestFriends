//
//  InfoView.swift
//  BestFriends
//
//  Created by Social Tech on 6/2/22.
//


import Foundation
import SwiftUI


struct InfoView: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    @State var group: Group
    @State var user: User
  
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
                
                Text("Long-tap")
                    .font(.system(size: 40))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.purple)
             
                Text("M E S S A G E")
                    .font(.system(size: 40))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.purple)
          
                VStack {
               
                    
                Text("-Save messages \nto SmileVault \n- Report User")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)

             
                }
                
            VStack {
                     Spacer()
                     .frame(height: 30)
                     
               
                Text("Hide Chat")
                    .font(.system(size: 40))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.purple)
                
                Text("Restore with Secret PIN")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                 
                
                Text("(tap 'lock' icon - enter 4 digit PIN)")
                    .font(.system(size: 15))
                    .italic()
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                  
                    Spacer()
                    .frame(height: 30)
                }
                
            VStack {
                
                Text("For Your Safety")
                    .font(.system(size: 40))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.purple)
                
                Text("- Download images \n- Copy/Paste messages")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                 
                
                Text("(112 bit encription)")
                    .font(.system(size: 15))
                    .italic()
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                  
                    Spacer()
                    .frame(height: 30)
                
           
                Spacer()
                .frame(height: 30)
                
//                Text("Screen-shot Chat messages")
//                    .font(.system(size: 24))
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(Color.white)
//
//                Text("(coming end summer)")
//                    .font(.system(size: 20))
//                    .italic()
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(Color.white)
//
                
                
           
                
                        Text("back to Chat")
                            .fontWeight(.thin)
                            .frame(width: 200, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2).onTapGesture(perform: {
                                sessionManager.showChat(user: user, group:group)
                            })
               
                
               
            }
        }
        
    }
}
}






//
//
//struct InfoView_Previews : PreviewProvider {
//    static var previews: some View {
//        InfoView()
//    }
//}


