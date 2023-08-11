//
//  SaySomethingNice4.swift
//  BestFriends
//
//  Created by Social Tech on 11/29/22.
//
//


import SwiftUI

struct BlinkViewModifier: ViewModifier {
//struct SaySomethingNice4: ViewModifier {
    
    let duration: Double
    @State private var blinking: Bool = false
    
    func body(content: Content) -> some View {
        content
            .opacity(blinking ? 0 : 1)
            .animation(.easeOut(duration: duration).repeatForever())
            .onAppear {
                withAnimation {
                    blinking = true
                }
            }
    }
}

extension View {
    func blinking(duration: Double = 0.75) -> some View {
        modifier(BlinkViewModifier(duration: duration))
    }
}



    
//
//Text("Hello, World!")
//    .foregroundColor(.white)
//    .padding()
//    .background(Color.blue)
//    .blinking(duration: 0.75) // here duration is optional. This is blinking time

//*************************

struct BlinkingBorderModifier: ViewModifier {
    let state: Binding<Bool>
    let color: Color
    let repeatCount: Int
    let duration: Double

    // internal wrapper is needed because there is no didFinish of Animation now
    private var blinking: Binding<Bool> {
        Binding<Bool>(get: {
            DispatchQueue.main.asyncAfter(deadline: .now() + self.duration) {
                self.state.wrappedValue = false
            }
            return self.state.wrappedValue }, set: {
            self.state.wrappedValue = $0
        })
    }
    
    func body(content: Content) -> some View
    {
        content
            .border(self.blinking.wrappedValue ? self.color : Color.clear, width: 1.0)
            .animation( // Kind of animation can be changed per needs
                Animation.linear(duration:self.duration).repeatCount(self.repeatCount)
            )
    }
}

extension View {
    func blinkBorder(on state: Binding<Bool>, color: Color,
                     repeatCount: Int = 1, duration: Double = 0.5) -> some View {
        self.modifier(BlinkingBorderModifier(state: state, color: color,
                                             repeatCount: repeatCount, duration: duration))
    }
}

struct TestBlinkingBorder: View {
    @State  var blink = false
    var body: some View {
        VStack {
            Button(action: { self.blink = true }) {
                Text("Force Blinking")
            }
            Divider()
            Text("Hello, World!").padding()
                .blinkBorder(on: $blink, color: Color.red, repeatCount: 5, duration: 0.5)
        }
        .onAppear {
            self.blink = true
        }
    }
}















//import Foundation
//
//import SwiftUI
//import Combine
//
//struct SaySomethingNice4: View {
//
//    @EnvironmentObject var sessionManager: SessionManager
//
//    let user: User
//    let friend: User
//    let friends: [User]
//    let groups: [Group]
//    let friendAtmosphere: Atmosphere
//
//    @State private var customMessage = ""
//    @State private var colorChangeTap: String = ""
//
//
//
//
//
//
//
//    var body: some View {
//        ZStack {
//
////            ColorManager.grey4
////                .ignoresSafeArea()
//
//             Image("purpleBackground")
//                 .resizable()
//                 .scaledToFill()
//                 .ignoresSafeArea()
//
//             Image("girlwalking")
//                 .frame(width: 320, height: 20)
//
//
//
//
//            VStack {
//
//
//
//
//
//                    Text("Be part of making")
//                        .font(.system(size: 20))
//                        .italic()
//                        .foregroundColor(.white)
//                        .fontWeight(.ultraLight)
//                        .multilineTextAlignment(.center)
//
//                    Text("social media less negative")
//                        .font(.system(size: 20))
//                        .italic()
//                        .foregroundColor(.white)
//                        .fontWeight(.ultraLight)
//                        .multilineTextAlignment(.center)
//
//
//
//                    Spacer()
//                        .frame(height: 20)
//
//
//                    Text("Say Something")
//                        .font(.system(size: 27))
//
//                        .foregroundColor(.white)
//                        .fontWeight(.thin)
//                        .multilineTextAlignment(.center)
//
//                    Text("'Nice'")
//                        .font(.system(size: 45))
//
//                        .foregroundColor(.white)
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//
//
//
//        VStack {
//
//            TextField("", text: $customMessage)
//                .placeholder(when: customMessage.isEmpty) {
//                    HStack {
//                        Text("Type message here")
//                        .foregroundColor(.white)
//                        .fontWeight(.thin)
//
//                        Spacer()
//                    }
//                }
//                .font(.system(size: 18))
//                .foregroundColor(.white)
//                .submitLabel(.done)
//               .onReceive(Just(customMessage)) { _ in limitText(100) }
//
//
//                .padding()
//                .overlay(RoundedRectangle(cornerRadius: 20)
//                    .stroke(Color.white)
//                    .frame(height: 40)
//                    .padding(.horizontal, 10)
//                )
//
//
//
//            Spacer()
//                .frame(height: 10)
//
//            VStack {
//                Button(action: {
//                    sendMessage()
//                }, label: {
//                    Text("Send to Chat")
//                        .fontWeight(.thin)
//                        .frame(width: 270, height: 30)
//                        .foregroundColor(.white)
//                        .font(.system(size: 25))
//                    //                                .opacity(0.5)
//                        .background(ColorManager.pmbc_green)
//                        .opacity(0.7)
//                        .cornerRadius(15)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                })
//
//                Spacer()
//                    .frame(height: 30)
//
//
//                NavigationLink(
//                    destination: SendSongPushNote(user: user, friends: friends),
//                    label: {
//                        Text("Send Push Notification")
//                            .fontWeight(.thin)
//                            .frame(width: 300, height: 30)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 30))
//                            .background(ColorManager.purple3)
//                            .cornerRadius(15)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                    })
//
//                Spacer()
//                    .frame(height: 50)
//
//            }
//
//        }
//    }
//}
//}
//
//
//    private func sendMessage() {
//        if customMessage.count == 0 { return }
//
//        let arr = [user.id, friend.id]
//        for g in groups {
//            if g.members.containsSameElements(as: arr) {
//                // Send chat message to this existing group
//                RestApi.instance.createChatMessage(groupId: g.id, body: customMessage).then({ response in
//                    sessionManager.showChat(user: user, group: g)
//                })
//
//                return
//            }
//        }
//
//        // Create new group
//        RestApi.instance.createGroup(name: "\(user.firstName), \(friend.firstName)", members: arr).then { responseGroup in
//            // Send chat message to this group
//            RestApi.instance.createChatMessage(groupId: responseGroup.id, body: customMessage).then({ response in
//                sessionManager.showChat(user: user, group: responseGroup)
//            })
//        }
//    }
//
//    private func limitText(_ upper: Int) {
//        if customMessage.count > upper {
//            customMessage = String(customMessage.prefix(upper))
//        }
//    }
//
//    private struct RectView: View {
//        let user: User
//        let friend: User
//
//        var body: some View {
//            Button(action: {
//                RestApi.instance.sendPushNotification(title: "BestFriends", body: "\(user.firstName) sent song in Chat to match your Aura", APNToken: friend.APNToken )
//            },
//                   label: {
//                Text(friend.firstName + " " + String(friend.lastName.first!))
//                    .fontWeight(.bold)
//                    .frame(width: 100, height: 30)
//                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                    .font(.system(size: 10))
//                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
//                    .cornerRadius(25)
//                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//            })
//        }
//    }
//
//
//
//    private func defaultMessageButtonTapped(defaultMessage: String) {
//        self.colorChangeTap = defaultMessage
//
//    }
//
//    private func getDateString(n: Int64) -> String {
//        var timeString = ""
//        var x = Int64(Date().timeIntervalSince1970) - n
//        x = x / 60
//        timeString = "\(x) min"
//        if x > 60 {
//            x = x / 6
//            timeString = "\(x) hr"
//            if x > 24 {
//                x = x / 24
//                timeString = "\(x) days"
//            }
//        }
//        return timeString
//    }
//}
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
