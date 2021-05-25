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
    @State var index: Int = 0
    
    let shakingCoolDataSource = ShakingCoolDataSource()
    
    @State var links: [String] = []
    let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()

    var body: some View {
        ZStack {
            Button("Dismiss Modal") {
                presentationMode.wrappedValue.dismiss()
            }
            .onReceive(timer) { time in
                print("Switching image")
                cycleImages()
            }
            .onAppear {
                loadData()
            }
            
            image
                .resizable()
                .ignoresSafeArea()
                .scaledToFit()
            
        }
    }
    
    
    private func loadData() {
        guard let id = Amplify.Auth.getCurrentUser()?.username else { return }
        let user = UserDataSource().getUser(id: id)
        print("Got user: ", user)
        guard let userlinks = user.shakingCoolLinks else { return }
        links = userlinks
        print("THe links are: ", links)
    }
    
    private func cycleImages() {
        if index == links.count {
            presentationMode.wrappedValue.dismiss()
        } else if index < links.count {
            image = Image(uiImage: shakingCoolDataSource.downloadImage(key: links[index], rotating: false))
            index += 1
        }
    }
}
