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
        }
    }
}

struct WelcomeViewPreview : PreviewProvider {
    static var previews: some View {
        WelcomeView()
            .environmentObject(SessionManager())
    }
}
