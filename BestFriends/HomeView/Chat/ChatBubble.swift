//
//  ChatBubble.swift
//  BestFriends
//
//  Created by Alex Titov on 4/11/22.
//

import SwiftUI

struct ChatBubble: View {
    
    let message: Message
    let myOwnMessage: Bool
    
    @State private var image: UIImage? = nil
    
    var body: some View {
        
        if myOwnMessage {
            
                HStack {
                    Spacer()
                    
                    if message.image != nil {
                        if image != nil {
                            
                        }
                    } else {
                        Text(message.body)
                            .padding(10)
                            .multilineTextAlignment(.leading)
                            .font(.system(size: 16).weight(.light))
                            .foregroundColor(.white)
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                    }
                }
                .padding(.horizontal, 5)
            
        } else {
            
            VStack {
                HStack {
                    Text(message.senderName)
                        .frame(width: 200, alignment: .leading)
                        .foregroundColor(.white)
                        .font(.system(size: 16).weight(.thin))
                        .offset(x: 5, y: 5)
                    
                    Spacer()
                }
                
                HStack {
                    Text(message.body)
                        .padding(10)
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 16).weight(.light))
                        .foregroundColor(.white)
                        .background(ColorManager.purple3)
                        .cornerRadius(15)
                    
                    Spacer()
                }
                .padding(.horizontal, 5)
            }
        }
    }
        
    
    func getWidth(text: String) -> CGFloat {
        if text.count > 24 {
            return 200
        } else {
            return CGFloat(text.count * (10))
        }
    }
    
    func getHeight(text: String) -> CGFloat {
        let result = Double(text.count / 24)
        let rows = result.rounded(.up) + 1
        return CGFloat(rows * 30)
    }
}


