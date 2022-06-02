//
//  HideChat.swift
//  BestFriends
//
//  Created by Social Tech on 6/1/22.
//

import SwiftUI

struct HideChatView: View {
    @State private var pin = ""
    
    var body: some View {
        
        TextField("Enter your Pin", text: $pin)
            .keyboardType(.decimalPad)
            .submitLabel(.done)
            .onSubmit {  }
        
    }
}
