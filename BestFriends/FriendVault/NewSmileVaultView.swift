//
//  NewSmileVaultView.swift
//  BestFriends
//
//  Created by Social Tech on 4/23/22.
//

import Foundation
import SwiftUI


//struct SmileVaultView: View {
    
//    @State private var messages: [Message] = []
////    @State private var cards: [SmileNotesCard] = []
////    @State private var displayedCards: [SmileNotesCard] = []
////    @State private var index: Int = 0
//    @State private var selectedFriendID: String = "All Friends"
//    @State private var selectedFriendName: String = "Filter By Friend"
//    @State private var hidingFriendButtons: Bool = true
//    @State private var friendIDs: [String] = []
//    @State private var friendNames: [String] = []
//    @State private var isAdPresented = false
//
//    @EnvironmentObject var sessionManager: SessionManager
//
//    var body: some View {
//        ZStack {
//            Color(#colorLiteral(red: 0.4874756932, green: 0.2377186716, blue: 0.9663465619, alpha: 0.9))
//                .ignoresSafeArea()
//            ZStack {
//                Circle()
//                    .frame(width: 400, height: 400)
//                    .foregroundColor(Color(#colorLiteral(red: 0.4874756932, green: 0.2377186716, blue: 0.9663465619, alpha: 1)))
//                    .offset(x: 200, y: -400)
//
//                Circle()
//                    .frame(width: 300, height: 300)
//                    .foregroundColor(Color(#colorLiteral(red: 0.4874756932, green: 0.2377186716, blue: 0.9663465619, alpha: 1)))
//                    .offset(x: -200, y: -100)
//
//                Circle()
//                    .frame(width: 200, height: 200)
//                    .foregroundColor(Color(#colorLiteral(red: 0.4874756932, green: 0.2377186716, blue: 0.9663465619, alpha: 1)))
//                    .offset(x: 150, y: 100)
//            }
//
//            VStack {
//                Spacer().frame(height: 30)
//
//                HStack {
//                    Text(selectedFriendName)
//                        .font(.title).bold()
//                        .foregroundColor(.white)
//                        .onTapGesture {
//                            hidingFriendButtons = false
//                        }
//                    if displayedCards.count > 0 {
//                        if displayedCards[index].smileNote.favorite {
//                            Image("favoritesIcon")
//                                .resizable()
//                                .frame(width: 40, height: 40, alignment: .center)
//                                .scaledToFit()
//                                .onTapGesture {
//                                    toggleFavorite()
//                                }
//                        } else {
//                            Image("whiteStarIcon")
//                                .resizable()
//                                .frame(width: 40, height: 40, alignment: .center)
//                                .scaledToFit()
//                                .onTapGesture {
//                                    toggleFavorite()
//                                }
//                        }
//                    }
//                }
//
//                if !hidingFriendButtons {
//                VStack {
//                    Text("All Friends")
//                        .frame(width: 130, height: 50, alignment: .center)
//                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
//                        .background(Color(.clear))
//                        .cornerRadius(30)
//                        .onTapGesture {
//                            selectedFriendID = "All Friends"
//                            selectedFriendName = "All Friends"
//                            hidingFriendButtons = true
//                            newSelection()
//                        }
//
//                    Text("Favorites")
//                        .frame(width: 130, height: 50, alignment: .center)
//                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
//                        .background(Color(.clear))
//                        .cornerRadius(30)
//                        .onTapGesture {
//                            selectedFriendID = "Favorites"
//                            selectedFriendName = "Favorites"
//                            hidingFriendButtons = true
//                            newSelection()
//                        }
//
//                    ForEach(friendIDs, id: \.self) { id in
//                        Text(friendNames[friendIDs.firstIndex(of: id) ?? 0])
//                            .frame(width: 130, height: 50, alignment: .center)
//                            .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
//                            .background(Color(.clear))
//                            .cornerRadius(30)
//                            .onTapGesture {
//                                selectedFriendID = id
//                                selectedFriendName = friendNames[friendIDs.firstIndex(of: id) ?? 0]
//                                hidingFriendButtons = true
//                                newSelection()
//                            }
//
//                    }
//                }
//                .border(Color.white, width: 1)
//                }
//
//                Spacer()
//                    .frame(height: 20)
//
//                ZStack {
////                    ForEach(displayedCards, id: \.smileNote.id) { card in
////                        card
//                    }
//                }
//
//                Spacer()
//                    .frame(height: 20)
//
//                HStack {
//                    Text("Previous")
//                        .frame(width: 150, height: 75, alignment: .center)
//                        .background(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
//                        .foregroundColor(Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)))
//                        .cornerRadius(30)
//                        .onTapGesture {
//                            if index > 0 {
//                                index -= 1
//                                switchCard()
//                            }
//                        }
//                        .isHidden(index <= 0)
//
//                    Text("Next")
//                        .frame(width: 150, height: 75, alignment: .center)
//                        .background(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
//                        .foregroundColor(Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)))
//                        .cornerRadius(30)
//                        .onTapGesture {
//                            if index < displayedCards.count - 1 {
//                                index += 1
//                                switchCard()
//                            }
//                        }
////                        .isHidden(index >= displayedCards.count - 1)
////                        .fullScreenCover(isPresented: $isAdPresented, content: SmileVaultAdView.init)
////                }
//
//                Spacer()
//                    .frame(height: 20)
//
//
//            }
//
//            VStack {
//                Text("SmileVault")
//                    .font(.system(size: 40))
//                    .foregroundColor(.white)
//                    .padding(.vertical, 20)
//
//                Spacer()
//
//                HStack {
//                    Image("home-alt2")
//                        .resizable()
//                        .frame(width: 40, height: 40)
//                        .scaledToFill()
//                        .onTapGesture {
//                            AnalyticsDataSource().recordSmileVaultDepartureEvent()
//                            isAdPresented = true
//                            DispatchQueue.main.asyncAfter(deadline: .now() + 11.5) {
//                                sessionManager.getCurrentAuthUser()
//                            }
//                        }
//                        .padding(20)
//
//                    Image("hideouts")
//                        .resizable()
//                        .frame(width: 60, height: 60)
//                        .scaledToFill()
//                        .onTapGesture {
////                            sessionManager.showHideouts()
//                        }
//                        .padding(10)
//
//                    Image("settings icon")
//                        .resizable()
//                        .frame(width: 40, height: 40)
//                        .scaledToFill()
//                        .onTapGesture {
//                            AnalyticsDataSource().recordSmileVaultDepartureEvent()
//                            isAdPresented = true
//                            DispatchQueue.main.asyncAfter(deadline: .now() + 12) {
//                                sessionManager.showSettings()
//                            }
//                        }
//                        .padding(20)
//                }
//            }
//        }
//        .onAppear {
//            loadData()
//            newSelection()
//            switchCard()
//        }
//    }
//
////    private func switchCard() {
////        if displayedCards.count  <= 0 { return }
////        for i in 0 ... displayedCards.count - 1 {
////            displayedCards[i].hidden = true
////        }
////
////        displayedCards[index].hidden = false
////    }
////
////    private func loadData() {
////        displayedCards = []
////        cards = []
////        let user = UserDataSource().getCurrentUser()
////        let smileNotes = user.smileNotes
////        for smileNote in smileNotes {
////            let card = SmileNotesCard(smileNote: smileNote)
////            cards.append(card)
////
////            if (friendIDs.contains(smileNote.message.senderID) == false) {
////                friendIDs.append(smileNote.message.senderID)
////                friendNames.append(smileNote.message.senderName)
////            }
////        }
////
////    }
////
////    private func newSelection() {
////        index = 0
////        displayedCards = []
////        if selectedFriendID == "All Friends" {
////            displayedCards = cards
////        } else if selectedFriendID == "Favorites" {
////            for card in cards {
////                if card.smileNote.favorite {
////                    displayedCards.append(card)
////                }
////            }
////        } else {
////            for card in cards {
////                if card.smileNote.message.senderID == selectedFriendID {
////                    displayedCards.append(card)
////                }
////            }
////        }
////        switchCard()
////    }
////
////    private func toggleFavorite() {
////        let oldSmileNote = displayedCards[index].smileNote
////        var newSmileNote = oldSmileNote
////        newSmileNote.favorite.toggle()
////        var user = UserDataSource().getCurrentUser()
////            for i in 0..<user.smileNotes.count {
////                if user.smileNotes[i].id == oldSmileNote.id {
////                    user.smileNotes.remove(at: i)
////                    user.smileNotes.insert(newSmileNote, at: i)
////                    UserDataSource().updateUser(user: user)
////                    loadData()
////                    selectedFriendID = "All Friends"
////                    selectedFriendName = "All Friends"
////                    hidingFriendButtons = true
////                    newSelection()
////                    return
////                }
//        }
//    }
//}
//
//struct SileVaultView_Previews : PreviewProvider {
//    static var previews: some View {
//        SmileVaultView()
//    }
//}
