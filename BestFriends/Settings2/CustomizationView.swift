//
//  CustomizationView.swift
//  BestFriends
//
//  Created by Alex Titov on 8/12/21.
//

import SwiftUI

struct CustomizationView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var chatFontSize = 16
    
    private let userDS = UserDataSource()
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()
            VStack {
                VStack {
                    HStack {
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Image("arrowRight")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .scaledToFit()
                                .colorInvert()
                                .rotationEffect(Angle(degrees: 180))
                        }
                        
                        Spacer()
                        
                        Text("Customization")
                            .font(.system(size: 30))
                            .offset(x: -25)
                            .onAppear {
                                loadData()
                            }
                        
                        Spacer()
                    }
                    
                    Spacer()
                        .frame(height: 50)
                    
                    HStack {
                        Text("Chat Font Size")
                            .font(.system(size: 20))
                        
                        Spacer()
                        
                        Image("arrowRight")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .scaledToFit()
                            .colorInvert()
                            .rotationEffect(Angle(degrees: 180))
                            .onTapGesture {
                                chatFontSize -= 1
                            }
                        
                        Text("\(chatFontSize)")
                        
                        Image("arrowRight")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .scaledToFit()
                            .colorInvert()
                            .onTapGesture {
                                chatFontSize += 1
                            }
                    }
                    
                    Divider()
                    NavigationLink(
                        destination: ChangeBackground(),
                        label: {
                            HStack {
                                Text("Chat Background")
                                    .font(.system(size: 20))
                                    .foregroundColor(.black)

                                Spacer()
                                
                                Image("arrowRight")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .scaledToFit()
                                    .colorInvert()
                            }
                        })
                    
                    Divider()
                }
                
                NavigationLink(
                    destination: ChangeAdPreference(),
                    label: {
                        
                        HStack {
                            VStack {
                                Text("Change Ad Preference")
                                    .font(.system(size: 20))
                                    .foregroundColor(.black)
                                
                                Text("Ads you see are based on your interests")
                                    .font(.system(size: 10, weight: .light))
                                    .foregroundColor(.black)
                            }
                            
                            Spacer()
                            
                            Image("arrowRight")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .scaledToFit()
                                .colorInvert()
                        }
                        
                    })
                
                Divider()
                
                Spacer()
                
                Button(action: {
                    saveData()
                }) {
                    Text("Save")
                        .frame(width: 250, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.title)
                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(10)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                }
            }
            .padding(30)
            .navigationBarHidden(true)
        }
    }
    
    private func saveData() {
        var user = userDS.getCurrentUser()
        user.chatFontSize = chatFontSize
        userDS.updateUser(user: user)
    }
    
    private func loadData() {
        let user = userDS.getCurrentUser()
        chatFontSize = user.chatFontSize
    }
    
}
