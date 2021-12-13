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
            ColorManager.purple1
                .ignoresSafeArea()
            
            ZStack {
                Circle()
                    .frame(width: 400, height: 400)
                    .foregroundColor(ColorManager.purple3)
                    .offset(x: 200, y: -400)
                
                Circle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(ColorManager.purple3)
                    .offset(x: -200, y: 400)
            }
            
            VStack {
                Spacer().frame(height: 80)
                
                HStack {
                    Text("3/3")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(ColorManager.purple3)

                    Spacer()
                }
                .padding(.horizontal, 40)
                
                HStack {
                    Text("Select your intrests")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(ColorManager.grey4)

                    Spacer()
                }
                .padding(.horizontal, 40)
                
                
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        HStack {
                            Button(action: {
                                update(i: 1)
                            }) {
                                ZStack {
                                    Text("Lifestyle")
                                        .frame(width: 150, height: 150)
                                        .foregroundColor(.white)
                                        .background(ColorManager.orange5)
                                        .cornerRadius(15)
                                        .padding(5)
                                    
                                    if adPref.contains(1) {
                                        Image("check")
                                            .resizable()
                                            .frame(width: 50, height: 75)
                                            .scaledToFill()
                                    }
                                }
                            }
                            
                            Button(action: {
                                update(i: 2)
                            }) {
                                ZStack {
                                    Text("Sports / Fitness")
                                        .frame(width: 150, height: 150)
                                        .foregroundColor(.white)
                                        .background(ColorManager.purple4)
                                        .cornerRadius(15)
                                        .padding(5)
                                    
                                    if adPref.contains(2) {
                                        Image("check")
                                            .resizable()
                                            .frame(width: 50, height: 75)
                                            .scaledToFill()
                                    }
                                }
                            }
                        }
                        
                        HStack {
                            Button(action: {
                                update(i: 3)
                            }) {
                                ZStack {
                                    Text("Beauty")
                                        .frame(width: 150, height: 150)
                                        .foregroundColor(.white)
                                        .background(ColorManager.purple4)
                                        .cornerRadius(15)
                                        .padding(5)
                                    
                                    if adPref.contains(3) {
                                        Image("check")
                                            .resizable()
                                            .frame(width: 50, height: 75)
                                            .scaledToFill()
                                    }
                                }
                            }
                            
                            Button(action: {
                                update(i: 4)
                            }) {
                                ZStack {
                                    Text("Fashion")
                                        .frame(width: 150, height: 150)
                                        .foregroundColor(.white)
                                        .background(ColorManager.orange5)
                                        .cornerRadius(15)
                                        .padding(5)
                                    
                                    if adPref.contains(4) {
                                        Image("check")
                                            .resizable()
                                            .frame(width: 50, height: 75)
                                            .scaledToFill()
                                    }
                                }
                            }
                        }
                        
                        HStack {
                            Button(action: {
                                update(i: 5)
                            }) {
                                ZStack {
                                    Text("Skateboarding")
                                        .frame(width: 150, height: 150)
                                        .foregroundColor(.white)
                                        .background(ColorManager.orange5)
                                        .cornerRadius(15)
                                        .padding(5)
                                    
                                    if adPref.contains(5) {
                                        Image("check")
                                            .resizable()
                                            .frame(width: 50, height: 75)
                                            .scaledToFill()
                                    }
                                }
                            }
                            
                            Button(action: {
                                update(i: 6)
                            }) {
                                ZStack {
                                    Text("Health / Nutrition")
                                        .frame(width: 150, height: 150)
                                        .foregroundColor(.white)
                                        .background(ColorManager.purple4)
                                        .cornerRadius(15)
                                        .padding(5)
                                    
                                    if adPref.contains(6) {
                                        Image("check")
                                            .resizable()
                                            .frame(width: 50, height: 75)
                                            .scaledToFill()
                                    }
                                }
                            }
                        }
                        
                        Button(action: {
                            if adPref.count > 0 {
                                signUp()
                            }
                        }) {
                            CustomButtonInterior(text: "Submit", backgroundColor: ColorManager.purple4, textColor: ColorManager.grey1)
                        }
                        
                        Text("You can always revise your selections in Settings.")
                            .font(.system(size: 15, weight: .light))
                            .italic()
                            .foregroundColor(ColorManager.grey4)

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
