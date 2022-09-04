//
//  ChangeChatBackgroundView.swift
//  BestFriends
//
//  Created by Alex Titov on 8/12/22.
//

import SwiftUI

struct ChangeChatBackgroundView: View {
    
    let user: User
    
    @State private var selectedBackground = 0
    
    var body: some View {
        ZStack {
            ColorManager.purple2
                .ignoresSafeArea()
            
            VStack {
                Text("Change chat background")
                    .onAppear(perform: loadData)
                
                HStack {
                    BackgroundCard(title: "Default", backgroundNumber: 0, user: user, selectedBackground: $selectedBackground)
                        .padding(5)
                    
                    BackgroundCard(title: "Nike", backgroundNumber: 1, user: user, selectedBackground: $selectedBackground)
                        .padding(5)
                }
                .padding(.horizontal, 10)
                
//                HStack {
//                    BackgroundCard(title: "Clouds", backgroundNumber: 2, user: user, selectedBackground: $selectedBackground)
//                        .padding(5)
//                    
//                    BackgroundCard(title: "Nostalgia", backgroundNumber: 3, user: user, selectedBackground: $selectedBackground)
//                        .padding(5)
//                }
//                .padding(.horizontal, 10)
                
                HStack {
                    BackgroundCard(title: "Flowers", backgroundNumber: 4, user: user, selectedBackground: $selectedBackground)
                        .padding(5)
                    
                    BackgroundCard(title: "Bull", backgroundNumber: 5, user: user, selectedBackground: $selectedBackground)
                        .padding(5)
                }
                .padding(.horizontal, 10)
            }
        }
    }
    
    private func loadData() {
        if user.chatBackground == "" {
            selectedBackground = 0
        } else {
            selectedBackground = Int(user.chatBackground) ?? 0
        }
    }
    
    private struct BackgroundCard: View {
        let title: String
        let backgroundNumber: Int
        let user: User
        @Binding var selectedBackground: Int
        
        var body: some View {
            ZStack {
                ColorManager.purple4
                
                VStack {
                    Text(title)
                        .font(.system(size: 20))
                    
                    Image("background_\(backgroundNumber)")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    
                    if backgroundNumber == selectedBackground {
                        Text("Selected")
                            .foregroundColor(.green)
                            .font(.system(size: 20))
                        
                    } else {
                        Button(action: {
                            update()
                        }, label: {
                            ZStack {
                                ColorManager.purple7
                                
                                Text("Select")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                            }
                            .frame(width: 100, height: 40)
                            .cornerRadius(20)
                        })
                    }
                    
                    
                }
            }
            .frame(height: 220)
            .cornerRadius(15)
        }
        
        private func update() {
            let u = User(id: user.id, firstName: user.firstName, lastName: user.lastName, APNToken: user.APNToken, friends: user.friends, groups: user.groups, hiddenGroups: user.hiddenGroups, atmosphere: user.atmosphere, chatPin: user.chatPin, chatBackground: String(backgroundNumber), smileNotes: user.smileNotes)
            RestApi.instance.updateUser(user: u).then({ result in
                print("Update result", result)
                if result == 200 {
                    selectedBackground = backgroundNumber
                }
            })
        }
    }
    
}
