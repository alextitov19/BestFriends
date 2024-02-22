//
//  RRLoveTartsDinning.swift
//  BestFriends
//
//  Created by Social Tech on 2/1/24.
//




import Foundation
import SwiftUI
import ConfettiSwiftUI
import AVKit
//import AudioToolbox

struct RRLoveTartsDinning: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    
    //**************************
        @State var animate: Bool = false
        let animation: Animation = Animation.linear(duration:3.0).repeatForever(autoreverses: false)
    //**************************
    
    @State private var selectedFriends: [String] = []
    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
    @State private var shareColor = ColorManager.purple5
    @State private var showingAlert = false
    
    @State private var counter = 0
    
    @State private var mood: Int = -1
    @State private var summary = ""
    @State private var sharedWith: [String] = []
    @State private var colorChangeTap: String = ""
    @State private var shareTapped: Bool = false
    
    @State private var showingHeart = true;
    
    struct RectView: View {
        let user: User
        let friend: User
        let color: Color
        
        var body: some View {
            Text(friend.firstName + " " + String(friend.lastName.first!))
                .fontWeight(.bold)
                .frame(width: 90, height: 90)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .font(.system(size: 8))
                .background(color)
                .cornerRadius(75)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
        }
    }
    
    func shareButtonTapped() {
        if selectedFriends.count == 0 { return}
        for id in selectedFriends {
            for f in friends {
                if f.id == id {
                    RestApi.instance.sendPushNotification(title: "BestFriends", body: "Ahhh! ...  \(user.firstName) thanks for the Hug - it was just what I needed!", APNToken: f.APNToken)
                    
                    //MARK: The code below creates an in-app notification for your friend (f.id)
                    //MARK: DO NOT CHANGE THE TEXT OF THE NOTIFICATION, otherwise the code to take the user to a diffrent page will not work. Once you set it, do not change it.
                    RestApi.instance.createInAppNotification(ian: InAppNotification(user: f.id, sender: user.id, text: "Ahhh! Thanks for the Hug - it was just what I needed!", createdOn: Int64(Date().timeIntervalSince1970))).then({ response in
                        print("Create a hug notification response code: ", response)
                    })
                    RestApi.instance.createStreakLog(friendID: f.id)
                }
            }
        }
        shareColor = ColorManager.darkGrey
        showingAlert = true
    }
    
    
    
    
    var body: some View {
        
        ZStack {
            
            
            if shareTapped {
                
                Color.black
                  .opacity(0.9)
                  .ignoresSafeArea()
                
                AdPlayerView(name: "dramaLights")
                    .opacity(0.5)
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
            } else {

                
                Color.black
                  .opacity(0.9)
                  .ignoresSafeArea()
                

                AdPlayerView(name: "TaylorSwift2")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .opacity(0.0)
                
                                AdPlayerView(name: "sky2")
                                    .ignoresSafeArea()
                                    .blendMode(.screen)
                                    .opacity(0.4)
                
                AdPlayerView(name: "dining3")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .opacity(0.4)
            }
            
            
            VStack{
                
          Spacer()
                .frame(height: 200)
 
                if (showingHeart) {
                    

//**********************************************************
                    
                    VStack {
                        
                        
                        
                        Text("infusing romance")
                            .font(.system(size: 35))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .grey2)
    //                            .rotationEffect(.degrees(-10))
//                            .blinking(duration: 2.0)
                        
                        Text("into your texting")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
    //                            .rotationEffect(.degrees(-10))
//                            .blinking(duration: 2.0)
                        
//                        Spacer ()
//                            .frame(height: 20)
                        
                        
                        NavigationLink(
                            destination:  ChangeChatBackgroundView(user: user),
                            label: {
                                ZStack {
                                    
                                    Image(systemName: "circle.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 80, height: 80)
                                        .foregroundColor(Color.cyan)
                                        .opacity(0.95)
                                    
                                    Image(systemName: "heart.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 70, height: 70)
                                        .foregroundColor(Color.purple)
                                        .glow(color: Color.white, radius: 0.3)
                                        .shadow(color: .white, radius: 1, x: 3, y: -0.5)
                                        .opacity(0.95)
                                    
                                    Text("set Chat \nbackground")
                                        .font(.system(size: 10))
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(Color.white)
                                        .opacity(0.99)
                                    
                                }
                            })
                        
                        ZStack {
//                            Image("comicBubble")
                            Image(systemName: "heart.fill")
                               
                                .resizable()
                                .foregroundColor(ColorManager .purple3)
                                .frame(width: 300, height: 200)
                                .shadow(color: Color.white, radius: 3, x: 3, y: 3)
                                .rotationEffect(.degrees(-10))
                                .opacity(0.5)
                            //                                .blinking(duration: 2.0).blinking(duration: 3.0)
                            
                            
                            VStack {
                                
                                
                                
                                Text("creating your romantic")
                                    .font(.system(size: 25))
                                    .italic()
                                    .fontWeight(.light)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color.white)
                                    .opacity(0.4)
                                    .rotationEffect(.degrees(-10))
                                //                                    .blinking(duration: 2.0)
                                
                                Text("ambiance")
                                    .font(.system(size: 30))
                                    .fontWeight(.regular)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color.white)
                                    .rotationEffect(.degrees(-10))
                                //                                    .blinking(duration: 2.0)
                                
                                
                            }
                        }
//                    }
                    
                    
                    
                    
//    **************************************************
//
//                    VStack {
//
//
//                        ZStack{
//                            Image(systemName: "star")
//                                .resizable()
//                                .foregroundColor(.white)
//                                .frame(width: 100, height: 100)
//                                .shadow(color: .blue, radius: 65, x: 30, y: 50)
//                                .opacity(0.3)
//
//                            VStack {
//
//
//                                Text("TAP")
//                                    .font(.system(size: 20))
//                                    .fontWeight(.medium)
//                                    .multilineTextAlignment(.center)
//                                    .foregroundColor(Color.white)
//                                    .opacity(0.5)
//                                    .padding()
//                                    .onTapGesture {
//                                        showingHeart = false
//                                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                                            AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
//                                                AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
//                                                    AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
//                                                        AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
//                                                            AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
//                                                                showingHeart = true
//                                                            }
//                                                        }
//                                                    }
//                                                }
//                                            }
//
//                                        }
//                                    }
//
                                
//                                Text("hold iPhone to \nyour Heart")
//                                    .font(.system(size: 15))
//                                    .italic()
//                                    .foregroundColor(Color.white)
//                                    .fontWeight(.medium)
//                                    .multilineTextAlignment(.center)
//                                    .opacity(0.5)
//                            }
//                        }
                        
                        VStack {
                            
                            Spacer()
                                .frame(height: 20)
                            
                   
                VStack {
                    
                    
                    Text("protecting, cherishing ...")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .opacity(0.5)
//                            .rotationEffect(.degrees(-10))
                        .blinking(duration: 2.0)
                    
                    Text("your romance")
                        .font(.system(size: 35))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .opacity(0.5)
//                            .rotationEffect(.degrees(-10))
                        .blinking(duration: 3.0)
                    
                    Spacer ()
                        .frame(height: 60)
                    
                    
                    Text("hoping, wishing ...")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .opacity(0.5)
//                            .rotationEffect(.degrees(-10))
                        .blinking(duration: 2.0)
                    
                    Text("forever dreaming")
                        .font(.system(size: 35))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .opacity(0.5)
//                            .rotationEffect(.degrees(-10))
                        .blinking(duration: 3.0)
                    
                    
//                    Text("building lasting love")
//                        .font(.system(size: 35))
//                        .fontWeight(.bold)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(Color.white)
////                            .rotationEffect(.degrees(-10))
//                        .blinking(duration: 4.0)
//                }
                  
                                
                                ZStack {
                                    
                                    //*********************************************** Motion
//                                    GeometryReader { geo in
//                                        HStack(spacing: 200) {
//
//                                            Image("")
//                                                .aspectRatio(contentMode: .fit)
//                                            //                                        .blinking(duration: 6.0)
//
//                                            Spacer()
//                                                .frame(width: 50)
//
//                                            ZStack {
//
//                                                //    ********************************************
//                                                Image("BalloonGuy300")
//                                                //                                            .aspectRatio(contentMode: .fit)
//                                                    .frame(width: 120, height: 120)
//                                                   .blinking(duration: 7.0)
//                                                    .opacity(0.60)
//
//                                                Text("We're all happy for you")
//                                                    .fontWeight(.medium)
//                                                    .frame(width: 170, height: 30)
//                                                    .foregroundColor(Color.black)
//                                                    .font(.system(size: 15))
//                                                    .background(ColorManager .purple1)
//                                                    .cornerRadius(7)
//                                                    .rotationEffect(.degrees(-25))
////                                                    .blinking(duration: 7.0)
//                                                    .opacity(0.99)
//                                                //                                            .glow(color: ColorManager .grey4, radius: 3)
//                                                    .shadow(color: ColorManager .purple3, radius: 2, x: 0, y: 3)
//                                                    .blinking(duration: 7.0)
//
//                                                //**********************************************************
//
//                                            }
//
//                                            Image("")
//                                                .aspectRatio(contentMode: .fit)
//                                                .frame(width: geo.size.width, alignment: .leading)
//
//
//
//                                        }
//                                        .frame(width: geo.size.width, height: geo.size.height,
//                                               alignment: animate ? .trailing : .leading)
//                                    }
//                                    .ignoresSafeArea()
//                                    .onAppear {
//                                        withAnimation(animation) {
//                                            animate.toggle()
//                                        }
//
//                                    }
                                }
                            }

                                                        
                VStack {
            
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Button(action: {
                        sessionManager.showLogin()
                    },
                           label: {
                        Image("home-alt2")
                            .frame(width: 50, height: 25)
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .background(ColorManager .grey2)
                            .cornerRadius(15)
                            .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                            .opacity(0.70)

                    })
                                                           
                    Spacer()
                        .frame(height: 270)

                                                   
            }
        }
    }
}
                
            
            }
        }
    }
}

