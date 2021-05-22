
import SwiftUI
import Amplify

struct SmileNotesView: View {
    
    @State var messages: [Message] = []
    
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
                
                
                
                
            }
            
        }
//        .onAppear { loadMessages() }
    }
    
    private func loadMessages() {
        guard let id = Amplify.Auth.getCurrentUser()?.username else { return }
        let user = UserDataSource().getUser(id: id)
        messages = user.smileNotes ?? []
    }
    
}

struct SileNotesView_Previews : PreviewProvider {
    static var previews: some View {
        SmileNotesView()
    }
}
