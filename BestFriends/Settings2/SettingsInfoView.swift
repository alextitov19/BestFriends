//
//  SettingsInfoView.swift
//  BestFriends
//
//  Created by Alex Titov on 8/9/21.
//

import SwiftUI

struct SettingsInfoView: View {
    
    var body: some View {
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
                .offset(x: 90, y: 0)
        }
        
        
    }
    
}

struct SettingsInfoViewPreview : PreviewProvider {
    static var previews: some View {
        SettingsInfoView()
    }
}
