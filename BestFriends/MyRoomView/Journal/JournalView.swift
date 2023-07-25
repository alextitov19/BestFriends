//
//  JournalView.swift
//  BestFriends
//
//  Created by Alex Titov on 6/12/23.
//

import SwiftUI

struct JournalView: View {
    
    let journal: Journal
    let dateString: String
    @State private var images: [UIImage] = []
    
    init(j: Journal) {
        journal = j
        
        let d = Date(timeIntervalSince1970: TimeInterval(j.createdOn))
        let formatter3 = DateFormatter()
        formatter3.dateFormat = "E, d MMM"
        dateString = formatter3.string(from: d)
    }
    
    var body: some View {
        ZStack {
            ColorManager.purple2
                .ignoresSafeArea()
                .onAppear {
                    loadImages()
                }
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    Text(dateString)
                        .font(.system(size: 24, weight: .light))
                        .foregroundColor(ColorManager.purple5)
                    
                    Text(journal.text)
                        .font(.system(size: 16))
                        .foregroundColor(ColorManager.purple4)
                        .multilineTextAlignment(.leading)
                        .padding()
                    
                    HStack {
                        VStack {
                            
                            Text("My attitude towards my Crush")
                                .font(.system(size: 20))
                                .foregroundColor(ColorManager.grey4)
                                .multilineTextAlignment(.center)
                                .padding()
                            
                            if journal.mood < 0 {
                                Image("sadMood")
                                    .renderingMode(.template)
                                    .resizable()
                                    .foregroundColor(.blue)
                                    .frame(width: 30, height: 30)
                                
                            } else {
                                
                                Image("happyMood")
                                    .renderingMode(.template)
                                    .resizable()
                                    .foregroundColor(.yellow)
                                    .frame(width: 30, height: 30)
                            }
                            
                            Text(String(abs(journal.mood * 100).rounded(.up)) + "%")
                                .font(.system(size: 12))
                        }
                        .padding()
                        
                        Image(systemName: journal.weather)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 42, height: 42)
                            .foregroundColor(ColorManager.purple5)
                            .padding()
                    }
                    
                    ForEach(images, id: \.self) {image in
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .padding()
                    }
                    
                    Spacer()
                }
            }
        }
    }
    
    private func loadImages() {
        for link in journal.images {
            print("Link: ", link)
            RestApi.instance.getImage(link: link).then({ response in
                let i = UIImage(data: response)
                if i != nil {
                    images.append(i!)
                }
            })
        }
    }
}
