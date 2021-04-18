//
//  SessionView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/16/21.
//

import SwiftUI
import Amplify
import AVKit
import CoreImage.CIFilterBuiltins



struct LandingView: View {
    
    @State private var showingActionSheet = false
    @State private var isPresented = false

    @EnvironmentObject var sessionManager: SessionManager
    
    let user: AuthUser

    var body: some View {
        NavigationView{
            ZStack {

                BackgroundVideoController()
                    .ignoresSafeArea()
                
                Image("purpleBackground")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .blendMode(.screen)
            
            
                VStack {
                    Spacer()
                    
                    HStack {
                        Spacer()
                        
                        Button(action: {
                            //Display invite menu
                            self.showingActionSheet = true

                          }) {
                              Image("whitePlus")
                                .resizable()
                                .frame(width: 40, height: 40)
                            
                          }
                        .actionSheet(isPresented: $showingActionSheet) {
                            ActionSheet(title: Text("Add Friends"), message: Text("Add your friends via QR code"), buttons: [
                                .default(Text("My QR Code")) { showMyQR() },
                                .default(Text("Green")) {  },
                                .default(Text("Blue")) {  },
                                .cancel()
                            ])
                            
                        }
                        .fullScreenCover(isPresented: $isPresented, content: FullScreenModalView.init)
                        
                        Spacer()
                        
                        NavigationLink(destination: MessagesView()) {
                               Image("messageIconWhite")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .scaledToFill()
                           }
                        
                        Spacer()
                        
                        NavigationLink(destination: MessagesView()) {
                               Image("whiteSmiley")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .scaledToFill()
                           }
                        
                        Spacer()
                        
                        NavigationLink(destination: MessagesView()) {
                               Image("settingsIconWhite")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .scaledToFill()
                           }
                        
                        Spacer()
                    }
                }
            }
        }
    }
    
    private func showMyQR() {
        let context = CIContext()
        let filter = CIFilter.qrCodeGenerator()
        var QRCode: UIImage?
        
        guard let userID = Amplify.Auth.getCurrentUser()?.userId else { return }
        
        let data = Data(userID.utf8)
            filter.setValue(data, forKey: "inputMessage")

            if let outputImage = filter.outputImage {
                if let cgimg = context.createCGImage(outputImage, from: outputImage.extent) {
                    QRCode = UIImage(cgImage: cgimg)
                }
            }

            QRCode = UIImage(systemName: "xmark.circle") ?? UIImage()
        
        isPresented.toggle()
        
    }
}

struct FullScreenModalView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Button("Dismiss Modal") {
            presentationMode.wrappedValue.dismiss()
        }
    }
}





struct LandingView_Previews : PreviewProvider {
    private struct DummyUser: AuthUser {
        var userId: String = "1"
        var username: String = "dummy"
    }
    
    static var previews: some View {
        LandingView(user: DummyUser())
            .environmentObject(SessionManager())
        
    }
}


