//
//  EnjoyingBestFriends.swift
//  BestFriends
//
//  Created by Social Tech on 5/29/21.
//
import SwiftUI

struct ShakingCoolPopup: View {
    
    var body: some View {
        VStack {
            Text("Certian images always make you smile. Go ahead - shake your phone and SMILE.")
                .italic()
                .font(.system(size: 25, weight: .regular))
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .padding(5)
            
            // Take the user to the beta tester page on the website
            NavigationLink(
                destination: ShakingCoolView(),
                label: {
                    Text("Setup ShakingCool")
                })
                .font(.system(size: 27))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(#colorLiteral(red: 0, green: 1, blue: 0, alpha: 1)))
                .cornerRadius(25)
        }
        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
    }
}

struct SmileNotesPopup: View {
    
    var body: some View {
        VStack {
            Text("Looking for that special message from a month ago. Stop scrolling - try SmileNotes.")
                .italic()
                .font(.system(size: 25, weight: .regular))
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .padding(5)
            
            // Take the user to the beta tester page on the website
            NavigationLink(
                destination: InfoViewPage1(),
                label: {
                    Text("Long-tap your favorite messages - we just saved them for you!")
                })
                .font(.system(size: 27))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(#colorLiteral(red: 0, green: 1, blue: 0, alpha: 1)))
                .cornerRadius(25)
        }
        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
    }
}



struct BFWalkThroughPopup: View {
    
    var body: some View {
        VStack {
            Text("Take a quick tour of BestFriends.")
                .italic()
                .font(.system(size: 35, weight: .regular))
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .padding(5)
            
            // Take the user to the beta tester page on the website
            NavigationLink(
                destination: InfoViewPage1(),
                label: {
                    Text("Ok")
                })
                .font(.system(size: 35))
                .foregroundColor(Color(#colorLiteral(red: 0, green: 1, blue: 0, alpha: 1)))
                .cornerRadius(25)
        }
        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
    }
}


struct BetaTesterPopup: View {
    
    var body: some View {
        VStack {
            Text("Give us your Feedback so we can make BestFrinds better, giving you more of what you want.")
                .italic()
                .font(.system(size: 25, weight: .regular))
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .padding(5)
            
            // Take the user to the beta tester page on the website
            Link("OK", destination: URL(string: "https://socialtechlabs.com/beta-team/")!)
                .font(.system(size: 35))
                .foregroundColor(Color(#colorLiteral(red: 0, green: 1, blue: 0, alpha: 1)))
                .cornerRadius(25)
        }
        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
    }
}

struct BlueModePopup: View {
    
    var body: some View {
        VStack {
            Text("Just had a huge fight with your best friend - we can help 💕")
                .italic()
                .font(.system(size: 30, weight: .regular))
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .padding(5)
            
            // Take the to blue mode walkthough
            NavigationLink(
                destination: BlueModePage1(),
                label: {
                    Text("Yes")
                })
                .font(.system(size: 35))
                .foregroundColor(Color(#colorLiteral(red: 0, green: 1, blue: 0, alpha: 1)))
                .cornerRadius(25)
        }
        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
    }
}

struct ReviewPopup: View {
    
    var body: some View {
        VStack {
            Text("Are you enjoying BestFriends?")
                .italic()
                .font(.system(size: 35, weight: .regular))
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .padding(5)
            
            
            HStack {
                // Take the to the app store to write review
                NavigationLink(
                    destination: YesEnjoyingApp(),
                    label: {
                        Text("Yes")
                    })
                    .font(.system(size: 35))
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 1, blue: 0, alpha: 1)))
                    .cornerRadius(25)
                
                Spacer().frame(width: 150)
                // Take the user back to the page they were on when the popup came up
                NavigationLink(
                    destination: NotEnjoyingApp(),
                    label: {
                        Text("No")
                    })
                    .font(.system(size: 35))
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)))
                    .cornerRadius(25)
            }
            .padding(5)
        }
        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
    }
}

struct YesEnjoyingApp: View {
    
    var body: some View {
        
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                
                Text("Great!!!")
                    .foregroundColor(.white)
                    .font(.system(size: 75))
                    .font(.title)
                
                Spacer().frame(height: 25)
                
                Text("Could you take a moment to write a short review?")
                    .italic()
                    .font(.system(size: 35))
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Spacer().frame(height: 25)
                VStack {
                    
                    
                    Spacer()
                        .frame(height: 30)
                    
                    // Take the to the app store to write review
                    NavigationLink(
                        destination: SettingsView(),
                        label: {
                            Text("Write Review")
                        })
                        .frame(width: 300, height: 50, alignment: .center)
                        .font(.system(size: 35))
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                    
                    Spacer()
                        .frame(height: 30)
                    
                    // Take the user back to the page they were on when the popup came up
                    NavigationLink(
                        destination: SettingsView(),
                        label: {
                            Text("No thank you")
                        })
                        .frame(width: 300, height: 50, alignment: .center)
                        .font(.system(size: 35))
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                    
                    Spacer()
                        .frame(height: 30)
                    
                    
                    
                    
                    
                    Spacer()
                        .frame(height: 100)
                    
                }
            }
        }
    }
}

struct NotEnjoyingApp: View {
    var body: some View {
        
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                
                
                Spacer().frame(height: 25)
                
                
                Text("We're sorry to hear this.")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 350, height: 150, alignment: .center)
                    .font(.system(size: 50))
                    .font(.title)
                
                Spacer().frame(height: 25)
                
                Text("Could you please take a moment and tell us, Why?")
                    .italic()
                    .font(.system(size: 35))
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Spacer().frame(height: 25)
                VStack {
                    
                    
                    
                    Spacer()
                        .frame(height: 20)
                    
                    // The user is taken to our website and their 'Reason' is sent to Admin@SocialTechLabs.com
                    //
                    
                    Link("My Reason", destination: URL(string: "https://socialtechlabs.com/survey/")!)
                        
                        .frame(width: 300, height: 50, alignment: .center)
                        .font(.system(size: 35))
                        
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                    
                    
                    Spacer()
                        .frame(height: 50)
                    
                    
                    // We want to take the user back to the page they were previously on before the popup came up.
                    
                    NavigationLink(
                        destination: SettingsView(),
                        label: {
                            Text("Maybe Later")
                        })
                        .frame(width: 300, height: 50, alignment: .center)
                        .font(.system(size: 35))
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                    
                    Spacer()
                        .frame(height: 30)
                    
                    
                    
                    
                    
                    Spacer()
                        .frame(height: 100)
                    
                }
            }
        }
    }
}


struct Popups_Previews : PreviewProvider {
    static var previews: some View {
        ShakingCoolPopup()
        SmileNotesPopup()
        BFWalkThroughPopup()
        BetaTesterPopup()
        BlueModePopup()
        ReviewPopup()
        YesEnjoyingApp()
        NotEnjoyingApp()
    }
}



