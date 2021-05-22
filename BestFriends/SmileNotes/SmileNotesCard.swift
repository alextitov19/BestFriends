//
//  SmileNotesCard.swift
//  BestFriends
//
//  Created by Alex Titov on 5/22/21.
//

import SwiftUI

struct SmileNotesCard: View {
    
    let message: Message

    var body: some View {
        ZStack {
            
            Color(
                red: .random(in: 0...1),
                green: .random(in: 0...1),
                blue: .random(in: 0...1)
                )
            
            VStack {
                Text("\"" + message.body + "\"")
                    .font(.system(size: 30, weight: .semibold))
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 330)
                
                Spacer().frame(height: 20)
                
                Text("- " + message.senderName)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .frame(width: 330, alignment: .trailing)

            }
        }
        .frame(width: 350, height: 350, alignment: .center)
    }
    
}

struct SileNotesCard_Previews : PreviewProvider {
    static var previews: some View {
        SmileNotesCard(message: Message(id: "", senderName: "Fred S", senderID: "", body: "You are a great friend! Have a good day.", creationDate: 1))
    }
}

