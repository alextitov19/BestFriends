//
//  RR2.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/15/23.
//

//import SwiftUI
//
//struct RR2: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct RR2_Previews: PreviewProvider {
//    static var previews: some View {
//        RR2()
//    }
//}
//

// JournalsView

//import SwiftUI
//
//struct RR2: View {
//    
//    @State private var user = User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: "", chatPin: "", chatBackground: "")
//    @State private var atmosphere = Atmosphere(id: "", planet: 0, mood: 0, moodLogs: [])
//    @State private var newCategory = ""
//    @State private var selectedCategory = ""
//    @State private var selectCategoryIsPresented = false
//    @State private var categories: [String] = []
//    @State private var journals: [Journal] = []
//    @State private var createNewJournalIsPresented = false
//    @State private var newJournalText = "Today I feel..."
//    @State private var newJournalMood = 0.0
//    @State private var newJournalWeather = "cloud.sun"
//    @State private var newJournalImagesData: [Data] = []
//    @State private var createClicked = false
//    let friends: [User]
//
//    
//    var body: some View {
//        ZStack {
////            Color.black
////                .opacity(0.3)
////                .ignoresSafeArea()
////                .onAppear { loadData() }
////
////            AdPlayerView(name: "Galaxy2")
////                .ignoresSafeArea()
////                .blendMode(.screen)
////                .opacity(0.9)
//            
//            Color.purple
//                .opacity(0.4)
//                .ignoresSafeArea()
//                .onAppear { loadData() }
//            
//            AdPlayerView(name: "sky2")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//                .opacity(0.9)
//            
//            VStack {
//                Text(selectedCategory)
//                    .font(.system(size: 30, weight: .light))
//                    .foregroundColor(ColorManager.purple5)
//                    .onTapGesture {
//                        categoryTapped()
//                    }
//                
//                if selectedCategory != "" && selectedCategory != "Tap Me" {
//                    Button(action: {
//                        createNewJournalIsPresented = true
//                    }, label: {
//                        addButtonBody()
//                    })
//                    .padding()
//                
//                    NavigationLink(destination: FriendVaultTrackMoods(calendar: .current)) {
//                        vibeTrackerButtonBody()
//                    }
//                    .padding()
//                }
//                
//                
//                ScrollView(.vertical, showsIndicators: false) {
//                    ForEach(journals, id: \.id) { journal in
//                        if journal.category == selectedCategory {
//                            NavigationLink(destination: JournalView(j: journal), label: {
//                                JournalRowView(j: journal)
//                            })
//                        }
//                    }
//                }
//                
//                Spacer()
//            }
//            
//            if selectCategoryIsPresented {
//                CategorySelectorView(categories: categories, isPresented: $selectCategoryIsPresented, newCategory: $newCategory, selectedCategory: $selectedCategory)
//                    .onDisappear{
//                        print("New Category: ", newCategory)
//                        print("Selected Category: ", selectedCategory)
//                        newCategotySelected()
//                    }
//            }
//            
//            if createNewJournalIsPresented {
//                CreateNewJournalView(isPresented: $createNewJournalIsPresented, createClicked: $createClicked, text: $newJournalText, mood: $newJournalMood, weather: $newJournalWeather, imagesData: $newJournalImagesData)
//                    .onDisappear{
//                        if createClicked {
//                            createJournal()
//                        }
//                    }
//            }
//        }
//    }
//    
//    private func loadData() {
//        journals = []
//        RestApi.instance.getHomeData().then({ result in
//            user = result.user
//            atmosphere = result.atmosphere
//            print("Got user: ", result)
//            categories = user.journalCategories ?? []
//            if categories.count > 0 && selectedCategory.isEmpty {
//                selectedCategory = categories[0]
//            }
//            if selectedCategory.isEmpty {
//                selectedCategory = "Tap Me"
//            }
//            
//            for id in user.journals ?? [] {
//                RestApi.instance.getJournal(id: id).then({ j in
//                    if j.category == selectedCategory {
//                        journals.append(j)
//                        journals.sort { (i: Journal, j: Journal) -> Bool in
//                            return i.createdOn > j.createdOn
//                        }
//                    }
//                })
//            }
//        })
//    }
//    
//    private func categoryTapped() {
//        newCategory = ""
//        selectedCategory = ""
//        selectCategoryIsPresented = true
//    }
//    
//    private func newCategotySelected() {
//        if (!newCategory.isEmpty) {
//            var u = user
//            if u.journalCategories == nil {
//                u.journalCategories = []
//            }
//            u.journalCategories!.append(newCategory)
//            RestApi.instance.updateUser(user: u).then({ response in
//                if response == 200 {
//                    print("Successully added a new category")
//                    loadData()
//                }
//            })
//        } else {
//            loadData()
//        }
//    }
//    
//    private func createJournal() {
//        if newJournalText.isEmpty || selectedCategory == "" || selectedCategory == "Tap Me" {
//            return
//        }
//        let cj = CreateJournal(category: selectedCategory, text: newJournalText, messages: [], images: newJournalImagesData, mood: newJournalMood, weather: newJournalWeather)
//        RestApi.instance.createJournal(cj: cj).then({ response in
//            if response == 200 {
//                print("Successfully added a journal")
//                if newJournalMood < 0 {
//                    updateMood(mood: 3)
//                } else {
//                    updateMood(mood: 9)
//                }
//                loadData()
//            }
//        })
//    }
//    
//    private func updateMood(mood: Int) {
//        RestApi.instance.createMoodLog(mood: mood, summary: "", friends: user.friends!).then({ moodLog in
//            var m = atmosphere.moodLogs ?? []
//            m.append(moodLog.id)
//            let atm = Atmosphere(id: atmosphere.id, planet: atmosphere.planet, mood: mood, moodLogs: m)
//            RestApi.instance.updateAtmosphere(atmosphere: atm).then({ response in
//                if response == 200 {
//                    print("Successfully updated atmosphere")
//                } else {
//                    print("Failed to update atmosphere")
//                }
//            })
//        })
//    }
//    
//    private struct addButtonBody: View {
//        var body: some View {
//            ZStack {
//                ColorManager.purple3
//                
//                
//                Text("Create new Journal post")
//                    .foregroundColor(ColorManager.purple5)
//                    .font(.headline)
////                Image(systemName: "plus")
////                    .resizable()
////                    .scaledToFit()
////                    .frame(width: 120, height: 30)
////                    .foregroundColor(ColorManager.purple7)
////                    .opacity(0.7)
//            }
//            .frame(width: 230, height: 50)
//            .cornerRadius(15)
//            .opacity(0.7)
//        }
//    }
//    
//    private struct vibeTrackerButtonBody: View {
//        var body: some View {
//            ZStack {
//                ColorManager.purple3
//                
//                Text("Monthlhy 'Vibe' Chronicle")
//                    .foregroundColor(ColorManager.purple5)
//                    .font(.headline)
//            }
//            .frame(width: 230, height: 50)
//            .cornerRadius(15)
//            .opacity(0.7)
//        }
//    }
//        
//    private struct JournalRowView: View {
//        let journal: Journal
//        let dateString: String
//
//        init(j: Journal) {
//            journal = j
//            let d = Date(timeIntervalSince1970: TimeInterval(j.createdOn))
//            let formatter3 = DateFormatter()
//            formatter3.dateFormat = "E, d MMM"
//            dateString = formatter3.string(from: d)
//        }
//        
//        var body: some View {
//            ZStack {
//                ColorManager.purple2
//                
//                VStack {
//                    HStack {
//                        Text(dateString)
//                            .font(.system(size: 16, weight: .regular))
//                            .foregroundColor(ColorManager.purple5)
//                    }
//                    
//                    Text(journal.text)
//                        .font(.system(size: 16, weight: .light))
//                        .foregroundColor(ColorManager.purple5)
//                }
//                .padding()
//            }
//            .frame(height: 60)
//            .cornerRadius(15)
//            .padding(.horizontal)
//        }
//    }
//    
//}
