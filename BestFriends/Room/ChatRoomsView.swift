//
//  ChatRoomsView.swift
//  BestFriends
//
//  Created by Alex Titov on 8/23/21.
//

import SwiftUI

struct ChatRoomsView: View {
        
    var body: some View {
        Color(.green)
    }
}

struct ChatRoomsViewPreview : PreviewProvider {
    static var previews: some View {
        ChatRoomsView()
            .environmentObject(SessionManager())
    }
}
