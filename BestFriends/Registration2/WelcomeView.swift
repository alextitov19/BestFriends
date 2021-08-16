//
//  Welcome.swift
//  BestFriends
//
//  Created by Alex Titov on 8/16/21.
//

import SwiftUI

struct WelcomeView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.4874756932, green: 0.2377186716, blue: 0.9663465619, alpha: 1))
                .ignoresSafeArea()
            VStack {
                Circle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                    .offset(x: 200, y: -100)
                
                Circle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                    .offset(x: -200, y: 100)
            }
            
        }
    }
}

struct WelcomeViewPreview : PreviewProvider {
    static var previews: some View {
        WelcomeView()
            .environmentObject(SessionManager())
    }
}
