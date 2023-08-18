//
//  ChangeChatBackgroundView.swift
//  BestFriends
//
//  Created by Alex Titov on 8/12/22.
//

import SwiftUI

struct ChangeChatBackgroundView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    
    @State private var selectedBackground = 0
    
    var body: some View {
        ZStack {
            ColorManager.purple1
                .ignoresSafeArea()
            
            VStack {
                

                
                Text("Try a 'motion' background")
                    .font(.system(size: 30))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey2)
                
                Spacer()
                    .frame(height: 15)
                
                Text("(exit app and re-enter to activate)")
                    .onAppear(perform: loadData)
                
                HStack {
                  
                    
//                    BackgroundCard(title: "Flowers - motion", backgroundNumber: 4, user: user, selectedBackground: $selectedBackground)
//                        .padding(5)
//
//                    BackgroundCard(title: "Default - static", backgroundNumber: 0, user: user, selectedBackground: $selectedBackground)
//                        .padding(5)
//
//                 
                    
                    BackgroundCard(title: "Default - static", backgroundNumber: 0, user: user, selectedBackground: $selectedBackground)
                        .padding(5)
                    
                    BackgroundCard(title: "Poppies - motion", backgroundNumber: 4, user: user, selectedBackground: $selectedBackground)
                        .padding(5)
                 
                   
                  
                    
                 
                }
                .padding(.horizontal, 10)
                
                HStack {
                    BackgroundCard(title: "Universe 1", backgroundNumber: 2, user: user, selectedBackground: $selectedBackground)
                        .padding(5)
                    
                    BackgroundCard(title: "Universe 2", backgroundNumber: 7, user: user, selectedBackground: $selectedBackground)
                        .padding(5)
                }
                .padding(.horizontal, 10)
                
                HStack {
                    
                    BackgroundCard(title: "Universe 3", backgroundNumber: 1, user: user, selectedBackground: $selectedBackground)
                        .padding(5)
                  
                    
                    BackgroundCard(title: "Bull - motion", backgroundNumber: 5, user: user, selectedBackground: $selectedBackground)
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
                        .font(.system(size: 15))
                    
                    Image("background_\(backgroundNumber)")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                    
                    if backgroundNumber == selectedBackground {
                        Text("Selected")
                            .foregroundColor(.green)
                            .font(.system(size: 20))
                        
                    } else {
                        Button(action: {
                            update()
                        }, label: {
                            ZStack {
                                ColorManager.grey4
                                
                                Text("Select")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                            }
                            .frame(width: 90, height: 40)
                            .cornerRadius(10)
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
