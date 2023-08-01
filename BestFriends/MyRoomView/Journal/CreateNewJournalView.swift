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
            Color.cyan
                .opacity(0.95)
            
            VStack{
                Text("new Crush post")
                    .font(.system(size: 35, weight: .regular))
                    .foregroundColor(Color.cyan)
                
                TextEditor(text: $text)
                    .font(.system(size: 16, weight: .light))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(ColorManager.purple5)
                    .padding(.vertical)
                    .cornerRadius(15)
                
//                Text("today I'm ...")
//                    .font(.system(size: 25, weight: .light))
//                    .foregroundColor(ColorManager .grey4)
//
//                HStack {
//                    Image("sadMood")
//                        .renderingMode(.template)
//                        .resizable()
//                        .foregroundColor(.blue)
//                        .frame(width: 40, height: 40)
//
//                    Slider(value: $mood, in: -1...1)
//
//                    Image("happyMood")
//                        .renderingMode(.template)
//                        .resizable()
//                        .foregroundColor(.yellow)
//                        .frame(width: 40, height: 40)
//                }
//                .padding()
                
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
                    Image(systemName: "person.crop.artframe")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 45, height: 45)
                        .foregroundColor(Color.purple)
                        .onTapGesture { showsAlert = true }
                        .confirmationDialog("Send an image", isPresented: $showsAlert, titleVisibility: .visible) {
                            Button("gallery", action: {
                                pickerSourceType = .photoLibrary
                                isShowPhotoLibrary = !isShowPhotoLibrary
                            })
                            
//                            camera
                            Button("camera", action: {
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
        
//                    ******************************** Private
                    
                    VStack {
                        Button(action: {
                            createTapped()
                        }, label: {
                            ZStack {
                                
                                Color.pink
                                //                                .blendMode(.screen)
                                    .opacity(0.9)
                                Color.white
                                    .blendMode(.screen)
                                    .opacity(0.5)
                                
                                VStack {
                                    Text("Post")
                                        .font(.system(size: 25))
                                        .foregroundColor(Color.white)
                                    
                                    Text("Private")
                                        .font(.system(size: 17))
                                        .foregroundColor(ColorManager .grey4)
                                }
                            }
                            .frame(width: 100, height: 50)
                            .cornerRadius(15)
                        })
                        .padding()
                        
                        //                    ******************************** Post to FriendGroup
                        
                        Button(action: {
                            createTapped()
                        }, label: {
                            ZStack {
                                
                                Color.pink
                                //                                .blendMode(.screen)
                                    .opacity(0.9)
                                Color.white
                                    .blendMode(.screen)
                                    .opacity(0.5)
                               
                                VStack {
                                    Text("Post")
                                        .font(.system(size: 25))
                                        .foregroundColor(Color.white)
                                    
                                    Text("FriendGroup")
                                        .font(.system(size: 17))
                                        .foregroundColor(ColorManager .grey4)
                                }
                                
                            }
                            .frame(width: 150, height: 50)
                            .cornerRadius(15)
                        })
                        .padding()
                    }
        
//                    ********************************
                  
                    Image(systemName: "thermometer.sun")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color.purple)
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
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.red)
                        .onTapGesture {
                            weather = "heart"
                            isWeatherSelectorPresented = false
                        }
                    
                    Image(systemName: "face.smiling.inverse")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.yellow)
                        .onTapGesture {
                            weather = "face.smiling.inverse"
                            isWeatherSelectorPresented = false
                        }
                    
                    Image(systemName: "person.icloud.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(ColorManager .purple5)
                        .onTapGesture {
                            weather = "person.icloud.fill"
                            isWeatherSelectorPresented = false
                        }
                    
                    Image(systemName: "person.2.slash.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(ColorManager.grey4)
                        .onTapGesture {
                            weather = "person.2.slash.fill"
                            isWeatherSelectorPresented = false
                        }
                    
                    Image(systemName: "")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(ColorManager.purple5)
                        .onTapGesture {
                            weather = ""
                            isWeatherSelectorPresented = false
                        }
                }
            }
            .frame(width: 50, height: 200)
            .cornerRadius(15)
        }
    }
}
