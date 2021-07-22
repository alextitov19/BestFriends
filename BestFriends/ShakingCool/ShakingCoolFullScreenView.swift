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
    @State var isPaused = false
    
    var images: [Image] = []
    
    init() {
        loadData()
    }
    
    
    let shakingCoolDataSource = ShakingCoolDataSource()
    
    var shakingCool: [ShakingCool] = []
    
    var timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            Button("Dismiss Modal") {
                presentationMode.wrappedValue.dismiss()
            }
            .onReceive(timer) { time in
                print("Switching image")
                cycleImages()
            }
            
            image
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
                .gesture(LongPressGesture(minimumDuration: 1)
                            .onEnded { _ in
                                isPaused.toggle()
                                print("Are we paused? - ", isPaused)
                            })
            
        }
    }
    
    
    private mutating func loadData() {
        guard let id = Amplify.Auth.getCurrentUser()?.username else { return }
        let user = UserDataSource().getUser(id: id)
        print("Got user: ", user)
        guard let userlinks = user.shakingCool else { return }
        shakingCool = userlinks
        print("ShakingCool: ", shakingCool)
        for cool in shakingCool {
            images.append(Image(uiImage: shakingCoolDataSource.downloadImage(key: cool.link, rotating: true, tall: true)))
            if images.count == 1 {
                image = images[0]
                index += 1
            }
        }
        print("Images count: ", images.count)
    }
    
    private func cycleImages() {
        if index == shakingCool.count {
            presentationMode.wrappedValue.dismiss()
        } else if index < shakingCool.count {
            if !isPaused {
                image = images[index]
                index += 1
            }
        }
    }
}
