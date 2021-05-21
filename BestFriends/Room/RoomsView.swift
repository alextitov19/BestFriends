//
//  RoomView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/25/21.
//

import SwiftUI
import Amplify


struct RoomsView: View {

    @State var text: String = ""
    @ObservedObject var dataSource = RoomDataSource()


    init() {
        dataSource.getRooms()
        print("Rooms: ", dataSource.rooms)
    }

    var body: some View {
        NavigationView {
            ZStack {
                
                Image("purpleBackground")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    
                VStack {
                    Text("Chat Rooms")
                        .font(.system(size: 40).bold())
                        .foregroundColor(.white)
                    
                    Spacer().frame(height: 30)
                    
                    HStack {
                        Spacer().frame(width: 20)
                        
                        ScrollView {
                            LazyVStack {
                                Spacer().frame(height: 10)
                                
                                ForEach(dataSource.rooms) { room in
                                    NavigationLink(destination: BlueMessageRoomView(room: room)) {
                                        RoomRow(room: room)
                                    }
                                    Spacer()
                                        .frame(height: 30)
                                }
                            }
                        }
                        
                        Spacer().frame(width: 20)
                    }
                    
                }
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        
    }
}


struct RoomsView_Previews : PreviewProvider {
    static var previews: some View {
        RoomsView()
    }
}
