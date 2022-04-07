//
//  RoomCell.swift
//  BestFriends
//
//  Created by Alex Titov on 4/25/21.
//

import SwiftUI

struct GroupRow: View {
    
    let group: Group
    
    @State var messageBody = "Last message"
    @State var timestring = "5 mins ago"
    
    var body: some View {
        HStack {
            Spacer().frame(width: 10)
                .onAppear {
                    getBody()
                }
            
            VStack(alignment: .leading) {
                Spacer()
                    .frame(height: 10)
                
                HStack {
                    Spacer().frame(width: 10)
                    
                    Text(group.name)
                        .font(.system(size: 20, weight: .light))
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                
                HStack {
                    Spacer().frame(width: 10)
                    
                    Text(messageBody)
                        .font(.system(size: 16, weight: .light))
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Text(timestring)
                        .font(.system(size: 12, weight: .light))
                        .foregroundColor(.white)
                }
                
                Spacer()
                    .frame(height: 10)
            }
            
            Spacer().frame(width: 10)
        }
    }
    
    private func getBody() {
        messageBody = "Last message"
        timestring = "5 mins ago"
    }
}

