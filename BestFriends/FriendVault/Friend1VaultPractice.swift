//
//  Friend1VaultPractice.swift
//  BestFriends
//
//  Created by Social Tech on 5/16/22.
//

import SwiftUI
import Combine


struct Friend1VaultPractice: View {
    @EnvironmentObject var sessionManager: SessionManager

    let user: User
    let friend: User
    let friendAtmosphere: Atmosphere
    
    @State private var customMessage = "Custom Message"
    @State private var colorChangeTap: String = ""
    
    @State private var mostRecentMoodLog: MoodLog?
    
    var body: some View {
        ZStack {
            ColorManager.purple2
                .ignoresSafeArea()
                .onAppear(perform: loadData)
            
            VStack {
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
                if mostRecentMoodLog != nil {
                    ZStack {
                        if mostRecentMoodLog!.mood < 4 {
                            Color(.blue)
                                .cornerRadius(25)
                        } else if mostRecentMoodLog!.mood == 4 {
                            Color(.green)
                                .cornerRadius(25)
                        } else if mostRecentMoodLog!.mood == 5 {
                            Color(.orange)
                                .cornerRadius(25)
                        } else {
                            Color(.yellow)
                                .cornerRadius(25)
                        }
                        
                        VStack{
                            //MARK: Date and time
                            HStack {
                                Text(getDateString(date: Date(timeIntervalSince1970: TimeInterval(mostRecentMoodLog!.createdOn))))
                                
//                                Spacer()
                            }
                            .padding()
                            
                            //MARK: Mood Log sumary
                            HStack {
                                Text(mostRecentMoodLog!.summary)
                                
                                Spacer()
                            }
                            .padding(.horizontal)
                        }
                    }
                    .frame(width: 300, height: 150)
                    .padding(.vertical)
                }
                
                Spacer()
                    .frame(height: 7)
                
                
                
                
                
                //MARK: Send CUSTOM Support Message to user got push notificaiton from OR chose one from below
                TextEditor(text: $customMessage)
                    .font(.system(size: 20))
                    .foregroundColor(Color.black)
                    .padding(.horizontal, 50)
                    .frame(width:310, height: 75)
                    .background(ColorManager.purple3)
                    .cornerRadius(15)
                    .onReceive(Just(customMessage)) { _ in limitText(65) }
                
                
                VStack {
                    Button(action: {
                        sendMessage()
                    }, label: {
                        Text("Send Custom Message to Chat")
                            .fontWeight(.thin)
                            .frame(width: 310, height: 35)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 22))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                    .padding()
                    
                    Text("Respond instantly via Push Notification")
                        .font(.system(size: 18))
                        .frame(width:325, height: 30)
                        .foregroundColor(.white)
                    
                    Button(action: {
                        defaultMessageButtonTapped(defaultMessage: "Are you okay?")
                        
                        RestApi.instance.sendPushNotification(title: "From: \(user.firstName)", body: "Are you okay?", APNToken: friend.APNToken ?? "")
                    }, label: {
                        Text("Are you okay?")
                            .fontWeight(.thin)
                            .frame(width: 260, height: 30)
                           .foregroundColor(.purple)
                            .font(.system(size: 20))
                            .background(colorChangeTap == "Are you okay?" ? ColorManager.grey2 : ColorManager.grey1)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                    
                    
                    Button(action: {
                        defaultMessageButtonTapped(defaultMessage: "Do we need to talk?")
                        
                        RestApi.instance.sendPushNotification(title: "From: \(user.firstName)", body: "Do we need to talk?", APNToken: friend.APNToken ?? "")
                    }, label: {
                        Text("Do we need to talk?")
                            .fontWeight(.thin)
                            .frame(width: 260, height: 30)
                            .foregroundColor(.purple)
                            .font(.system(size: 20))
                            .background(colorChangeTap == "Do we need to talk?" ? ColorManager.grey2 : ColorManager.grey1)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                    
                    
                    Button(action: {
                        defaultMessageButtonTapped(defaultMessage: "C")
                        
                        RestApi.instance.sendPushNotification(title: "From: \(user.firstName)", body: "Congratulation, you did it!", APNToken: friend.APNToken ?? "")
                    }, label: {
                        Text("Congradulations, you did it!")
                            .fontWeight(.thin)
                            .frame(width: 260, height: 30)
                            .foregroundColor(.purple)
                            .font(.system(size: 20))
                            .background(colorChangeTap == "C" ? ColorManager.grey2 : ColorManager.grey1)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                    
                    
                    VStack {
                        Spacer()
                            .frame(height: 10)
                    }
                    Button(action: {
                        defaultMessageButtonTapped(defaultMessage: "D")
                        
                        RestApi.instance.sendPushNotification(title: "From: \(user.firstName)", body: "Good Luck - you got this!", APNToken: friend.APNToken ?? "")
                    }, label: {
                        Text("Good luck, you got this!")
                            .fontWeight(.thin)
                            .frame(width: 260, height: 30)
                            .foregroundColor(.purple)
                            .font(.system(size: 20))
                            .background(colorChangeTap == "D" ? ColorManager.grey2 : ColorManager.grey1)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                    
                    Button(action: {
                        defaultMessageButtonTapped(defaultMessage: "E")
                        
                        RestApi.instance.sendPushNotification(title: "From: \(user.firstName)", body: "We will figure this out!", APNToken: friend.APNToken ?? "")
                    }, label: {
                        Text("We will figure this out.")
                            .fontWeight(.thin)
                            .frame(width: 260, height: 30)
                            .foregroundColor(.purple)
                            .font(.system(size: 20))
                            .background(colorChangeTap == "E" ? ColorManager.grey2 : ColorManager.grey1)
                            .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)                    })
                    
                    
                    
                    
                    
                    Spacer ()
                        .frame(height: 10)
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
                        .onTapGesture {
                            RestApi.instance.sendPushNotification(title: "Hug", body: "", APNToken: friend.APNToken ?? "")
                        }
                    
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
    
    private func loadData() {
        for id in friendAtmosphere.moodLogs ?? [] {
            RestApi.instance.getMoodLog(id: id).then({ moodLog in
                if moodLog.sharedWith.contains(user.id) {
                    if mostRecentMoodLog == nil {
                        mostRecentMoodLog = moodLog
                    } else {
                        if mostRecentMoodLog!.createdOn < moodLog.createdOn {
                            mostRecentMoodLog = moodLog
                        }
                    }
                }
            })
        }
    }
    
    private func sendMessage() {
        RestApi.instance.createGroup(members: [friend.id, user.id]).then({ group in
            sessionManager.showChat(user: user, group: group)
        })
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
    }
    
    private func defaultMessageButtonTapped(defaultMessage: String) {
        self.colorChangeTap = defaultMessage
        
    }
    
    private func getDateString(date: Date) -> String {
        let formatter3 = DateFormatter()
        formatter3.dateFormat = "HH:mm E, d MMM y"
        return formatter3.string(from: date)
    }
}



//struct Friend1VaultPractice_Previews : PreviewProvider {
//    static var previews: some View {
//        Friend1VaultPractice(user: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: ""), friends: [], friend: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: ""))
//    }
//}
