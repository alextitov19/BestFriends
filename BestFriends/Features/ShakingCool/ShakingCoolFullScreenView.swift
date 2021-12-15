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
    let userDS = UserDataSource()
    
    init() {
        loadData()
    }
    
    
    let shakingCoolDataSource = ImageDataSource()
    
    var shakingCoolLinks: [String] = []
    
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
        let user = UserDataSource().getCurrentUser()
        print("Got user: ", user)
        let shakingcool = user.shakingCool
        for cool in shakingcool {
            if cool.intendedid == user.id {
                shakingCoolLinks.append(cool.link)
            }
        }
        let friendids = user.friends
        for id in friendids {
            let friend = userDS.getUser(id: id)
            let friendshakingcool = friend.shakingCool
            for cool in friendshakingcool {
                if cool.intendedid == user.id {
                    shakingCoolLinks.append(cool.link)
                }
            }
        }
        
        print("ShakingCool: ", shakingCoolLinks)
        for link in shakingCoolLinks {
            images.append(Image(uiImage: shakingCoolDataSource.downloadImage(key: link, rotating: true, tall: true)))
            if images.count == 1 {
                image = images[0]
                index += 1
            }
        }
        print("Images count: ", images.count)
    }
    
    private func cycleImages() {
        if index == shakingCoolLinks.count {
            presentationMode.wrappedValue.dismiss()
        } else if index < shakingCoolLinks.count {
            if !isPaused {
                image = images[index]
                index += 1
            }
        }
    }
}
