
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
                    Button( action: {
                        
                    }) {
                        Text(selectedFriendName)
                            .font(.title).bold()
                            .foregroundColor(.white)
                            .onTapGesture {
                                hidingFriendButtons = false
                            }
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
                    ForEach(displayedCards, id: \.message.id) { card in
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
        messages = user.smileNotes ?? []
        for message in messages {
            var card = SmileNotesCard(message: message)
            cards.append(card)
            
            if (friendIDs.contains(message.senderID) == false) {
                friendIDs.append(message.senderID)
                friendNames.append(message.senderName)
            }
        }
    
    }
    
    private func newSelection() {
        index = 0
        displayedCards = []
        if selectedFriendID == "All Friends" {
            displayedCards = cards
        } else {
            for card in cards {
                if card.message.senderID == selectedFriendID {
                    displayedCards.append(card)
                }
            }
        }
        switchCard()
    }
    
}

struct SileNotesView_Previews : PreviewProvider {
    static var previews: some View {
        SmileNotesView()
    }
}
