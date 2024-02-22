//
//  JournalView.swift
//  BestFriends
//
//  Created by Alex Titov on 6/9/23.
//

import SwiftUI

struct JournalsView: View {
    
    @State private var user = User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: "", chatPin: "", chatBackground: "")
    @State private var atmosphere = Atmosphere(id: "", planet: 0, mood: 0, moodLogs: [])
    @State private var newCategory = ""
    @State private var selectedCategory = ""
    @State private var selectCategoryIsPresented = false
    @State private var categories: [String] = []
    @State private var journals: [Journal] = []
    @State private var createNewJournalIsPresented = false
    @State private var newJournalText = "Today I feel..."
    @State private var newJournalMood = 0.0
    @State private var newJournalWeather = "cloud.sun"
    @State private var newJournalImagesData: [Data] = []
    @State private var createClicked = false
  
    let friends: [User]

    
    var body: some View {
        ZStack {


            ColorManager .purple4
                .opacity(0.6)
                .ignoresSafeArea()
                .onAppear { loadData() }
            
            Image("FHBackground")
                     .resizable()
                     .scaledToFill()
                     .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(selectedCategory)
                    .font(.system(size: 30, weight: .light))
                    .foregroundColor(ColorManager.purple5)
                    .onTapGesture {
                        categoryTapped()
                    }
                
                Spacer()
                    .frame(height: 90)
                
                
                if selectedCategory != "" && selectedCategory != "Tap Me" {
                    Button(action: {
                        createNewJournalIsPresented = true
                    }, label: {
                        addButtonBody()
                    })
                    .padding()
                
                    NavigationLink(destination: FriendVaultTrackMoods(calendar: .current)) {
                        vibeTrackerButtonBody()
                    }
                    .padding()
                }
                
                
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(journals, id: \.id) { journal in
                        if journal.category == selectedCategory {
                            NavigationLink(destination: JournalView(j: journal), label: {
                                JournalRowView(j: journal)
                            })
                        }
                    }
                }
                
                Spacer()
            }
            
            if selectCategoryIsPresented {
                CategorySelectorView(categories: categories, isPresented: $selectCategoryIsPresented, newCategory: $newCategory, selectedCategory: $selectedCategory)
                    .onDisappear{
                        print("New Category: ", newCategory)
                        print("Selected Category: ", selectedCategory)
                        newCategotySelected()
                    }
            }
            
            if createNewJournalIsPresented {
                CreateNewJournalView(isPresented: $createNewJournalIsPresented, createClicked: $createClicked, text: $newJournalText, mood: $newJournalMood, weather: $newJournalWeather, imagesData: $newJournalImagesData)
                    .onDisappear{
                        if createClicked {
                            createJournal()
                        }
                    }
            }
        }
    }
    
    private func loadData() {
        journals = []
        RestApi.instance.getHomeData().then({ result in
            user = result.user
            atmosphere = result.atmosphere
            print("Got user: ", result)
            categories = user.journalCategories ?? []
            if categories.count > 0 && selectedCategory.isEmpty {
                selectedCategory = categories[0]
            }
            if selectedCategory.isEmpty {
                selectedCategory = "Tap Me"
            }
            
            for id in user.journals ?? [] {
                RestApi.instance.getJournal(id: id).then({ j in
                    if j.category == selectedCategory {
                        journals.append(j)
                        journals.sort { (i: Journal, j: Journal) -> Bool in
                            return i.createdOn > j.createdOn
                        }
                    }
                })
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
    
    private func createJournal() {
        if newJournalText.isEmpty || selectedCategory == "" || selectedCategory == "Tap Me" {
            return
        }
        let cj = CreateJournal(category: selectedCategory, text: newJournalText, messages: [], images: newJournalImagesData, mood: newJournalMood, weather: newJournalWeather)
        RestApi.instance.createJournal(cj: cj).then({ response in
            if response == 200 {
                print("Successfully added a journal")
                if newJournalMood < 0 {
                    updateMood(mood: 3)
                } else {
                    updateMood(mood: 9)
                }
                loadData()
            }
        })
    }
    
    private func updateMood(mood: Int) {
        RestApi.instance.createMoodLog(mood: mood, summary: "", friends: user.friends!).then({ moodLog in
            var m = atmosphere.moodLogs ?? []
            m.append(moodLog.id)
            let atm = Atmosphere(id: atmosphere.id, planet: atmosphere.planet, mood: mood, moodLogs: m)
            RestApi.instance.updateAtmosphere(atmosphere: atm).then({ response in
                if response == 200 {
                    print("Successfully updated atmosphere")
                } else {
                    print("Failed to update atmosphere")
                }
            })
        })
    }
    
    private struct addButtonBody: View {
        var body: some View {
            ZStack {
                Color.pink
                Text("Update my Crush")
                    .foregroundColor(Color.white)
                    .font(.headline)

            }
            .frame(width: 230, height: 50)
            .cornerRadius(15)
            .opacity(0.6)
        }
    }
    
    private struct vibeTrackerButtonBody: View {
        var body: some View {
            ZStack {
                Color.pink
                Text("Track my Crush")
                    .foregroundColor(Color.white)
                    .font(.headline)

            }
            .frame(width: 230, height: 50)
            .cornerRadius(15)
            .opacity(0.6)
            
            
            
        }
    }
        
        }
    
        
    private struct JournalRowView: View {
        let journal: Journal
        let dateString: String

        init(j: Journal) {
            journal = j
            let d = Date(timeIntervalSince1970: TimeInterval(j.createdOn))
            let formatter3 = DateFormatter()
            formatter3.dateFormat = "E, d MMM"
            dateString = formatter3.string(from: d)
        }
        
        var body: some View {
            ZStack {
                Color.cyan
                
                VStack {
                    HStack {
                        Text(dateString)
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(ColorManager.purple5)
                    }
                    
                    Text(journal.text)
                        .font(.system(size: 16, weight: .light))
                        .foregroundColor(Color.white)
                }
                .padding()
            }
            .frame(height: 60)
            .cornerRadius(15)
            .padding(.horizontal)
        }
    }
    

