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

    @Binding var createClicked: Bool
    @Binding var text: String
    @Binding var mood: Double
    @Binding var weather: String
    @Binding var imagesData: [Data]
    
    @State private var isShowPhotoLibrary = false
    @State private var attachmentImage: UIImage?
    @State private var showsAlert = false
    @State private var pickerSourceType: UIImagePickerController.SourceType = .photoLibrary
    
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
                        .foregroundColor(.orange)
                        .frame(width: 30, height: 30)
                }
                .padding()
                
                HStack {
                    ForEach(imagesData, id: \.self) { i in
                        Image(uiImage: UIImage(data: i)!)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .scaledToFill()
                            .onTapGesture {
                                let index = imagesData.firstIndex(of: i)
                                if index != nil {
                                    imagesData.remove(at: index!)
                                }
                            }
                    }
                }
                
                HStack {
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(ColorManager.purple5)
                        .onTapGesture { showsAlert = true }
                        .confirmationDialog("Send an image", isPresented: $showsAlert, titleVisibility: .visible) {
                            Button("Photo Library", action: {
                                pickerSourceType = .photoLibrary
                                isShowPhotoLibrary = !isShowPhotoLibrary
                            })
                            Button("Camera", action: {
                                pickerSourceType = .camera
                                isShowPhotoLibrary = !isShowPhotoLibrary
                            })
                        }.sheet(isPresented: $isShowPhotoLibrary) {
                            ImagePicker(image: $attachmentImage, sourceType: pickerSourceType)
                                .onDisappear {
                                    convertImage()
                                }
                        }
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
    
    private func createTapped() {
        if(text.isEmpty) {
            return
        }
        createClicked = true
        isPresented = false
    }
    
    private func convertImage() {
        guard let image: UIImage = attachmentImage else {
            print("Attachment iamge is nil")
            return
        }
        
        guard let data = image.jpeg(.lowest) else {
            print("Failed to convert image")
            return
        }
        imagesData.append(data)
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
