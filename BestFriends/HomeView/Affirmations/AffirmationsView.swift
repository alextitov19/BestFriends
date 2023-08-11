//
//  AffirmationsView.swift
//  BestFriends
//
//  Created by Alex Titov on 6/14/23.
//

import SwiftUI

struct AffirmationsView: View {
    
    @State private var user = User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: "", chatPin: "", chatBackground: "")
    @State private var affirmations: [String] = []
    @State private var newAffirmation = ""
    @State private var createAffirmationPresented = false
    
    var body: some View {
        ZStack {
            ColorManager.purple7
                .opacity(0.3)
                .ignoresSafeArea()
                .onAppear { loadData() }
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            VStack {
                Text("My Affirmations")
                    .font(.system(size: 30, weight: .light))
                    .foregroundColor(ColorManager.purple5)
                
                    Button(action: {
                        createAffirmationPresented = true
                    }, label: {
                        addButtonBody()
                    })
                    .padding()
                    .alert("Create New Affirmation", isPresented: $createAffirmationPresented, actions: {
                                TextField("Affirmation", text: $newAffirmation)
                                
                                Button("Login", action: {})
                                Button("Cancel", role: .cancel, action: {})
                            }, message: {
                                Text("Create a new affirmation")
                            })
            }
        }
    }
    
    private func loadData() {
        affirmations = []
        RestApi.instance.getHomeData().then({ result in
            user = result.user
            affirmations = user.affirmations ?? []
        })
    }
    
    private struct addButtonBody: View {
        var body: some View {
            ZStack {
                ColorManager.purple3
                
                Image(systemName: "plus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(ColorManager.purple5)
                    .opacity(0.3)
            }
            .frame(width: 200, height: 50)
            .cornerRadius(15)
            .opacity(0.7)
        }
    }
}
