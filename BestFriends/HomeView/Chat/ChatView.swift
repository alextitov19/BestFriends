//
//  ChatView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/7/22.
//

import SwiftUI

struct ChatView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let group: Group
    
    var body: some View {
        Text(group.name)
        
    }
    
}
