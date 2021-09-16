//
//  RoomCell.swift
//  BestFriends
//
//  Created by Alex Titov on 4/25/21.
//

import SwiftUI

struct RoomRow: View {
    
    let room: Room
    
    @State var messageBody = ""
    @State var timestring = ""
    
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
                    
                    Text(room.name)
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
        messageBody = room.messages.last?.body ?? ""
        let message = room.messages.last
        if message != nil {
            getTimestring()
        }
        

        if UserDataSource().getCurrentUser().hiddenRooms.contains(room.id) {
            messageBody = "*Hidden*"
        }
    }
    
    func getTimestring() {
        let minutes: Int = Int(Int(Int(NSDate().timeIntervalSince1970) - room.messages.last!.creationDate) / 60)
        timestring = "\(minutes) min"
        if minutes > 60 {
            let hours = Int(minutes / 60)
            timestring = "\(hours) hr"
        }
    }
}

