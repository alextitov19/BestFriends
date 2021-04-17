//
//  ConfirmationView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/16/21.
//

import SwiftUI

struct ConfirmationView: View {
    @State var confirmationCode = ""

    let username: String
    
    var body: some View {
        VStack {
            Text("Username: \(username)")
            
            TextField("Confirmation Code", text: $confirmationCode)
            
            Button("Confirm", action: {})
        }
    }
}

struct ConfirmationView_Previews : PreviewProvider {
    static var previews: some View {
        ConfirmationView(username: "AlexTitov1")
    }
}
