//
//  ShakingCoolFullScreenView.swift
//  BestFriends
//
//  Created by Alex Titov on 5/25/21.
//

import SwiftUI
import Amplify

struct ShakingCoolFullScreenView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var image: Image = Image("Loading")
    
    init() {
        loadAndCycle()
    }

    var body: some View {
        ZStack {
            image
                .resizable()
                .ignoresSafeArea()
                .scaledToFit()
            
            Button("Dismiss Modal") {
                presentationMode.wrappedValue.dismiss()
            }
        }
        
        
    }
    
    private func loadAndCycle() {
        guard let id = Amplify.Auth.getCurrentUser()?.username else { return }
        let user = UserDataSource().getUser(id: id)
        print("Got user: ", user)
        guard let links = user.shakingCoolLinks else { return }
        for link in links {
            print(link)
        }
    }
}
