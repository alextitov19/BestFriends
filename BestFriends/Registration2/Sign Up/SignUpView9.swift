//
//  SignUpView6.swift
//  BestFriends
//
//  Created by Alex Titov on 8/22/21.
//

import SwiftUI
import Amplify
import AVKit

struct SignUpView9: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State private var adPref: [Int] = []
    
    let username: String
    let firstname: String
    let lastname: String
    let email: String
    let password: String
    let date: Date
    let pronoun: String
    let location: String
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.932589829, green: 0.9314347506, blue: 0.9335541129, alpha: 1))
                .ignoresSafeArea()
            
            ZStack {
                Circle()
                    .frame(width: 400, height: 400)
                    .foregroundColor(Color(#colorLiteral(red: 0.7975029945, green: 0.7191545963, blue: 0.9469521642, alpha: 1)))
                    .offset(x: 200, y: -400)
                
                Circle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(Color(#colorLiteral(red: 0.7975029945, green: 0.7191545963, blue: 0.9469521642, alpha: 1)))
                    .offset(x: -200, y: 400)
            }
            
            VStack {
                Spacer().frame(height: 80)
                
                HStack {
                    Text("3/3")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(Color(#colorLiteral(red: 0.6782051325, green: 0.5380625725, blue: 0.9619095922, alpha: 1)))
                    
                    Spacer()
                }
                .padding(.horizontal, 40)
                
                HStack {
                    Text("What are your interests?")
                        .font(.system(size: 30, weight: .bold))
                    
                    Spacer()
                }
                .padding(.horizontal, 40)
                
                HStack {
                    Text("We don’t use cookies to stalk you outside of BestFriends. Instead, we simply 'Ask' you to share with us your interests. Ads are shown based on your preferences. You can always revise your decisions later in Settings.")
                        .font(.system(size: 18, weight: .light))
                    
                    Spacer()
                }
                .padding(.horizontal, 40)
                
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        HStack {
                            Button(action: {
                                update(i: 1)
                            }) {
                                Text("Lifestyle")
                                    .frame(width: 150, height: 200)
                                    .foregroundColor(.white)
                                    .background(adPref.contains(1) ? Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)) : Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)))
                                    .cornerRadius(15)
                                    .padding(5)
                            }
                            
                            Button(action: {
                                update(i: 2)
                            }) {
                                Text("Sports / Fitness")
                                    .frame(width: 150, height: 200)
                                    .foregroundColor(.white)
                                    .background(adPref.contains(2) ? Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)) : Color(#colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)))
                                    .cornerRadius(15)
                                    .padding(5)
                            }
                        }
                        
                        HStack {
                            Button(action: {
                                update(i: 3)
                            }) {
                                Text("Beauty")
                                    .frame(width: 150, height: 200)
                                    .foregroundColor(.white)
                                    .background(adPref.contains(3) ? Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)) : Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)))
                                    .cornerRadius(15)
                                    .padding(5)
                            }
                            
                            Button(action: {
                                update(i: 4)
                            }) {
                                Text("Fashion")
                                    .frame(width: 150, height: 200)
                                    .foregroundColor(.white)
                                    .background(adPref.contains(4) ? Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)) : Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
                                    .cornerRadius(15)
                                    .padding(5)
                            }
                        }
                        
                        HStack {
                            Button(action: {
                                update(i: 5)
                            }) {
                                Text("Travel")
                                    .frame(width: 150, height: 200)
                                    .foregroundColor(.white)
                                    .background(adPref.contains(5) ? Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)) : Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)))
                                    .cornerRadius(15)
                                    .padding(5)
                            }
                            
                            Button(action: {
                                update(i: 6)
                            }) {
                                Text("Health / Nutrition")
                                    .frame(width: 150, height: 200)
                                    .foregroundColor(.white)
                                    .background(adPref.contains(6) ? Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)) : Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)))
                                    .cornerRadius(15)
                                    .padding(5)
                            }
                        }
                        
                        Button(action: {
                            if adPref.count > 0 {
                                signUp()
                            }
                        }) {
                            Text("SUBMIT")
                                .font(.system(size: 20, weight: .semibold))
                                .foregroundColor(.white)
                                .frame(maxWidth: 200)
                                .frame(height: 60)
                                .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                .cornerRadius(20)
                                .padding(30)
                            
                        }
                    }
                }
                
                
                Spacer()
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            
            VStack {
                HStack {
                    Image("arrowLeft")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .padding(.horizontal, 30)
                        .onTapGesture {
                            self.mode.wrappedValue.dismiss()
                        }
                    
                    Spacer()
                }
                
                Spacer()
                
                
            }
        }
    }
    
    private func update(i: Int) {
        if let index = adPref.firstIndex(of: i) {
            adPref.remove(at: index)
        } else {
            adPref.append(i)
        }
        adPref.sort()
    }
    
    private func signUp() {
        let pushManager = PushNotificationManager(userID: username)
        
        
        
        print("Part 1")
        
        
        
        var user = User(
            id: username,
            firstName: firstname,
            lastName: lastname,
            email: email,
            birthday: Temporal.Date(date),
            pronouns: pronoun,
            location: location,
            adPreference: adPref,
            deviceFCMToken: pushManager.getFCMToken() ?? "No token",
            isOnline: true,
            secretPin: "noPin",
            tokens: 0,
            background: 0,
            notificationsBroadcast: true,
            notificationsLP: true,
            chatFontSize: 16,
            needIntro: true)
        
        print("Part 2")
        
        user.unlockedStickers = [1, 2, 3, 4]
        
        print("This user: ", user)
        
        UserManager().create(user)
        
        print("Part 3")
        
        print("Part 4")
        
        sessionManager.signUp(
            username: username,
            email: email,
            password: password
        )
        
        print("Part 2")
        
        //                    pushManager.registerForPushNotifications()
        
        
        
        print("Part 6")
        let docDS = ManDocDataSource()
        var emailDoc = docDS.getManDoc(id: "takenEmails")
        var usernameDoc = docDS.getManDoc(id: "takenUsernames")
        emailDoc.emails?.append(email)
        usernameDoc.usernames?.append(username)
        docDS.updateDoc(doc: emailDoc)
        docDS.updateDoc(doc: usernameDoc)
    }
}
