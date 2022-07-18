//
//  HorizonInviteFriends.swift
//  BestFriends
//
//  Created by Christine Maldonado on 7/17/22.
//

import SwiftUI

struct HorizonInviteFriends: View {
    let friends: [User]
    let user: User
    let atmosphere: Atmosphere
    
    @State private var mood: Int = -1
    @State private var summary = ""
    @State private var sharedWith: [String] = []
    @State private var colorChangeTap: String = ""
    
    var body: some View {
        
        
        
        
        
        HStack {
            
            
            
            Text("Invite friends")
                .font(.system(size: 30))
            
                .fontWeight(.light)
                .foregroundColor(ColorManager.grey1)
                .padding(.horizontal)
            
                        Text("To Join you with this Goal or Dream")
                            .font(.system(size: 12))
                            .italic()
                            .fontWeight(.light)
                            .foregroundColor(ColorManager.grey1)
            
            
//                        Spacer()
        }
//                    .padding(.horizontal)
        
        HStack {
            if friends.count > 1 {
                Button(action: {
                    defaultMessageButtonTapped(defaultMessage: "SHARE")
                    shareMood()
                },
                       label: {
                    Text("ALL")
                        .fontWeight(.bold)
                        .frame(width: 100, height: 30)
                    
                        .background(colorChangeTap == "SHARE" ? ColorManager.grey3 : ColorManager.purple3)
                    
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 15))
//                                    .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                        .cornerRadius(25)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                })
            }
            if friends.count > 0 {
                RectView(user: user, friend: friends[0], color: sharedWith.contains(friends[0].id) ? ColorManager.purple3 : ColorManager.purple5)
                    .onTapGesture(perform: {
                        if sharedWith.contains(friends[0].id) {
                            sharedWith = sharedWith.filter { $0 != friends[0].id }
                        } else {
                            sharedWith.append(friends[0].id)
                        }
                        print(sharedWith)
                    })
            }
            
            if friends.count > 1 {
                RectView(user: user, friend: friends[1], color: sharedWith.contains(friends[1].id) ? ColorManager.purple3 : ColorManager.purple5)
                    .onTapGesture(perform: {
                        if sharedWith.contains(friends[1].id) {
                            sharedWith = sharedWith.filter { $0 != friends[1].id }
                        } else {
                            sharedWith.append(friends[1].id)
                        }
                        print(sharedWith)
                    })
            }
        }
        
        HStack {
            if friends.count > 2 {
                RectView(user: user, friend: friends[2], color: sharedWith.contains(friends[2].id) ? ColorManager.purple3 : ColorManager.purple5)
                    .onTapGesture(perform: {
                        if sharedWith.contains(friends[2].id) {
                            sharedWith = sharedWith.filter { $0 != friends[2].id }
                        } else {
                            sharedWith.append(friends[2].id)
                        }
                        print(sharedWith)
                    })
            }
            
            if friends.count > 3 {
                RectView(user: user, friend: friends[3], color: sharedWith.contains(friends[3].id) ? ColorManager.purple3 : ColorManager.purple5)
                    .onTapGesture(perform: {
                        if sharedWith.contains(friends[3].id) {
                            sharedWith = sharedWith.filter { $0 != friends[3].id }
                        } else {
                            sharedWith.append(friends[3].id)
                        }
                        print(sharedWith)
                    })
            }
            
            if friends.count > 4 {
                RectView(user: user, friend: friends[4], color: sharedWith.contains(friends[4].id) ? ColorManager.purple3 : ColorManager.purple5)
                    .onTapGesture(perform: {
                        if sharedWith.contains(friends[4].id) {
                            sharedWith = sharedWith.filter { $0 != friends[4].id }
                        } else {
                            sharedWith.append(friends[4].id)
                        }
                        print(sharedWith)
                    })
            }
        }
     
        Spacer()
            .frame(height: 17)
        
        HStack {
        
        Button(action: {
            defaultMessageButtonTapped(defaultMessage: "SHARE")
            shareMood()
        },
               label: {
            Text("Share")
                .fontWeight(.thin)
                .frame(width: 100, height: 35)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .font(.system(size: 30))
                
                .background(colorChangeTap == "SHARE" ? ColorManager.grey3 : ColorManager.purple3)
                
//                            .background(ColorManager.purple3)
                .cornerRadius(15)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
        })
//                    .padding()
    }

}

private func shareMood() {
    RestApi.instance.createMoodLog(mood: mood, summary: summary, friends: sharedWith).then({ moodLog in
        print("Got mood log: ", moodLog)
        var m = atmosphere.moodLogs ?? []
        m.append(moodLog.id)
        let atm = Atmosphere(id: atmosphere.id, planet: atmosphere.planet, mood: mood, moodLogs: m)
        RestApi.instance.updateAtmosphere(atmosphere: atm).then({ response in
            if response == 200 {
                print("Successfully updated atmosphere")
                for i in sharedWith {
                    for f in friends {
                        if i == f.id {
                            RestApi.instance.sendPushNotification(title: "BestFriends - Atmosphere", body: "\(user.firstName) Just changed their Mood!", APNToken: f.APNToken )
                        }
                    }
                    mood = -1
                    summary = ""
                    sharedWith = []
                }
            } else {
                print("Failed to update atmosphere")
            }
        })
    })
}

private struct RectView: View {
    let user: User
    let friend: User
    let color: Color
    
    var body: some View {
        Text(friend.firstName + " " + String(friend.lastName.first!))
            .fontWeight(.bold)
            .frame(width: 100, height: 30)
            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .font(.system(size: 10))
            .background(color)
            .cornerRadius(25)
            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
    }
   
        
    
}

private func defaultMessageButtonTapped(defaultMessage: String) {
    self.colorChangeTap = defaultMessage
}
}

//struct HorizonInviteFriends_Previews: PreviewProvider {
//    static var previews: some View {
//        HorizonInviteFriends()
//    }
//}



//
//VStack{
//
//
//
//    HStack {
//    }
//
//    VStack {
//
//
//
//
//        Spacer()
//            .frame(height: 20)
//
//
//        Text("Who's Notification")
//            .font(.system(size: 35, weight: .ultraLight))
//            .foregroundColor(Color.purple)
//        Text("going to?")
//            .font(.system(size: 35, weight: .ultraLight))
//            .foregroundColor(Color.purple)
//
//
//        VStack {
//
//            Spacer()
//                .frame(height: 7)
//
//            Text("(Please tap only once)")
//                .font(.system(size: 15))
//                .italic()
//                .fontWeight(.thin)
//                .foregroundColor(Color.black)
//
