//
//  SettingsInfoView.swift
//  BestFriends
//
//  Created by Alex Titov on 8/9/21.
//

import SwiftUI

struct SettingsInfoView: View {
    
    var index: Int
    
    var body: some View {
        switch index {
        case 1:
            ZStack {
                RoundedRectangle(cornerRadius: 25) //Rectangle background
                    .frame(maxWidth: .infinity, maxHeight: 175)
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
                    Text("5 min")
                        .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                        .font(.system(size: 16, weight: .regular))
                    
                    Text("Help us\nimprove!")
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 32, weight: .bold))
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                    
                    Text("BE AN INSIDER")
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 19, weight: .bold))
                        .frame(width: 170, height: 40)
                        .background(Color(#colorLiteral(red: 0.1693333387, green: 0.1839567721, blue: 0.203564167, alpha: 1)))
                        .cornerRadius(25)
                    
                    
                }
                .offset(x: -95, y: 0)
            }
        case 2:
            ZStack {
                RoundedRectangle(cornerRadius: 25) //Rectangle background
                    .frame(maxWidth: .infinity, maxHeight: 175)
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
                    Text("5 min")
                        .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                        .font(.system(size: 16, weight: .regular))
                    
                    Text("Make us\nbetter!")
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
            }
        case 3:
            ZStack {
                RoundedRectangle(cornerRadius: 25) //Rectangle background
                    .frame(maxWidth: .infinity, maxHeight: 175)
                    .foregroundColor(Color(#colorLiteral(red: 0.6633471847, green: 0.4934690595, blue: 0.9908335805, alpha: 1)))
                    .padding(10)
                
                Image("girlwalking")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .offset(x: 0, y: 35) //offset image itself, not the frame. AKA move it down/up but same coordinates
                    .frame(width: 200, height: 175, alignment: .center)
                    .clipped()
                    .offset(x: 90, y: 0) // move the frame around
                
                VStack(alignment: .leading) {
                    Text("5 min")
                        .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                        .font(.system(size: 16, weight: .regular))
                    
                    Text("Help us\nimprove!")
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 32, weight: .bold))
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                    
                    Text("BE AN INSIDER")
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 19, weight: .bold))
                        .frame(width: 170, height: 40)
                        .background(Color(#colorLiteral(red: 0.1693333387, green: 0.1839567721, blue: 0.203564167, alpha: 1)))
                        .cornerRadius(25)
                }
                .offset(x: -100, y: 0)
            }
        default:
            ZStack {
                RoundedRectangle(cornerRadius: 25) //Rectangle background
                    .frame(maxWidth: .infinity, maxHeight: 175)
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
                    Text("5 min")
                        .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                        .font(.system(size: 16, weight: .regular))
                    
                    Text("Help us\nimprove!")
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 32, weight: .bold))
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                    
                    Text("BE AN INSIDER")
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 19, weight: .bold))
                        .frame(width: 170, height: 40)
                        .background(Color(#colorLiteral(red: 0.1693333387, green: 0.1839567721, blue: 0.203564167, alpha: 1)))
                        .cornerRadius(25)
                }
                .offset(x: -100, y: 0)
            }
        }
        
        
        
    }
    
}

struct SettingsInfoViewPreview : PreviewProvider {
    static var previews: some View {
        SettingsInfoView(index: 3)
    }
}
