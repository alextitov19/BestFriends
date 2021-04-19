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
    
    @State private var showingSheet = false
    @State private var showingActionSheet = false
    @State private var myQRCode: UIImage = UIImage()
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?


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
                                .default(Text("Photo Library")) { self.showingImagePicker = true },
                                .default(Text("Blue")) {  },
                                .cancel()
                            ])
                            
                        }
                        .sheet(isPresented: $showingSheet) {
                                    QRCodeView(image: myQRCode)
                                }
                        .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
                            ImagePicker(image: self.$inputImage)
                        }

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
                        
                        Button("Sign Out", action: {sessionManager.signOut()})
                        
                    }
                }
            }
        }
    }
    
    // MARK: QR Code Functions
    
    private func showMyQR() {
        let context = CIContext()
        let filter = CIFilter.qrCodeGenerator()
        var QRCode: UIImage?
        
        guard let userID = Amplify.Auth.getCurrentUser()?.username else { return }
        
        let data = Data(userID.utf8)
            filter.setValue(data, forKey: "inputMessage")

            if let outputImage = filter.outputImage {
                if let cgimg = context.createCGImage(outputImage, from: outputImage.extent) {
                    QRCode = UIImage(cgImage: cgimg)
                    myQRCode = QRCode!
                }
            }
        
        showingSheet.toggle()
    }
    
    func loadImage() {
        guard let inputImage = inputImage else { return }
        print("Got the image")
        displayQRString(image: inputImage)
        
    }
    
    
    
    func detectQRCode(_ image: UIImage?) -> [CIFeature]? {
        if let image = image, let ciImage = CIImage.init(image: image){
            var options: [String: Any]
            let context = CIContext()
            options = [CIDetectorAccuracy: CIDetectorAccuracyHigh]
            let qrDetector = CIDetector(ofType: CIDetectorTypeQRCode, context: context, options: options)
            if ciImage.properties.keys.contains((kCGImagePropertyOrientation as String)){
                options = [CIDetectorImageOrientation: ciImage.properties[(kCGImagePropertyOrientation as String)] ?? 1]
            } else {
                options = [CIDetectorImageOrientation: 1]
            }
            let features = qrDetector?.features(in: ciImage, options: options)
            return features

        }
        return nil
    }
    
    private func displayQRString(image: UIImage) {
        print("Got into display")
        if let features = detectQRCode(image), !features.isEmpty{
            print("Got into if")
            for case let row as CIQRCodeFeature in features{
                guard let uid = row.messageString as String? else { return }
                print("Preparing to send to: ", uid)
                addFriend(id: uid)
            }
        }
    }
    
    private func addFriend(id: String) {
        UserDataSource().getUser(id: id)
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


