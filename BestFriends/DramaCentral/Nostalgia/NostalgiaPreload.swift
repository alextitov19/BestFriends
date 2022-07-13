//
//  NostalgiaPreload.swift
//  BestFriends
//
//  Created by Social Tech on 7/7/22.
//



import Foundation
import SwiftUI

struct NostalgiaPreload: View {
    
    var body: some View {
        ZStack {
            
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()

            
                        ColorManager.grey4
                            .ignoresSafeArea()
                            .onAppear()

             
         
            
            VStack {
                
                Text("Post-teen Fights")
                    .font(.system(size: 50))
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.purple)
             
//                Text("N O S T A L S I A")
//                    .font(.system(size: 45))
//                    .fontWeight(.ultraLight)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(Color.purple)
                
                Spacer()
                .frame(height: 15)
                
                Text("OK, you're not a teen anymore")
                    .font(.system(size: 25))
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                Text("But, it still hurts")
                    .font(.system(size: 25))
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                
                
                    
                VStack {
               
                    Spacer()
                    .frame(height: 50)
                    
                    Text("Head to Chat")
                        .font(.system(size: 40))
                        .fontWeight(.thin)
                        .foregroundColor(Color.purple)
                        .kerning(10)
           
                    Spacer()
                    .frame(height: 20)
                    
                Text("- Send a song you listened to together")
                    .font(.system(size: 20))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                  
                    Spacer()
                    .frame(height: 10)
                }
                
            VStack {
                Text("- let youself be vounrable, \nsay something nice")
                    .font(.system(size: 20))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
              
                Spacer()
                .frame(height: 10)
                
                Text("-Scroll through your photo gallery \nand find a couple of special pics")
                    .font(.system(size: 20))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                
                Spacer()
                .frame(height: 10)
                
                Text("")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                
               
         
                Spacer()
                    .frame(height: 20)
                
//                NavigationLink(
//                    destination: EmptyView(),
//                    label: {
//                        Text("CHAT")
//                            .fontWeight(.thin)
//                            .frame(width: 100, height: 40)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 30))
//                            .background(ColorManager.purple3)
//                            .cornerRadius(15)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//
//                    })
                
                Spacer()
                .frame(height: 15)
                
                Text("*Even if you friend isn't on BestFriends - \nDo it on your Phone!")
                    .font(.system(size: 15))
                    .italic()
                    .fontWeight(.light)
                    .foregroundColor(Color.blue)
    
                
                
            }
        }
        
    }
}
}








struct NostalgiaPreload_Previews : PreviewProvider {
    static var previews: some View {
        NostalgiaPreload()
    }
}


