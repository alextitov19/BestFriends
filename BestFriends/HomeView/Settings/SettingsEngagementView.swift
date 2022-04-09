//
//  SettingsEngagementView.swift
//  BestFriends
//
//  Created by Social Tech on 4/8/22.
//

import Foundation

import SwiftUI

struct SettingsEngagementView: View {
    
    var index: Int
    
    var body: some View {
        switch index {
        case 1:
            Link(destination: URL(string: "https://https://socialtechlabs.com/beta-tester-_-bestfriends-app/")!) {
            ZStack {
                RoundedRectangle(cornerRadius: 25) //Rectangle background
                    .frame(maxWidth: .infinity)
                    .frame(height: 175)
                    .foregroundColor(Color(#colorLiteral(red: 0.3744983077, green: 0.122321032, blue: 1, alpha: 1)))
                    .padding(10)
              
                
                
                
                Image("girlwalking")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .offset(x: 0, y: 35) //offset image itself, not the frame. AKA move it down/up but same coordinates
                    .frame(width: 200, height: 175, alignment: .center)
                    .clipped()
                    .offset(x: 90, y: 0) // move the frame around
                
                VStack(alignment: .leading) {
//                    Text("5 min")
//                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
//                        .font(.system(size: 16, weight: .regular))
//
                   Text("Be 1st to see\n NEW FEATURES")
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                       .font(.system(size: 20, weight: .bold))
                       .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                    
                    Text("BE AN INSIDER")
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 19, weight: .bold))
                        .frame(width: 170, height: 40)
                        .background(Color(#colorLiteral(red: 0.1693333387, green: 0.1839567721, blue: 0.203564167, alpha: 1)))
                        .cornerRadius(25)
                    
                    
                }
                .offset(x: -95, y: 0)
                
                HStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(maxWidth: 25, maxHeight: 6)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.75)))
                    
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.75)), lineWidth: 1)
                        .frame(maxWidth: 25, maxHeight: 6)
                    
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.75)), lineWidth: 1)
                        .frame(maxWidth: 25, maxHeight: 6)
                }
                .offset(x: 125, y: 65)
            }
            }
            
            
            
            
            
            
        case 2:
            ZStack {
                RoundedRectangle(cornerRadius: 25) //Rectangle background
                    .frame(maxWidth: .infinity)
                    .frame(height: 175)
                    .foregroundColor(Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)))
                    .padding(10)
                
                Image("ballons")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .offset(x: 0, y: 45) //offset image itself, not the frame. AKA move it down/up but same coordinates
                    .frame(width: 175, height: 175, alignment: .center)
                    .clipped()
                    .offset(x: 70, y: 0) // move the frame around
                
                VStack(alignment: .leading) {

//
                    Text("(just 3 min)")
//                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                       .font(.system(size: 20, weight: .regular))
                       . italic()
                    
                    
                    Text("Help make\n us Better")
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 32, weight: .bold))
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                    
                    Text("QUICK SURVEY")
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 19, weight: .bold))
                        .frame(width: 170, height: 40)
                        .background(Color(#colorLiteral(red: 0.1693333387, green: 0.1839567721, blue: 0.203564167, alpha: 1)))
                        .cornerRadius(25)
                }
                .offset(x: -95, y: 0)
                
                HStack {
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.75)), lineWidth: 1)
                        .frame(maxWidth: 25, maxHeight: 6)
                    
                    RoundedRectangle(cornerRadius: 25)
                        .frame(maxWidth: 25, maxHeight: 6)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.75)))
                    
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.75)), lineWidth: 1)
                        .frame(maxWidth: 25, maxHeight: 6)
                }
                .offset(x: 125, y: 65)
            }
        case 3:
            ZStack {
                RoundedRectangle(cornerRadius: 25) //Rectangle background
                    .frame(maxWidth: .infinity)
                    .frame(height: 175)
                    .foregroundColor(Color(#colorLiteral(red: 0.7442547679, green: 0.6245918274, blue: 0.9848899245, alpha: 1)))
                    .padding(10)
                
                Image("holding iphone")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .offset(x: 0, y: 40) //offset image itself, not the frame. AKA move it down/up but same coordinates
                    .frame(width: 110, height: 175, alignment: .center)
                    .clipped()
                    .offset(x: 90, y: 0) // move the frame around
                
                VStack(alignment: .leading) {
                    Text("(just 3 min)")
//                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                       .font(.system(size: 20, weight: .regular))
                       . italic()
                    
                    Text("Shape cool\n features!")
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 32, weight: .bold))
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                    
                    Text("QUICK SURVEY")
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 19, weight: .bold))
                        .frame(width: 170, height: 40)
                        .background(Color(#colorLiteral(red: 0.1693333387, green: 0.1839567721, blue: 0.203564167, alpha: 1)))
                        .cornerRadius(25)
                }
                .offset(x: -100, y: 0)
                
                HStack {
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.75)), lineWidth: 1)
                        .frame(maxWidth: 25, maxHeight: 6)
                    
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.75)), lineWidth: 1)
                        .frame(maxWidth: 25, maxHeight: 6)
                    
                    RoundedRectangle(cornerRadius: 25)
                        .frame(maxWidth: 25, maxHeight: 6)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.75)))
                }
                .offset(x: 125, y: 65)
            }
        default:
            EmptyView()
        }
        
        
        
    }
    
}

struct SettingsEngagementView_Preview : PreviewProvider {
    static var previews: some View {
        SettingsEngagementView(index: 2)
    }
}
