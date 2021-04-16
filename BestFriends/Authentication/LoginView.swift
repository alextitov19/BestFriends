//
//  LoginView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/15/21.
//

import SwiftUI

struct LoginView: View {
    
    @State var username = ""
    @State var password = ""

        
    var body: some View {

        VStack {
            Spacer()
            
            TextField("Username", text: $username)
            SecureField("Password", text: $password)
            Button("Login", action: {})

        }.padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
