//
//  RoomView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/25/21.
//

import SwiftUI
import Amplify


struct RoomView: View {

    @State var text: String = ""
    @ObservedObject var dataSource = RoomDataSource()


    init() {
        dataSource.getRooms()
        print("Rooms: ", dataSource.rooms)
    }

    var body: some View {
        VStack {
            ScrollView {
                LazyVStack {
                    ForEach(dataSource.rooms) { room in
                        RoomRow()
                        Spacer()
                            .frame(height: 30)
                    }
                }
            }
        }
        
    }
}
