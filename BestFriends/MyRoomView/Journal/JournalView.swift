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
                        if journal.category == selectedCategory {
                            JournalRowView(j: journal)
                        }
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
        
    private struct JournalRowView: View {
        let journal: Journal
        let dateString: String

        init(j: Journal) {
            journal = j
            var x = Int64(Date().timeIntervalSince1970) - j.createdOn
            x = x / 60
            var s = "\(x) min"
            if x > 60 {
                x = x / 60
                s = "\(x) hr"
                if x > 24 {
                    x = x / 24
                    s = "\(x) days"
                }
            }
            dateString = s
        }
        
        var body: some View {
            ZStack {
                ColorManager.purple2
                
                VStack {
                    HStack {
                        Text(dateString)
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(ColorManager.purple5)
                        
                        Spacer()
                    }
                    .padding()
                    
                    Text(journal.text)
                        .font(.system(size: 16, weight: .light))
                        .foregroundColor(ColorManager.purple5)
                }
                .padding()
            }
            .frame(width: 200, height: 60)
            .cornerRadius(15)
            .padding()
        }
    }
    
}
