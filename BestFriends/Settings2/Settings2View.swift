//
//  Settings2View.swift
//  BestFriends
//
//  Created by Alex Titov on 8/5/21.
//

import SwiftUI

struct Settings2View: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    private let userDS = UserDataSource()
    private let user: User
    
    init() {
        user = userDS.getCurrentUser()
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Spacer().frame(maxWidth: .infinity, maxHeight: .zero)
                // First name
                Text(user.firstName)
                    .font(.system(size: 30, weight: .bold))

                
                // Email
                Text(user.email)
                    .font(.system(size: 18, weight: .regular))
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
            }
            .frame(maxWidth: .infinity)
        }
    }
}
