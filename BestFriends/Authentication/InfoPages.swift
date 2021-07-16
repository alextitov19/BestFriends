//
//  InfoPages.swift
//  BestFriends
//
//  Created by Robert Roe on 5/5/21.
//

import Foundation

import Amplify
import SwiftUI

struct InfoViewPage1: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    let username: String
    let password: String
    
    var body: some View {
        NavigationView {
            
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
                            .frame(height: 100)
                        
                        Image("BestFriends")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .scaledToFill()
                            .cornerRadius(30)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            .offset(y: 10)
                        
                        Spacer()
                            .frame(height: 100)
                        
                        Text("Only takes 30 seconds!")
                            .font(.system(size: 25))
                            .italic()
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Spacer()
                            .frame(height: 40)
                        
                        NavigationLink(destination: InfoViewPage2(username: username, password: password).environmentObject(sessionManager)) {
                            Text("Ok, fine.")
                                .font(.title)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .frame(width: 200, height: 50)
                                .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                .cornerRadius(25)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            
                            
                            
                            
                        }
                        
                        Spacer()
                            .frame(height: 60)
                        
                    }
                }
            }
        }
        
    }
}



struct InfoViewPage2: View {
    @EnvironmentObject var sessionManager: SessionManager
    let username: String
    let password: String
    
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
                
                
                Text("You're never alone on a bad day, because ...")
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
                
                
                Text("each tiny star on the home page represents another user somewhere out there.")
                    .font(.system(size: 30))
                    .italic()
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 350, height: 220, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Spacer()
                    .frame(height: 60)
                
                
                
                
                
                VStack {
                    Spacer()
                        .frame(height: 20)
                    
                    NavigationLink(destination: InfoViewPage3(username: username, password: password).environmentObject(sessionManager)) {
                        Text("That's cool")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .frame(width: 250, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.7431745529, green: 0.284814775, blue: 0.8298347592, alpha: 1)), radius: 5, x:0, y:0)
                            .shadow(color: Color(#colorLiteral(red: 0.7431745529, green: 0.284814775, blue: 0.8298347592, alpha: 1)), radius: 5, x:0, y:0)

                    }
                    
                    Spacer()
                        .frame(height: 20)
                    
                }
            }
        }
    }
}




struct InfoViewPage3: View {
    @EnvironmentObject var sessionManager: SessionManager
    let username: String
    let password: String
    
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
                
                
                Text("Just shake your phone. Three pics of you and your friends that always make you smile ...")
                    .font(.system(size: 25))
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
                    
                    NavigationLink(destination: InfoViewPage4(username: username, password: password).environmentObject(sessionManager)) {
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

struct InfoViewPage4: View {
    @EnvironmentObject var sessionManager: SessionManager
    let username: String
    let password: String
    
    var body: some View {
        
        ZStack {
            Image("smileNotesCircles")
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
                
                Spacer().frame(height: 130)
                
                
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
                    .font(.system(size: 27))
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 250, height: 175, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
                
                VStack {
                    
                    
                    NavigationLink(destination: InfoViewPage5(username: username, password: password).environmentObject(sessionManager)) {
                        Text("Long-tap to save messages")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .frame(width: 400, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        
                    }
                    
                }
                
                Spacer()
                    .frame(height: 80)
                
            }
        }
    }
}






//***************************************

struct InfoViewPage5: View {
    @EnvironmentObject var sessionManager: SessionManager
    let username: String
    let password: String
    
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
                
                
                
                NavigationLink(destination: InfoViewPage6(username: username, password: password).environmentObject(sessionManager)) {
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

struct InfoViewPage6: View {
    @EnvironmentObject var sessionManager: SessionManager
    let username: String
    let password: String
    
    var body: some View {
        ZStack {
            
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                
                
                Text("Inviting Friends to Chat.")
                    
                    .font(.system(size: 40))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 385, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                
                
                Spacer()
                    .frame(height: 20)
                
                
                HStack {
                    
                    
                    Text("Step 1: Tap this icon in top-right corner, turning stars from purple to blue")
                        .italic()
                        .font(.system(size: 22))
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    
                    Image("chat-add icon")
                        .resizable()
                        .frame(width: 45, height: 45)
                        .scaledToFill()
                    
                }
                Spacer()
                    .frame(height: 40)
                
                VStack {
                    Text("Step 2: You have 5 seconds to tap the friends' blue stars you'd like to invite.")
                        .font(.system(size: 22))
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 375, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 22))
                    
                    Spacer()
                        .frame(height: 5)
                    
                    Text("Tips:\n•Stars will toggle between blue and green\n•When 5 seconds are up, all the green stars will be invited to chat")
                        .font(.system(size: 18))
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.leading)
                        .frame(width: 375, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 22))
                    
                    Spacer()
                        .frame(height: 35)
                    
                    NavigationLink(destination: InfoViewPage7(username: username, password: password).environmentObject(sessionManager)) {
                        Text("Got it.")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .frame(width: 250, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                    }
                }
            }
        }
    }
}

// ************************************************



struct InfoViewPage7: View {
    @EnvironmentObject var sessionManager: SessionManager
    let username: String
    let password: String
    
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
                        
                        
                        Text("Tap this icon on the home page")
                            .italic()
                            .font(.system(size: 27))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
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
                    
                    
                    Image("AddFriendInstructions")
                        .resizable()
                        .frame(width: 100, height: 200)
                        .scaledToFill()
                    
                    
                    
                    
                    
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
                            sessionManager.login(username: username, password: password)
                        }
                    
                    Spacer()
                        .frame(height: 100)
                }
            }
        }
    }
    
}


struct InfoViewPags_Previews : PreviewProvider {
    static var previews: some View {
        InfoViewPage1(username: "", password: "").environmentObject(SessionManager())
        InfoViewPage2(username: "", password: "").environmentObject(SessionManager())
        InfoViewPage3(username: "", password: "").environmentObject(SessionManager())
        InfoViewPage4(username: "", password: "").environmentObject(SessionManager())
        InfoViewPage5(username: "", password: "").environmentObject(SessionManager())
        InfoViewPage6(username: "", password: "").environmentObject(SessionManager())
        InfoViewPage7(username: "", password: "").environmentObject(SessionManager())
    }
}


