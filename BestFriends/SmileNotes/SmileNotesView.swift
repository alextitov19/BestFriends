
import SwiftUI
import Amplify

struct SmileNotesView: View {
    
    @State var messages: [Message] = []
    @State var cards: [SmileNotesCard] = []
    @State var index: Int = 0
    @State var selectedFriendID: String = ""
    @State var selectedFriendName: String = "All Friends"
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
                    ForEach(friendIDs, id: \.self) { id in
                        Text(friendNames[friendIDs.firstIndex(of: id) ?? 0])
                            .frame(width: 200, height: 50, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .background(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
                            .cornerRadius(30)
                            .isHidden(hidingFriendButtons)

                    }
                }
                
                Spacer()
                
                ZStack {
                    ForEach(cards, id: \.message.id) { card in
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
                            if index < cards.count - 1 {
                                index += 1
                                switchCard()
                            }
                        }
                        .isHidden(index >= cards.count - 1)
                    
                }
                
                Spacer()
                
            }
            
            
            
        }
        .onAppear {
            loadData()
            switchCard()
        }
    }
    
    private func switchCard() {
        for i in 0 ... cards.count - 1 {
            cards[i].hidden = true
        }
        
        cards[index].hidden = false
    }
    
    private func loadData() {
        cards = []
        guard let id = Amplify.Auth.getCurrentUser()?.username else { return }
        let user = UserDataSource().getUser(id: id)
        messages = user.smileNotes ?? []
        for message in messages {
            var card = SmileNotesCard(message: message)
            card.hidden = true
            cards.append(card)
            
            if (friendIDs.contains(message.senderID) == false) {
                friendIDs.append(message.senderID)
                friendNames.append(message.senderName)
            }
        }
    
    }
    
}

struct SileNotesView_Previews : PreviewProvider {
    static var previews: some View {
        SmileNotesView()
    }
}
