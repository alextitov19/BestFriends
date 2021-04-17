//
//  MessageRow.swift
//  BestFriends
//
//  Created by Alex Titov on 4/17/21.
//

import SwiftUI

struct MessageRow: View {
    
    let message: Message
    let isCurrentUser: Bool
    
    private var iconName: String {
        if let initial = message.senderName.first {
            return initial.lowercased()
        } else {
            return "questionmark"
        }
    }
    
    private var iconColor: Color {
        if isCurrentUser {
            return .blue
        } else {
            return .green
        }
    }
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Image(systemName: "\(iconName).circle.fill")
                    .font(.largeTitle)
                    .foregroundColor(iconColor)
                
                VStack(alignment: .leading) {
                    Text(message.senderName)
                        .font(.headline)
                    
                    Text(message.body)
                        .font(.body)
                }
                
                
            }
            .padding(.horizontal, 16)
            
            Divider().padding(.leading, 16)
        }
    }
}
struct MessageRow_Previews: PreviewProvider {
    static var previews: some View {
        MessageRow(message: Message(id: "184302", senderName: "Alex Titov", senderID: "389234y723", body: "This is my first message lol.", creationDate: 0), isCurrentUser: true)
    }
}
