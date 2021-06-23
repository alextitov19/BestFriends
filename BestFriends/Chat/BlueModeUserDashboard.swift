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

