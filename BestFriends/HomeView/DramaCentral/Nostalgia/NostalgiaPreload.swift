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
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
            
            VStack {
                
                Text("Post-teen Fights")
                    .font(.system(size: 50))
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.purple)
                
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


