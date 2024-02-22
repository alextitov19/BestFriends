//
//  RoomCell.swift
//  BestFriends
//
//  Created by Alex Titov on 4/25/21.
//

import SwiftUI

struct GroupRow: View {
    
    let group: Group
    
    @State var namestring = ""
    @State var timestring = ""
    
    var body: some View {
        
        HStack {
            Spacer()
                .frame(width: 10)
                .onAppear {
                    getData()
                }
            
            VStack(alignment: .leading) {
                Spacer()
                    .frame(height: 70)
                
                HStack {
                    Spacer()
                        .frame(width: 10)
                    
                    Text(group.name)
                        .font(.system(size: 20, weight: .light))
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                
                HStack {
                    Spacer().frame(width: 10)
                    
                    Text(namestring)
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
    
    private func getData() {
        // Get timestring
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
        
        // Get member names
        namestring = ""
        for id in group.members {
            RestApi.instance.getUserById(id: id).then { result in
                namestring.append(result.firstName + " " + String(result.lastName.first!) + ", ")
            }
        }
    }
}

