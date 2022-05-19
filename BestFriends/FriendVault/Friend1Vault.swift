//
//  Friend1Vault.swift
//  BestFriends
//
//  Created by Social Tech on 5/15/22.
//
import SwiftUI
import Combine


struct Friend1Vault: View {
    
    let user: User
    let friends: [User]
    let friend: User
    
    @State private var customMessage = "Custom Message"
    
    var body: some View {
        ZStack {
            ColorManager.purple2
                .ignoresSafeArea()
            
            VStack {
                //TODO: Just put in 'Image' as a place holder. Need to write code for swipping.
                Image("5swipe")
                
                Spacer()
                    .frame(height: 20)
                
                //MARK: code to get friends name at top of page
                HStack {
                    Spacer()
                        .frame(width: 35)
                    
                    Text(friend.firstName + " " + friend.lastName)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                
                //TODO: Auto import message from [AtmosphereMain2] page for the below rectangle
                Rectangle()
                    .frame(width:325, height: 80)
                    .cornerRadius(15)
                    .foregroundColor(ColorManager.purple3)

                Spacer()
                    .frame(height: 20)

                Text("Respond instantly via Push Notification")
                    .font(.system(size: 18))
                    .frame(width:325, height: 30)
//                    .fontWeight(.light)
//                .multilineTextAlignment(.center)
                   .foregroundColor(Color.white)
                    
                
                //MARK: Send CUSTOM Support Message to user got push notificaiton from OR chose one from below
                TextEditor(text: $customMessage)
                    .font(.system(size: 20))
                    .foregroundColor(Color.black)
                    .padding(.horizontal, 50)
                    .frame(width:325, height: 100)
                    .foregroundColor(Color.white)
                    .cornerRadius(15)
                    .onReceive(Just(customMessage)) { _ in limitText(50) }
                
    
            
                
                VStack {
                    Button(action: {
//                        feelingsButtonTapped(feeling: "powerful");
                        RestApi.instance.sendPushNotification(title: "From: \(user.firstName)", body: "Are you okay?", APNToken: friend.APNToken ?? "")
                    }, label: {
                        Text("Are you okay?")
                            .fontWeight(.thin)
                            .frame(width: 260, height: 30)
                            .foregroundColor(.purple)
                            .font(.system(size: 20))
                            .background(ColorManager.grey1)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                    
                    
                    Button(action: {
                        RestApi.instance.sendPushNotification(title: "From: \(user.firstName)", body: "Do we need to talk?", APNToken: friend.APNToken ?? "")
                    }, label: {
                        Text("Do we need to talk?")
                            .fontWeight(.thin)
                            .frame(width: 260, height: 30)
                            .foregroundColor(.purple)
                            .font(.system(size: 20))
                            .background(ColorManager.grey1)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                    
                    
                    Button(action: {
                        RestApi.instance.sendPushNotification(title: "From: \(user.firstName)", body: "Congratulation, you did it!", APNToken: friend.APNToken ?? "")
                    }, label: {
                        Text("Congradulations, you did it!")
                            .fontWeight(.thin)
                            .frame(width: 260, height: 30)
                            .foregroundColor(.purple)
                            .font(.system(size: 20))
                            .background(ColorManager.grey1)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                    
                
            VStack {
                    Spacer()
                    .frame(height: 10)
                    }
                    Button(action: {
                        RestApi.instance.sendPushNotification(title: "From: \(user.firstName)", body: "Good Luck - you got this!", APNToken: friend.APNToken ?? "")
                    }, label: {
                        Text("Good luck, you got this!")
                            .fontWeight(.thin)
                            .frame(width: 260, height: 30)
                            .foregroundColor(.purple)
                            .font(.system(size: 20))
                            .background(ColorManager.grey1)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })

                    Button(action: {
                        RestApi.instance.sendPushNotification(title: "From: \(user.firstName)", body: "We will figure this out.", APNToken: friend.APNToken ?? "")
                    }, label: {
                        Text("We will figure this out.")
                            .fontWeight(.thin)
                            .frame(width: 260, height: 30)
                            .foregroundColor(.purple)
                            .font(.system(size: 20))
                            .background(ColorManager.grey1)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)                    })


                    Button(action: {
                        RestApi.instance.sendPushNotification(title: "From: \(user.firstName)", body: customMessage, APNToken: friend.APNToken ?? "")
                    }, label: {
//                        Text("Send Message")
                        Text("Send Custom Message")
                            .fontWeight(.thin)
                            .frame(width: 310, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                    
                    
                    Spacer ()
                        .frame(height: 40)
                }
                
                Text("Send virtual Hug or Heart")
                    .font(.system(size: 20))
                    .frame(width:325, height: 30)
//                    .fontWeight(.light)
//                .multilineTextAlignment(.center)
                   .foregroundColor(Color.white)
                
                HStack {
                    Image("Hug")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .scaledToFit()
                    
                    Image(systemName: "heart.fill")
                        .resizable()
                        .foregroundColor(.pink)
                        .frame(width: 40, height: 40)
                        .blur(radius: 2)
                        .shadow(color: .blue, radius: 65, x: 30, y: 50)
                        .padding(.horizontal, 30)
                    
//                    Image("Fireworks")
//                        .resizable()
//                        .frame(width: 45, height: 45)
//                        .scaledToFit()
//                        .colorInvert()
                }
                .padding(.bottom, 50)
            }
            
        
        }
    
    }
    
    private func limitText(_ upper: Int) {
        if customMessage.count > upper {
            customMessage = String(customMessage.prefix(upper))
        }
    }
    
    private struct RectView: View {
        let user: User
        let friend: User
        
        var body: some View {
            Button(action: {
                RestApi.instance.sendPushNotification(title: "BestFriends - BlueMode", body: "\(user.firstName) invited you to BlueMode!", APNToken: friend.APNToken ?? "").then { response in
                    print("Got send APN repsonse: ", response)
                }
            },
                   label: {
                Text(friend.firstName + " " + String(friend.lastName.first!))
                    .fontWeight(.bold)
                    .frame(width: 100, height: 30)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .font(.system(size: 10))
                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                    .cornerRadius(25)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
            })
        }
        
//        private func feelingsButtonTapped(feeling: String) {
//            self.feeling = feeling
    }
    
}





struct Friend1Vault_Previews : PreviewProvider {
    static var previews: some View {
        Friend1Vault(user: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: ""), friends: [], friend: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: ""))
    }
}
