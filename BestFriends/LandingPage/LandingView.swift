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
    @State private var friendIDs: [String] = []
    @State private var stars: [Star] = []
    @State private var starButtons: [UIButton] = []
    @State private var titleText = ""
//    @State private var inviteMode = false
    
    @State private var selectedFriends = []
    
    @State var idsToInvite: [String] = []

    
    var myID: String

    @EnvironmentObject var sessionManager: SessionManager
     
    private func reloadData() {
        print("Reloading...")
        getFriends()
        
    }
    
//    let user: AuthUser

    var body: some View {
        NavigationView{
            
            ZStack {
                
                Image("purpleBackground")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    
            
                //need a replacement, doesnt work
                BackgroundVideoController()
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
                
            
                VStack {
                    Text(titleText)
                        .foregroundColor(.white)
                        .font(.title)
                    
                    HStack {
                        Spacer()
                        
                        Button(action: { inviteClicked() }) {
                              Image("newMessageWhite")
                                .resizable()
                                .frame(width: 30, height: 30)
                          }
                        
                        Spacer()
                            .frame(width: 50)
                    }
                    
                    Spacer()
                        .frame(height: 10)
                    
                    ForEach(stars, id: \.id) { star in
                        GeometryReader { geometry in
                                                    VStack {
                                                        HStack {
                                                            Spacer()
                                                                .frame(width: 100)
                        
                                                            star
                                                        }
                        
                                                        Spacer()
                                                            .frame(height: 20)
                                                    }
                                                }
                    }
                    
                    Spacer()
                    
                    HStack {
                        
                        Spacer()
                        
                        Button(action: {
                            //Display invite menu
                            self.showingActionSheet = true

                          }) {
                              Image("inviteWhite")
                                .resizable()
                                .frame(width: 40, height: 40)
                            
                          }
                        .actionSheet(isPresented: $showingActionSheet) {
                            ActionSheet(title: Text("Add Friends"), message: Text("Add your friends via QR code"), buttons: [
                                .default(Text("My QR Code")) { showMyQR() },
                                .default(Text("Photo Library")) { self.showingImagePicker = true },
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
                        
                        NavigationLink(destination: RoomsView()) {
                               Image("messageIconWhite")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .scaledToFill()
                           }
                        
                        
                        Spacer()
//                        
                        NavigationLink(destination: SettingsView()) {
                               Image("whiteSmiley")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .scaledToFill()
                           }
//                        
//                        Spacer()
//                        
//                        NavigationLink(destination: MessagesView()) {
//                               Image("settingsIconWhite")
//                                .resizable()
//                                .frame(width: 40, height: 40)
//                                .scaledToFill()
//                           }
                        
                        Spacer()
                        
                        Button("Sign Out", action: {sessionManager.signOut()})
                        
                    }
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
               
                
            }
            
        }
        .onAppear(perform: reloadData)
    }
    
    // MARK: QR Code
    
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
    
    //MARK: End of QR Code
    
    private func addFriend(id: String) {
        let user = UserDataSource().getUser(id: id)
        print("got the user")
        UserDataSource().addFriend(user: user)
        print("done adding friends")
        getFriends()
    }
    
    
    
    private func getFriends() {
        let user = UserDataSource().getUser(id: myID)
        guard let friends = user.friends else { return }
        friendIDs = friends
        displayStars()
    }
    
    private func displayStars() {
        print("Friend count: ", friendIDs.count)
        
        for friendID in friendIDs {
            let user = UserDataSource().getUser(id: friendID)
            guard let initial = user.lastName.first else { return }
            var name = user.firstName + " "
            name.append(initial)
            var star = Star(id: user.id, name: name)
            print("Successfully added a star for user: ", user.id)
            stars.append(star)
            
            
        }
    }
    

    private func inviteClicked() {
//        for index in 0..<stars.count {
//            stars[index].image = Image(uiImage: UIImage(named: "starWhite")!)
//        }
//
//        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
//            inviteSelectedFriends()
//        }
        sendMessage()
    }
    
    private func inviteSelectedFriends() {
        print("Inviting selected friends")
        var idsToInvite: [String] = []
        for star in stars {
                idsToInvite.append(star.id)
        }
        print(idsToInvite)
        
        let room = Room()
        print("RoomID: ", room.id)
        RoomDataSource().createRoom(room: room)
        guard let myID = Amplify.Auth.getCurrentUser()?.username else { return }
        UserDataSource().addRoom(userID: myID, roomID: room.id)
        for id in idsToInvite {
            UserDataSource().addRoom(userID: id, roomID: room.id)
        }
    }
    
    func sendMessage() {
        guard let deviceToken = DeviceTokenManager.shared.deviceToken else { return }
        
        print("Sending to device token: ", deviceToken)
    }
    
}
















struct LandingView_Previews : PreviewProvider {
    static var previews: some View {
        LandingView(myID: " ")
            .environmentObject(SessionManager())
    }
}


