//
//  NotificationPreLoad.swift
//  BestFriends
//
//  Created by Social Tech on 6/10/21.
//

import Amplify
import SwiftUI

struct NotificationPreLoad: View {

    @EnvironmentObject var sessionManager: SessionManager
    @State private var selectedMinutes: Int = -1
    
    var roomID: String
    
    init(roomID: String) {
        self.roomID = roomID
    }
    
    var body: some View {
            ZStack {
                
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    Button(action: {
                        
                    }) {
                        Text("Chat now")
                    }
                    .padding(20)
                    
                    Button(action: {
                        
                    }) {
                        Text("Give me 5 minutes")
                    }
                    .padding(20)
                    
                    Button(action: {
                        
                    }) {
                        Text("Give me 10 minutes")
                    }
                    .padding(20)
                    
                    Button(action: {
                        
                    }) {
                        Text("Give me 15 minutes")
                    }
                    .padding(20)
                    
                    Button(action: {
                        
                    }) {
                        Text("Give me 30 minutes")
                    }
                    .padding(20)
                    
                    Button(action: {
                        
                    }) {
                        Text("Give me an hour")
                    }
                    .padding(20)
                    
                    Button(action: {
                        
                    }) {
                        Text("Give me 2 hours")
                    }
                    .padding(20)
                    
                    Button(action: {
                        
                    }) {
                        Text("Can't chat for a while")
                    }
                    .padding(20)
                }
        }
    }
}




struct NotificationPreLoad_Previews : PreviewProvider {
    static var previews: some View {
        NotificationPreLoad(roomID: "")
    }
}

