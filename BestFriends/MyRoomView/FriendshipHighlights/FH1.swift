//
//  FH1.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/7/23.
//

import SwiftUI

struct FH1: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    let friendAtmospheres: [Atmosphere]

    @State private var selectedIndex = 0
//    var sentences = [
//        "This is a sentence.",
//        "This is another sentence.",
//        "And one more sentence."
//    ]

    // Create a ViewModel to handle data
    @StateObject private var viewModel = FHViewModel()

    var body: some View {
        ZStack {
            Image("FHBackground")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            Spacer()

            VStack(spacing: 16) {
                Spacer().frame(height: 250)

                ZStack {
                    TabView(selection: $selectedIndex) {
                        ForEach(0..<viewModel.sentences.count, id: \.self) { index in
                            Text(viewModel.sentences[index])
                                .foregroundColor(.white)
                                .font(.title)
                                .frame(maxWidth: .infinity)
                                .id(index)
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    .padding(16)
                    .background(Color.purple)
                    .opacity(0.8)
                    .cornerRadius(10)
                    .frame(height: 350)
                    .onAppear {
                        selectedIndex = 0
                    }
                    
                    
                    if viewModel.nameTags.indices.contains(selectedIndex) {
                        Text(viewModel.nameTags[selectedIndex])
                            .foregroundColor(.white)
                            .font(.headline)
                            .padding(8)
                            .background(Color.blue)
                            .cornerRadius(8)
                            .offset(x: -120, y: -200)
                            .shadow(color: .black, radius: 3, x: 0, y: 2)
                            .alignmentGuide(.leading) { $0[.leading] }
                    }
                }

                Spacer()
            }
            .padding()
            .frame(maxHeight: .infinity)
        }
        .onAppear {
            viewModel.loadData(friends: friends, atmospheres: friendAtmospheres){
//                print(viewModel.sentences)
            }
        }
    }
}

class FHViewModel: ObservableObject {
    @Published var nameTags: [String] = []
    @Published var sentences: [String] = []

    func loadData(friends: [User], atmospheres: [Atmosphere], completion: @escaping () -> Void) {
        var processedFriends = 0 // Keep track of how many friends are processed
        for friend in friends {
            for atm in atmospheres {
                if friend.atmosphere == atm.id {
                    nameTags.append(friend.firstName)

                    RestApi.instance.getSmileNotes().then({ sn in
                        print("Got smile notes: ", sn)
                        for s in sn {
                            if s.senderName == friend.firstName + " " + friend.lastName {
                                self.sentences.append(s.messageBody)
                                break
                            }
                        }

                        processedFriends += 1 // Increment the count of processed friends

                        // Check if all friends are processed, and if so, call the completion handler
                        if processedFriends == friends.count {
                            completion()
                        }
                    })
                }
            }
        }
    }
}

