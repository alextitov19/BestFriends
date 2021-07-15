//
//  SettingsInfoPages.swift
//  BestFriends
//
//  Created by Alex Titov on 7/15/21.
//

import Foundation

import Amplify
import SwiftUI

struct SettingsInfoViewPage1: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        ZStack {
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                
                
                Spacer()
                    .frame(height: 60)
                
                VStack {
                    Text("BestFriends \n Walk-through")
                        .font(.system(size: 40))
                        
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    
                    Spacer()
                        .frame(height: 300)
                    
                    Text("It only takes 30 seconds :)")
                        .font(.system(size: 25))
                        .italic()
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Spacer()
                        .frame(height: 20)
                    
                    NavigationLink(destination: SettingsInfoViewPage2().environmentObject(sessionManager)) {
                        Text("Ok, fine.")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .frame(width: 200, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        
                        
                    }
                    
                    Spacer()
                        .frame(height: 20)
                    
                }
            }
        }
    }
}



struct SettingsInfoViewPage2: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        
        ZStack {
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                Image("starPurple")
                    .resizable()
                    .frame(width: 80, height: 80, alignment: .center)
                    .scaledToFill()
                    .blendMode(.screen)
                    .offset(x: -100, y: -110)
                
                Image("starPurple")
                    .resizable()
                    .frame(width: 80, height: 80, alignment: .center)
                    .scaledToFill()
                    .blendMode(.screen)
                    .offset(x: 130, y: -240)
                
                Image("starPurple")
                    .resizable()
                    .frame(width: 80, height: 80, alignment: .center)
                    .scaledToFill()
                    .blendMode(.screen)
                    .offset(x: -30, y: -100)
                
                Image("starBlue")
                    .resizable()
                    .frame(width: 80, height: 80, alignment: .center)
                    .scaledToFill()
                    .blendMode(.screen)
                    .offset(x: -130, y: 130)
                
                Image("starGreen")
                    .resizable()
                    .frame(width: 80, height: 80, alignment: .center)
                    .scaledToFill()
                    .blendMode(.screen)
                    .offset(x: 110, y: -20)
            }
            
            VStack {
                
                
                Text("You're never alone.")
                    .font(.system(size: 35))
                    .italic()
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 16)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 16)
                
                Spacer()
                    .frame(height: 100)
                
                
                Text("Each tiny star on Landing page represents another user somewhere out there.")
                    .font(.system(size: 30))
                    .italic()
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 220, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Spacer()
                    .frame(height: 60)
                
                
                
                
                
                VStack {
                    Spacer()
                        .frame(height: 20)
                    
                    NavigationLink(destination: SettingsInfoViewPage3().environmentObject(sessionManager)) {
                        Text("That's cool")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .frame(width: 250, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                    }
                    
                    Spacer()
                        .frame(height: 20)
                    
                }
            }
        }
    }
}




struct SettingsInfoViewPage3: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        
        ZStack {
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                
                Text("ShakingCool")
                    .font(.system(size: 40))
                    
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 350, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                
                
                
                Spacer()
                    .frame(height: 225)
                
                
                Text("Just shake your phone and 3 pics that always make you smile ...")
                    .font(.system(size: 27))
                    .italic()
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
                Text(" Pop up!")
                    .font(.system(size: 60))
                    
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 375, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
                
                Spacer()
                    .frame(height: 10)
                
                
                
                VStack {
                    Spacer()
                        .frame(height: 20)
                    
                    NavigationLink(destination: SettingsInfoViewPage4().environmentObject(sessionManager)) {
                        Text("Next")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .frame(width: 250, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                    }
                    
                    Spacer()
                        .frame(height: 20)
                    
                }
            }
        }
    }
}






//***************************************

struct SettingsInfoViewPage4: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        
        ZStack {
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                Text("SmileVault")
                    .font(.system(size: 40))
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 375, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                
                
                Text("Can't find that message that made you smile from 2 months ago.")
                    .font(.system(size: 35))
                    .italic()
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 375, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
                Spacer()
                    .frame(height: 150)
                
                
                Text("STOP SCROLLING. We saved them in a special vault for you.")
                    .font(.system(size: 30))
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 275, height: 175, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
                
                VStack {
                    
                    
                    NavigationLink(destination: SettingsInfoViewPage5().environmentObject(sessionManager)) {
                        Text("Long-tap to save message >")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .frame(width: 400, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        
                    }
                    
                }
                
                Spacer()
                    .frame(height: 20)
                
            }
        }
    }
}






//***************************************

struct SettingsInfoViewPage5: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        
        ZStack {
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                
                
                Text("BlueMode")
                    .font(.system(size: 50))
                    
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 350, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                
                
                Text("Just had a huge fight with a friend?")
                    .font(.system(size: 35))
                    .italic()
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 350, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
                Spacer()
                    .frame(height: 200)
                
                
                Text("Switch to BlueMode. \nWe'll help you fix this!")
                    .font(.system(size: 30))
                    .italic()
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 375, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
                
                NavigationLink(destination: SettingsInfoViewPage6().environmentObject(sessionManager)) {
                    Text("Next")
                        .font(.title)
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 250, height: 50)
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
                }
                
                Spacer()
                    .frame(height: 20)
                
            }
        }
    }
}



// ************************************************



struct SettingsInfoViewPage6: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        NavigationView{
            ZStack {
                
                Image("SignUpPinBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                
                VStack {
                    Text("Adding Your Friends.") .font(.system(size: 40))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    
                    Spacer()
                        .frame(height: 20)
                    
                    
                    HStack {
                        
                        
                        Text("Tap this icon on 'homepage' >")
                            .italic()
                            .font(.system(size: 27))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 200, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        
                        
                        Image("inviteWhite")
                            .resizable()
                            .frame(width: 45, height: 45)
                            .scaledToFill()
                        
                    }
                    
                    Text("(Follow instructions on Pop up)")
                        
                        .font(.system(size: 25))
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                    
                    
                    
                    Spacer()
                        .frame(height: 275)
                    
                    
                    
                    Text("(That's it, you're done.)")
                        .italic()
                        .font(.system(size: 25))
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Text("Let's get started >")
                        .font(.title)
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 350, height: 50)
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        .onTapGesture {
                            sessionManager.showLoading()
                        }
                    
                    Spacer()
                        .frame(height: 100)
                }
            }
        }
    }
}


struct SettingsInfoViewPags_Previews : PreviewProvider {
    static var previews: some View {
        //        SettingsInfoViewPage1().environmentObject(SessionManager())
        SettingsInfoViewPage2().environmentObject(SessionManager())
        //        SettingsInfoViewPage3().environmentObject(SessionManager())
        //        SettingsInfoViewPage4().environmentObject(SessionManager())
        //        SettingsInfoViewPage5().environmentObject(SessionManager())
        //        SettingsInfoViewPage6().environmentObject(SessionManager())
        
    }
}
