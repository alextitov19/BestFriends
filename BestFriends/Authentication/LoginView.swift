//
//  LoginView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/16/21.
//

import SwiftUI

struct LoginView: View {
    @State var username = ""
    @State var password = ""

    var body: some View {
        VStack {
            Spacer()
            
            TextField("Username", text: $username)
            
            TextField("Password", text: $password)
            
            Button("Login", action: {})
            
            Spacer()
            
            Button("Don't have an account? Sign up.", action: {})
        }
    }
}

struct LoginView_Previews : PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
