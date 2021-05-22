
import SwiftUI
import Amplify

struct SmileNotesView: View {
    
    @State var messages: [Message] = []
    @State var cards: [SmileNotesCard] = []
    @State var index: Int = 0
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
                .ignoresSafeArea()
            
            VStack {
                // MARK: Header
                HStack {
                    Text("Smile Notes")
                        .font(.title).bold()
                        .foregroundColor(.white)
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
            loadMessages()
            switchCard()
        }
    }
    
    private func switchCard() {
        for i in 0 ... cards.count - 1 {
            cards[i].hidden = true
        }
        
        cards[index].hidden = false
    }
    
    private func loadMessages() {
        cards = []
        guard let id = Amplify.Auth.getCurrentUser()?.username else { return }
        let user = UserDataSource().getUser(id: id)
        messages = user.smileNotes ?? []
        for message in messages {
            var card = SmileNotesCard(message: message)
            card.hidden = true
            cards.append(card)
        }
    }
    
}

struct SileNotesView_Previews : PreviewProvider {
    static var previews: some View {
        SmileNotesView()
    }
}
