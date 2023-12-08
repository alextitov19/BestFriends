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
                

                
                Text("Customize Your background")
                    .font(.system(size: 30))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
             
                Text("")
                    .onAppear(perform: loadData)
                
                Button(action: {
                    sessionManager.showLogin()
                },
                       label: {
                    Image("home-alt2")
                        .frame(width: 50, height: 25)
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .background(ColorManager .grey2)
                        .cornerRadius(15)
                        .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                        .opacity(0.70)
                    
                })
                
                HStack {
                  
         
                    BackgroundCard(title: "Recommended: \n(same background as Homepage)", backgroundNumber: 10, user: user, selectedBackground: $selectedBackground)
                        .blinking(duration: 2.0)
                        .padding(5)
                    
                  
                 
                }
                .padding(.horizontal, 10)
                
                HStack {
                    
                    BackgroundCard(title: "Orange Planet", backgroundNumber: 8, user: user, selectedBackground: $selectedBackground)
                        .padding(5)
                  
                    BackgroundCard(title: "Circling Planets", backgroundNumber: 7, user: user, selectedBackground: $selectedBackground)
                        .padding(5)
                    
                    BackgroundCard(title: "Easy Hearts", backgroundNumber: 11, user: user, selectedBackground: $selectedBackground)
                        .padding(5)
                  
                }
                .padding(.horizontal, 10)
            
                
                HStack {
                    
                    
                    BackgroundCard(title: "Poppies in breeze", backgroundNumber: 4, user: user, selectedBackground: $selectedBackground)
                        .padding(5)
                    
//                    BackgroundCard(title: "Default - Static Gray", backgroundNumber: 0, user: user, selectedBackground: $selectedBackground)
//                        .padding(5)
                  
                    BackgroundCard(title: "Bull in snow", backgroundNumber: 5, user: user, selectedBackground: $selectedBackground)
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
            .frame(height: 190)
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
