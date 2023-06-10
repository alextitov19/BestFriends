//
//  NewJournalCategoryView.swift
//  BestFriends
//
//  Created by Alex Titov on 6/10/23.
//

import SwiftUI

struct CreateNewJournalView: View {
    @Binding var isPresented: Bool
    @Binding var text: String
    @Binding var mood: Double
    
    var body: some View {
        ZStack {
            ColorManager.purple2
            
            VStack{
                Text("New Journal Entry")
                    .font(.system(size: 24, weight: .light))
                    .foregroundColor(ColorManager.purple5)
                
                TextEditor(text: $text)
                    .font(.system(size: 16, weight: .light))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(ColorManager.purple5)
                    .padding(.vertical)
                    .cornerRadius(15)
                
                HStack {
                    Image("sadMood")
                        .renderingMode(.template)
                        .resizable()
                        .foregroundColor(.blue)
                        .frame(width: 30, height: 30)
                    
                    Slider(value: $mood, in: -1...1)
                    
                    Image("happyMood")
                        .renderingMode(.template)
                        .resizable()
                        .foregroundColor(.yellow)
                        .frame(width: 30, height: 30)
                }
                .padding()
                
                HStack {
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(ColorManager.purple5)
                        .padding()

                    Button(action: {
                        createTapped()
                    }, label: {
                        ZStack {
                            ColorManager.purple3
                            
                            Text("Create")
                                .font(.system(size: 18))
                                .foregroundColor(ColorManager.purple5)
                        }
                        .frame(width: 100, height: 50)
                        .cornerRadius(15)
                    })
                    .padding()
                    
                    Image(systemName: "cloud.sun")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(ColorManager.purple5)
                        .padding()
                }
                
                
                Spacer()
            }
            .padding()
        }
        .cornerRadius(15)
        .padding()
    }
    
    func createTapped() {
        if(text.isEmpty) {
            return
        }
        isPresented = false
    }
}
