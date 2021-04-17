//
//  MessagesView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/17/21.
//

import SwiftUI

struct MessagesView: View {
    
    @State var text: String = ""
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack {
                    
                }
            }
            
            HStack {
                TextField("Enter message", text: $text)
                Button("Send", action: {})
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.purple)
            }
        }
        .padding(.horizontal, 16)
    }
}


struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
