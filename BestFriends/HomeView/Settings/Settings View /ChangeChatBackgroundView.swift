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
            ColorManager.purple2
                .ignoresSafeArea()
            
            VStack {
                
//
//                Button(action: {
//                    sessionManager.showLogin()
//                },
//                    label: {
//                        Text("Home / Chat")
//                            .fontWeight(.thin)
//                            .frame(width: 200, height: 40)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 30))
//                            .background(ColorManager.purple3)
//                            .cornerRadius(15)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                    })
//
                
                Text("Go ahead. Try a 'motion' background")
                    .font(.system(size: 17))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple5)
                
                Spacer()
                    .frame(height: 15)
                
                Text("Change chat background")
                    .onAppear(perform: loadData)
                
                HStack {
                  
                    
                    BackgroundCard(title: "Flowers - motion", backgroundNumber: 4, user: user, selectedBackground: $selectedBackground)
                        .padding(5)
                    
                    BackgroundCard(title: "Default - static", backgroundNumber: 0, user: user, selectedBackground: $selectedBackground)
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
                    
                    BackgroundCard(title: "Embedded Nike Ad", backgroundNumber: 1, user: user, selectedBackground: $selectedBackground)
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
