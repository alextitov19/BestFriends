
import SwiftUI
import Amplify

struct SmileNotesView: View {
    
    @State var messages: [Message] = []
    @State var cards: [SmileNotesCard] = []
    
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
                
                
            }
            
        }
        .onAppear { loadMessages() }
    }
    
    private func loadMessages() {
        cards = []
        guard let id = Amplify.Auth.getCurrentUser()?.username else { return }
        let user = UserDataSource().getUser(id: id)
        messages = user.smileNotes ?? []
        for message in messages {
            cards.append(SmileNotesCard(message: message))
        }
    }
    
}

struct SileNotesView_Previews : PreviewProvider {
    static var previews: some View {
        SmileNotesView()
    }
}
