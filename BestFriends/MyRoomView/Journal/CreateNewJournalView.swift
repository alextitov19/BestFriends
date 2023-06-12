//
//  NewJournalCategoryView.swift
//  BestFriends
//
//  Created by Alex Titov on 6/10/23.
//

import SwiftUI

struct CreateNewJournalView: View {
    @Binding var isPresented: Bool
    @State private var isWeatherPresented = false

    @Binding var text: String
    @Binding var mood: Double
    @Binding var weather: String
    
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
                    
                    Image(systemName: weather)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(ColorManager.purple5)
                        .onTapGesture {
                            isWeatherPresented = true
                        }
                        .padding()
                }
                
                
                Spacer()
            }
            .padding()
            
            if isWeatherPresented {
                VStack {
                    Spacer()
                    
                    HStack {
                        Spacer()
                        
                        WeatherSelector(isWeatherSelectorPresented: $isWeatherPresented, weather: $weather)
                            .onDisappear {
                                print("Selected weather: ", weather)
                            }
                        
                        Spacer()
                            .frame(width: 40)
                    }
                }
                
            }
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
    
    private struct WeatherSelector: View {
        @Binding var isWeatherSelectorPresented: Bool
        @Binding var weather: String
        
        var body: some View {
            ZStack {
                ColorManager.purple3
                
                VStack {
                    Image(systemName: "sun.max")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(ColorManager.purple5)
                        .onTapGesture {
                            weather = "sun.max"
                            isWeatherSelectorPresented = false
                        }
                    
                    Image(systemName: "cloud")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(ColorManager.purple5)
                        .onTapGesture {
                            weather = "cloud"
                            isWeatherSelectorPresented = false
                        }
                    
                    Image(systemName: "cloud.sun")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(ColorManager.purple5)
                        .onTapGesture {
                            weather = "cloud.sun"
                            isWeatherSelectorPresented = false
                        }
                    
                    Image(systemName: "cloud.drizzle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(ColorManager.purple5)
                        .onTapGesture {
                            weather = "cloud.drizzle"
                            isWeatherSelectorPresented = false
                        }
                    
                    Image(systemName: "cloud.snow")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(ColorManager.purple5)
                        .onTapGesture {
                            weather = "cloud.snow"
                            isWeatherSelectorPresented = false
                        }
                }
            }
            .frame(width: 50, height: 200)
            .cornerRadius(15)
        }
    }
}
