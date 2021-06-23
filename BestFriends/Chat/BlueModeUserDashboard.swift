//
//  BlueModeUserDashboard.swift
//  BestFriends
//
//  Created by Social Tech on 6/7/21.
//

import SwiftUI

struct BlueModeUserDashboard: View {

    @EnvironmentObject var sessionManager: SessionManager

    var body: some View {
        NavigationView {
            ZStack {
                Image("BlueModeDashboard")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    Text("Dashboard")
                        .font(.system(size: 50))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                        .multilineTextAlignment(.center)
                
                    Spacer()

                    HStack {
                        
                            
                        Link("Fight with best friend", destination: URL(string: "https://socialtechlabs.com/darkmode/")!)
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                            .frame(width: 120, height: 50)
                            .multilineTextAlignment(.center)
                            .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                            .cornerRadius(10)
                        
                        Link("Should you apologize?", destination: URL(string: "https://socialtechlabs.com/you-owe-apology/")!)
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                            .frame(width: 120, height: 50)
                            .multilineTextAlignment(.center)
                            .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                            .cornerRadius(10)
                        
                        Link("Fight with significant other", destination: URL(string: "https://socialtechlabs.com/fight-w-boyfriend/")!)
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                            .frame(width: 120, height: 50)
                            .multilineTextAlignment(.center)
                            .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                            .cornerRadius(10)
                    }
                    
                    Spacer().frame(height: 10)
                    
                    HStack {
                        NavigationLink(
                            destination: BluemodeFeatures(),
                            label: {
                                Text("Bluemode features")
                                    .font(.system(size: 18))
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 170, height: 50)
                                    .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                                    .cornerRadius(10)
                            })
                        
                        NavigationLink(
                            destination: BlueModePage1(),
                            label: {
                                Text("Walkthrough")
                                    .font(.system(size: 18))
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 170, height: 50)
                                    .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                                    .cornerRadius(10)
                            })
                    }
                    
                    Spacer()
                }
            }
            .navigationBarHidden(true)
        }
    }
}
                                
                    
              
                
//                        VStack {
//
//
//
//                            Text("Helping pull the two of you from this wreckage before your hearts become forever dented!")
//                                .italic()
//                                .font(.system(size: 25))
//                                .fontWeight(.regular)
//                                .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
//                                .multilineTextAlignment(.center)
//
//
//                            Link("Fight w/ Best Friend - what to ask them?", destination: URL(string: "https://socialtechlabs.com/darkmode/")!)
//                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
//                            .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
//                            .cornerRadius(25)
//
//
//
//
//                            Spacer()
//                                .frame(height: 30)
//
//
//                            Link("Should you Apologize", destination: URL(string: "https://socialtechlabs.com/you-owe-apology/")!)
//                            .frame(width: 325, height: 50, alignment: .center)
//                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
//                            .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
//                            .cornerRadius(25)
//
//
//
//
//                            Spacer()
//                                .frame(height: 30)
//
//
//                            Link("Fight w/ significant other", destination: URL(string: "https://socialtechlabs.com/fight-w-boyfriend/")!)
//                            .frame(width: 325, height: 50, alignment: .center)
//                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
//                            .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
//                            .cornerRadius(25)
//
//
//
//                            Spacer()
//                                .frame(height: 30)
//
//                            NavigationLink(
//                                destination: SettingsView(),
//                                label: {
//                                    Text("Schedule a time to Talk")
//                                .italic()
//                                .font(.system(size: 27))
//                                .frame(width: 325, height: 50, alignment: .center)
//                                .foregroundColor(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
//                                .background(Color(#colorLiteral(red: 0, green: 1, blue: 0, alpha: 1)))
//                                .cornerRadius(25)
//
//                                })
//
//                            VStack {
//
//                                Spacer()
//                                    .frame(height: 60)
//
//                                Text("Unlock Special Features in BlueMode")
//
//                                    .font(.system(size: 40))
//                                    .fontWeight(.ultraLight)
//                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                    .multilineTextAlignment(.center)
//                                    .frame(width: 385, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
//                                Spacer()
//                                    .frame(height: 20)
//
//                                NavigationLink(
//                                    destination: ShakingCoolView(),
//                                    label: {
//                                    Text("BlueMode ShakingCool allows you to upload an image to your friend's ShakingCool. So send one of the two of your pre-fight!!!")
//                                        .frame(width: 350, height: 175, alignment: .center)
//                                        .font(.system(size: 27)) })
//                                    .frame(width: 400, height: 175)
//                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                    .overlay(
//                                        RoundedRectangle(cornerRadius: 25)
//                                            .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 5)
//                                        )
//                                Spacer()
//                                    .frame(height: 30)
//
//                                NavigationLink(
//                                    destination: SmileNotesView(),
//                                    label: {
//                                        Text("BlueMode SmileNotes - Filter just for this friend's nice messages.")
//                                            .frame(width: 350, height: 100, alignment: .center)
//                                            .font(.system(size: 27))
//                                    })
//                                    .frame(width: 400, height: 100)
//                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                    .overlay(
//                                        RoundedRectangle(cornerRadius: 25)
//                                            .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 5)
//                                        )
//
//
//
//                                Spacer()
//                                    .frame(height: 30)
//
//                                NavigationLink(
//                                    destination: InfoViewPage1(),
//                                    label: {
//                                        Text("BlueMode stickers - saying the words you can't seem to say right now.")
//                                            .frame(width: 350, height: 100, alignment: .center)
//                                            .font(.system(size: 27))
//                                    })
//                                    .frame(width: 400, height: 100)
//                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                    .overlay(
//                                        RoundedRectangle(cornerRadius: 25)
//                                            .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 5)
//                                        )
//
//                                VStack {
//
//                                    Spacer()
//                                        .frame(height: 70)
//
//                                    Text("Not knowing if your messages are read or not, SUCKS!")
//                                        .font(.system(size: 40))
//                                        .fontWeight(.ultraLight)
//                                        .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
//                                        .multilineTextAlignment(.center)
//                                        .frame(width: 385, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
//                                    Spacer()
//                                        .frame(height: 30)
//
//
//                                    NavigationLink(
//                                        destination: ShakingCoolView(),
//                                        label: {
//                                        Text("We send you push notifications instantly when you receive a message in BlueMode Chat.")
//                                            .frame(width: 350, height: 175, alignment: .center)
//                                            .font(.system(size: 27)) })
//                                        .frame(width: 400, height: 175)
//                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                        .overlay(
//                                            RoundedRectangle(cornerRadius: 25)
//                                                .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 5)
//                                            )
//
//                                    Spacer()
//                                        .frame(height: 30)
//
//
//                                    NavigationLink(
//                                        destination: ShakingCoolView(),
//                                        label: {
//                                        Text("We 'time-stamp' when your messages are read - removing the uncertianty.")
//                                            .frame(width: 350, height: 175, alignment: .center)
//                                            .font(.system(size: 27)) })
//                                        .frame(width: 400, height: 140)
//                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                        .overlay(
//                                            RoundedRectangle(cornerRadius: 25)
//                                                .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 5)
//                                            )
//
//                                    Spacer()
//                                        .frame(height: 70)
//
//                                    Text("It remains forever hard to un-break a heart; remembering that in the end some things can never be taken back!")
//                                        .italic()
//                                        .font(.system(size: 25))
//                                        .fontWeight(.regular)
//                                        .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
//                                        .multilineTextAlignment(.center)
//                                        .frame(width: 350, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
//
//
//
//
//
//
//                                    VStack {
//
//
//
//
//
//
//                                        Spacer()
//                                            .frame(height: 45)
//
//                                         Text("We'd Love to Hear from You")
//
//                                             .font(.system(size: 32))
//                                             .fontWeight(.ultraLight)
//                                             .foregroundColor(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
//                                             .multilineTextAlignment(.center)
//                                             .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
//
//
//
//                                         NavigationLink(
//                                             destination: BlueSurvey(),
//                                             label: {
//                                                 Text("BlueMode Survey - *Make this a popup*")
//                                             })
//                                             .frame(width: 325, height: 50)
//                                             .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                             .overlay(
//                                                 RoundedRectangle(cornerRadius: 25)
//                                                     .stroke(Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)), lineWidth: 1)
//                                                     )
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
//                    }
//
//                }
//            }
//
//
//            }
//
//                    HStack {
//
//                        Spacer()
//
//                        Button(action: {
//                            //Display invite menu
//                            sessionManager.getCurrentAuthUser()
//
//                          }) {
//                              Image("inviteWhite")
//                                .resizable()
//                                .frame(width: 40, height: 40)
//
//                          }
//
//                        Spacer()
//
//                               Image("messageIconWhite")
//                                .resizable()
//                                .frame(width: 40, height: 40)
//                                .scaledToFill()
//                                .onTapGesture {
//                                    sessionManager.showRooms()
//                                }
//
//                        Spacer()
////
//                               Image("whiteSmiley")
//                                .resizable()
//                                .frame(width: 40, height: 40)
//                                .scaledToFill()
//                                .onTapGesture {
//                                    sessionManager.showSmileNotes()
//                                }
//
//
//
//                        Spacer()
//
//
//                    }
//
//
        
           
    
struct BluemodeFeatures: View {
    var body: some View {
        ZStack {
            Image("BlueModeDashboard")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                Text("Bluemode Features")
                    .font(.system(size: 50))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                    .multilineTextAlignment(.center)
                
                Spacer().frame(height: 100)
                
                Text(" - Push notifications for messages \n - New Stickers \n - Timestamps on messages \n - Read receipts \n - An extra ShakingCool spot \n    just for you and your friend")
                    .font(.system(size: 30))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.leading)
                
                Spacer()
            }
        }
    }
}


struct BlueModeUserDashboard_Previews : PreviewProvider {
    static var previews: some View {
        BlueModeUserDashboard()
        BluemodeFeatures()
    }
}

