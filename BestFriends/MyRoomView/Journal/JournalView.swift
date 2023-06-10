//
//  JournalView.swift
//  BestFriends
//
//  Created by Alex Titov on 6/9/23.
//

import SwiftUI

struct JournalView: View {
    
    @State private var user = User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: "", chatPin: "", chatBackground: "")
    @State private var newCategory = ""
    @State private var selectedCategory = ""
    @State private var selectCategoryIsPresented = false
    @State private var categories: [String] = []
    @State private var journals: [Journal] = []
    
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
                Text(selectedCategory)
                    .font(.system(size: 30, weight: .light))
                    .foregroundColor(ColorManager.purple5)
                    .onTapGesture {
                        categoryTapped()
                    }
                
                Button(action: {
                    
                }, label: {
                    addButtonBody()
                })
                .padding()
                
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(journals, id: \.id) { journal in
                        
                    }
                }
                
                Spacer()
            }
            
            if (selectCategoryIsPresented) {
                CategorySelectorView(categories: categories, isPresented: $selectCategoryIsPresented, newCategory: $newCategory, selectedCategory: $selectedCategory)
                    .onDisappear{
                        print("New Category: ", newCategory)
                        print("Selected Category: ", selectedCategory)
                        newCategotySelected()
                    }
            }
        }
    }
    
    private func loadData() {
        RestApi.instance.getHomeData().then({ result in
            user = result.user
            print("Got user: ", result)
            categories = user.journalCategories ?? []
            if categories.count > 0 && selectedCategory.isEmpty {
                selectedCategory = categories[0]
            }
            if selectedCategory.isEmpty {
                selectedCategory = "Tap Me"
            }
        })
    }
    
    private func categoryTapped() {
        newCategory = ""
        selectedCategory = ""
        selectCategoryIsPresented = true
    }
    
    private func newCategotySelected() {
        if (!newCategory.isEmpty) {
            var u = user
            if u.journalCategories == nil {
                u.journalCategories = []
            }
            u.journalCategories!.append(newCategory)
            RestApi.instance.updateUser(user: u).then({ response in
                if response == 200 {
                    print("Successully added a new category")
                    loadData()
                }
            })
        } else {
            loadData()
        }
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
    
    private struct CategorySelectorView: View {
        let categories: [String]
        @Binding var isPresented: Bool
        @Binding var newCategory: String
        @Binding var selectedCategory: String
        
        var body: some View {
            ZStack {
                ColorManager.purple2
                
                VStack{
                    Text("Select and existing category\nor create a new one")
                        .font(.system(size: 18, weight: .light))
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.purple5)
                        .padding(.bottom)
                    
                    
                    ZStack {
                        ColorManager.purple3
                            .opacity(0.7)
                        
                            HStack {
                                MainTextField(text: $newCategory, placeholder: "Create new category")
                                
                                Button(action: {
                                    createTapped()
                                }, label: {
                                    Text("Create")
                                        .font(.system(size: 16, weight: .bold))
                                        .foregroundColor(ColorManager.purple5)
                                })
                            }
                            .padding()
                    }
                    .frame(height: 65)
                    .cornerRadius(15)
                    
                    ForEach(categories.indices) { i in
                        Button(action: {
                            newCategory = ""
                            selectedCategory = categories[i]
                            isPresented = false
                        }, label: {
                            ZStack {
                                ColorManager.purple3
                                    .opacity(0.7)
                                
                                    Text(categories[i])
                                    .font(.system(size: 18, weight: .light))
                                    .foregroundColor(ColorManager.purple5)
                            }
                            .frame(height: 65)
                            .cornerRadius(15)
                        })
                    }
                    
                    Spacer()
                }
                .padding()
            }
            .cornerRadius(15)
            .padding()
        }
        
        func createTapped() {
            if(newCategory.isEmpty) {
                return
            }
            selectedCategory = newCategory
            isPresented = false
        }
    }
    
    private struct JournalRowView: View {
        let title, imageName: String
        let backgroundColor, foregroundColor: CGColor
        
        var body: some View {
            ZStack {
                Color(cgColor: backgroundColor)
                
                HStack{
                    Image(systemName: imageName)
                        .resizable()
                        .frame(width: 30, height: 30)
                        .scaledToFit()
                        .foregroundColor(Color(cgColor: foregroundColor))
                    
                    Spacer().frame(width: 20)
                    
                    Text(title)
                        .font(.system(size: 24, weight: .light))
                        .foregroundColor(Color(cgColor: foregroundColor))
                }
            }
            .frame(width: 200, height: 60)
            .cornerRadius(15)
            .padding()
        }
    }
    
}
