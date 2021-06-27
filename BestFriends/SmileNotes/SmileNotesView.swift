
import SwiftUI
import Amplify

struct SmileNotesView: View {
    
    @State var messages: [Message] = []
    @State var cards: [SmileNotesCard] = []
    @State var displayedCards: [SmileNotesCard] = []
    @State var index: Int = 0
    @State var selectedFriendID: String = "All Friends"
    @State var selectedFriendName: String = "Filter By Friend"
    @State var hidingFriendButtons: Bool = true
    @State var friendIDs: [String] = []
    @State var friendNames: [String] = []



    
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        ZStack {
            Image("SmileNote4")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
                
            
            VStack {
                // MARK: Header
                HStack {
                    Text(selectedFriendName)
                        .font(.title).bold()
                        .foregroundColor(.white)
                        .onTapGesture {
                            hidingFriendButtons = false
                        }
                    
                    Image("favoritesIcon")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                        .scaledToFit()
                        .onTapGesture {
                            toggleFavorite()
                        }
                }
                
                VStack {
                    Text("All Friends")
                        .frame(width: 130, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        .background(Color(.clear))
                        .cornerRadius(30)
                        .onTapGesture {
                            selectedFriendID = "All Friends"
                            selectedFriendName = "All Friends"
                            hidingFriendButtons = true
                            newSelection()
                        }
                    
                    Text("Favorites")
                        .frame(width: 130, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        .background(Color(.clear))
                        .cornerRadius(30)
                        .onTapGesture {
                            selectedFriendID = "Favorites"
                            selectedFriendName = "Favorties"
                            hidingFriendButtons = true
                            newSelection()
                        }
                    
                    ForEach(friendIDs, id: \.self) { id in
                        Text(friendNames[friendIDs.firstIndex(of: id) ?? 0])
                            .frame(width: 130, height: 50, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .background(Color(.clear))
                            .cornerRadius(30)
                            .onTapGesture {
                                selectedFriendID = id
                                selectedFriendName = friendNames[friendIDs.firstIndex(of: id) ?? 0]
                                hidingFriendButtons = true
                                newSelection()
                            }

                    }
                }
                .border(Color.white, width: 1)
                .isHidden(hidingFriendButtons)

                
                Spacer()
                
                ZStack {
                    ForEach(displayedCards, id: \.smileNote.message.id) { card in
                        card
                    }
                }
                    
                Spacer()
                
                HStack {
                    
                    Text("Previous")
                        .frame(width: 150, height: 75, alignment: .center)
                        .background(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
                        .foregroundColor(Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)))
                        .cornerRadius(30)
                        .onTapGesture {
                            if index > 0 {
                                index -= 1
                                switchCard()
                            }
                        }
                        .isHidden(index <= 0)
                
                
             
                    Text("Next")
                        .frame(width: 150, height: 75, alignment: .center)
                        .background(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
                        .foregroundColor(Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)))
                        .cornerRadius(30)
                        .onTapGesture {
                            if index < displayedCards.count - 1 {
                                index += 1
                                switchCard()
                            }
                        }
                        .isHidden(index >= displayedCards.count - 1)
                    
                }
                
                Spacer()
                
                HStack {
                    
                    Image("whiteHouse")
                     .resizable()
                     .frame(width: 40, height: 40)
                     .scaledToFill()
                     .onTapGesture {
                         sessionManager.getCurrentAuthUser()
                     }
                     .padding(20)

                    
                   Image("messageIconWhite")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .scaledToFill()
                    .onTapGesture {
                        sessionManager.showRooms()
                    }
                    .padding(20)
            
            

                   Image("settingsiconwhite")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .scaledToFill()
                    .onTapGesture {
                        sessionManager.showSettings()
                    }
                    .padding(20)
                    
                    
                    
                }
                
            }
            
            
            
        }
        .onAppear {
            loadData()
            newSelection()
            switchCard()
        }
    }
    
    private func switchCard() {
        if displayedCards.count  <= 0 { return }
        for i in 0 ... displayedCards.count - 1 {
            displayedCards[i].hidden = true
        }
        
        displayedCards[index].hidden = false
    }
    
    private func loadData() {
        displayedCards = []
        cards = []
        guard let id = Amplify.Auth.getCurrentUser()?.username else { return }
        let user = UserDataSource().getUser(id: id)
        var smileNotes = user.smileNotes ?? []
        for smileNote in smileNotes {
            var card = SmileNotesCard(smileNote: smileNote)
            cards.append(card)
            
            if (friendIDs.contains(smileNote.message.senderID) == false) {
                friendIDs.append(smileNote.message.senderID)
                friendNames.append(smileNote.message.senderName)
            }
        }
    
    }
    
    private func newSelection() {
        index = 0
        displayedCards = []
        if selectedFriendID == "All Friends" {
            displayedCards = cards
        } else if selectedFriendID == "Favorites" {
            for card in cards {
                if card.smileNote.favorite {
                    displayedCards.append(card)
                }
            }
        } else {
            for card in cards {
                if card.smileNote.message.senderID == selectedFriendID {
                    displayedCards.append(card)
                }
            }
        }
        switchCard()
    }
    
    private func toggleFavorite() {
        let oldSmileNote = displayedCards[index].smileNote
        var newSmileNote = oldSmileNote
        newSmileNote.favorite.toggle()
        guard let username = Amplify.Auth.getCurrentUser()?.username else { return }
        var user = UserDataSource().getUser(id: username)
        if user.smileNotes != nil {
            for i in 0..<user.smileNotes!.count {
                if user.smileNotes![i].id == oldSmileNote.id {
                    user.smileNotes?.remove(at: i)
                    user.smileNotes?.insert(newSmileNote, at: i)
                    UserDataSource().updateUser(user: user)
                    return
                }
            }
        }
    }
}

struct SileNotesView_Previews : PreviewProvider {
    static var previews: some View {
        SmileNotesView()
    }
}
