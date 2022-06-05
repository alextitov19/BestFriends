//
//  RoomCell.swift
//  BestFriends
//
//  Created by Alex Titov on 4/25/21.
//

import SwiftUI

struct GroupRow: View {
    
    let group: Group
    
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
                    
                    Text(group.name)
                        .font(.system(size: 20, weight: .light))
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                
                HStack {
                    Spacer().frame(width: 10)
                    
                    Text(group.name)
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
        var x = Int64(Date().timeIntervalSince1970) - group.createdOn
        x = x / 60
        timestring = "\(x) min"
        if x > 60 {
            x = x / 60
            timestring = "\(x) hr"
            if x > 24 {
                x = x / 24
                timestring = "\(x) days"
            }
        }
    }
}

