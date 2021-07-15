//
//  BlueModePages.swift
//  BestFriends
//
//  Created by Social Tech on 5/22/21.
//
import Foundation
import Amplify
import SwiftUI
//import AVKit


struct BlueModePage1: View {
    
    var body: some View {
        NavigationView{
            
            
            ZStack {
                
                
                Image("AriC2")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                
                VStack {
                    
                    ZStack {
                        Image("ChatBubbleTrans")
                            .resizable()
                            .frame(width: 550, height: 285)
                            .scaledToFill()
                        
                        
                        
                        
                        Text("WOW! Just had a huge fight with your best friend or significant other?")
                            .italic()
                            .font(.system(size: 35))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 0, blue: 0.5167014003, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 375, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    
                    
                    Spacer()
                    
                    
                    Spacer()
                        .frame(height: 10)
                    
                    NavigationLink(destination: BlueModePage2()) {
                        Text("Next")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .frame(width: 205, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)
                    }
                    
                    Spacer()
                        .frame(height: 250)
                    
                }
            }
        }
    }
    
    
    
    struct BlueModePage1_Previews : PreviewProvider {
        static var previews: some View {
            BlueModePage1()
            
        }
    }
    
    // ***********************************
    struct BlueModePage2: View {
        
        var body: some View {
            
            ZStack {
                Image("Shayla3 copy")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    ZStack {
                        Image("ChatBubbleTrans")
                            .resizable()
                            .frame(width: 525, height: 300)
                            .scaledToFill()
                        
                        Text("Before you start 'unfriending' each other on IG & Snap, or reposting private messages that will be hurtful - let's try 'BlueMode'.")
                            .italic()
                            .font(.system(size: 27))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 0, blue: 0.5167014003, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 375, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    .padding()
                    
                    VStack {
                        //                Spacer()
                        
                        Spacer()
                            .frame(height: 325)
                        
                        Text("We know you're upset & hurt, wondering how it could have come to all this!")
                            .italic()
                            .font(.system(size: 30))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 385, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                            .frame(height: 25)
                        
                        NavigationLink(destination: BlueModePage3()) {
                            Text("Unlock 'Special' features >>>")
                                .font(.system(size: 30))
                                .fontWeight(.ultraLight)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .frame(width: 375, height: 50)
                                .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                .cornerRadius(25)
                            
                        }
                        
                        Spacer()
                            .frame(height: 270)
                    }
                }
            }
        }
    }
    
    
    struct BlueModePage2_Previews : PreviewProvider {
        static var previews: some View {
            BlueModePage2()
        }
    }
    
    
    
    // ********************************************
    
    struct BlueModePage3: View {
        
        var body: some View {
            
            // NavigationView{
            
            ZStack {
                Image("blueBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    
                    VStack {
                        
                        
                        HStack {
                            Spacer()
                            
                            
                            VStack {
                                Text("Question?")
                                    .italic()
                                    .font(.system(size: 25))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 375, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                                Text("What's the worst part of trying to makeup with someone?")
                                    .italic()
                                    .font(.system(size: 25))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 275, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                                
                            }
                            
                            Spacer()
                                .frame(width: 125)
                            
                        }
                        
                        
                        HStack {
                            VStack {
                                
                                
                            }
                            
                            ZStack {
                                Image("ChatBubbleTrans")
                                    .resizable()
                                    .frame(width: 525, height: 250)
                                    .scaledToFill()
                                
                                
                                VStack {
                                    Text("Yep, not knowing if they are every going to talk to you again!💔")
                                        .italic()
                                        .font(.system(size: 25))
                                        .fontWeight(.regular)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 0, blue: 0.5167014003, alpha: 1)))
                                        .multilineTextAlignment(.center)
                                        .frame(width: 350, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    
                                    
                                    
                                }
                                
                                Spacer()
                                    .frame(width: 350)
                            }
                            
                            
                        }
                    }
                    
                    Spacer()
                    
                    
                    NavigationLink(destination: BlueModePage4()) {
                        Text("BlueMode User Agreement")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .frame(width: 385, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)
                        
                        
                        
                        
                    }
                    Spacer()
                        .frame(height: 120)
                    
                }
            }
        }
    }
    
    
    
    
    struct BlueModePaqe3_Previews : PreviewProvider {
        static var previews: some View {
            
            BlueModePage3()
        }
    }
    
    
    
    
    // ********************************************
    
    struct BlueModePage4: View {
        
        var body: some View {
            
            // NavigationView{
            
            ZStack {
                Image("blueBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    
                    VStack {
                        
                        
                        HStack {
                            Spacer()
                            
                            
                            VStack {
                                Text("Here's the deal. When you agree to BlueMode's Terms you are granted 1 wish.")
                                    .italic()
                                    .font(.system(size: 25))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 375, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                                
                                Text("BlueMode grants you the following wish: The person you put in BlueMode agrees to respond to one 'Special' push notification no matter what - and vice-versa.")
                                    .font(.system(size: 25))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 385, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                            }
                            
                            Spacer()
                                .frame(width: 75)
                            
                        }
                        
                        
                        HStack {
                            VStack {
                                Spacer()
                                    .frame(height:5)
                                
                            }
                            
                            ZStack {
                                Image("ChatBubbleTrans")
                                    .resizable()
                                    .frame(width: 525, height: 250)
                                    .scaledToFill()
                                
                                
                                VStack {
                                    Text("A 'Special' push notification will be sent letting them know your're redeming your wish.")
                                        .italic()
                                        .font(.system(size: 20))
                                        .fontWeight(.regular)
                                        .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                                        .multilineTextAlignment(.center)
                                        .frame(width: 350, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    
                                    
                                    
                                }
                                
                                Spacer()
                                    .frame(width: 250)
                            }
                            
                            
                        }
                    }
                    
                    Spacer()
                    
                    
                    NavigationLink(destination: BlueModePage5()) {
                        Text("Ok, I agree.")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .frame(width: 385, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)
                        
                        
                        
                        
                    }
                    Spacer()
                        .frame(height: 120)
                    
                }
            }
        }
    }
    
    
    
    
    struct BlueModePaqe4_Previews : PreviewProvider {
        static var previews: some View {
            
            BlueModePage4()
        }
    }
    
    
    
    
    // **************************************
    
    struct BlueModePage5: View {
        
        
        var body: some View {
            ZStack {
                
                Image("blueBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                ScrollView {
                    VStack {
                        
                        
                        Text("Special Features")
                            .font(.system(size: 50))
                            .fontWeight(.ultraLight)
                            .foregroundColor(.blue)
                            .multilineTextAlignment(.center)
                            .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        
                        
                        Spacer().frame(height: 25)
                        
                        Text("Helping pull the two of you from this wreckage before your hearts become forever dented!")
                            .frame(width: 400, height: 150, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.title)
                            .multilineTextAlignment(.center)
                            .frame(width: 385, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        
                        VStack {
                            
                            Spacer()
                                .frame(height: 25)
                            
                            
                            Link("Fight w/ Best Friend - what to ask them?", destination: URL(string: "https://socialtechlabs.com/darkmode/")!)
                                .frame(width: 325, height: 50, alignment: .center)
                                .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                                .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                                .cornerRadius(25)
                            
                            
                            
                            
                            Spacer()
                                .frame(height: 30)
                            
                            
                            Link("Should you Apologize", destination: URL(string: "https://socialtechlabs.com/you-owe-apology/")!)
                                .frame(width: 325, height: 50, alignment: .center)
                                .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                                .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                                .cornerRadius(25)
                            
                            
                            
                            
                            Spacer()
                                .frame(height: 30)
                            
                            
                            Link("Fight w/ significant other", destination: URL(string: "https://socialtechlabs.com/fight-w-boyfriend/")!)
                                .frame(width: 325, height: 50, alignment: .center)
                                .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                                .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                                .cornerRadius(25)
                            
                            
                            
                            VStack {
                                
                                Spacer()
                                    .frame(height: 30)
                                
                                
                                
                                Spacer()
                                    .frame(height: 15)
                                
                                
                                Text("(Note: You can access all BlueMode functions from BlueMode Chat.)")
                                    
                                    .font(.system(size: 20))
                                    .italic()
                                    .frame(width: 300, height: 50, alignment: .center)
                                    .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                                
                                Spacer()
                                    .frame(height: 30)
                                
                                NavigationLink(destination: BlueModePage6()) {
                                    Text("Not ready to talk just yet?")
                                        .font(.system(size: 30))
                                        .fontWeight(.ultraLight)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .frame(width: 400, height: 50)
                                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                                    
                                    
                                }
                                
                                
                                
                                
                                Spacer()
                                    .frame(height: 200)
                                
                                
                                
                                
                                
                                
                            }
                        }
                    }
                }
            }
        }
    }
    
    
    
    struct BlueModePage5_Previews : PreviewProvider {
        static var previews: some View {
            BlueModePage5()
        }
    }
    
    
    // ***********************************
    
    struct BlueModePage6: View {
        
        
        var body: some View {
            ZStack {
                
                Image("blueBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    
                    
                    
                    Text("Special Features")
                        .font(.system(size: 50))
                        .fontWeight(.ultraLight)
                        .foregroundColor(.blue)
                        .multilineTextAlignment(.center)
                        .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                    
                    
                    
                    Spacer()
                        .frame(height: 25)
                    
                    VStack {
                        
                        Text("It remains forever hard to un-break a heart; remembering that in the end some things can never be taken back!")
                            //  .italic()
                            .font(.system(size: 25))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 425, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        
                        Spacer().frame(height: 25)
                        
                        NavigationLink(
                            destination: EmptyView(),
                            label: {
                                Text("Upload images of happier days to your friend's ShakingCool - prompting a smile!")
                                    .frame(width: 400, height: 100, alignment: .center)
                            })
                            .frame(width: 400, height: 75, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                            .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                            .cornerRadius(25)
                        
                        
                        Spacer()
                            .frame(height: 30)
                        
                        NavigationLink(
                            destination: SmileNotesView(),
                            label: {
                                Text("View your friend's SmileNotes - remembering the nice things.")
                                    .frame(width: 400, height: 100, alignment: .center)
                            })
                            .frame(width: 400, height: 75, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                            .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                            .cornerRadius(25)
                        
                        
                        
                        Spacer()
                            .frame(height: 30)
                        
                        NavigationLink(
                            destination: EmptyView(),
                            label: {
                                Text("Unlock special stickers - saying the words you can't seem to say right now.")
                                    .frame(width: 400, height: 100, alignment: .center)
                            })
                            .frame(width: 400, height: 75, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                            .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                            .cornerRadius(25)
                        
                        VStack {
                            
                            
                            Spacer()
                                .frame(height: 30)
                            
                            NavigationLink(
                                destination: EmptyView(),
                                label: {
                                    Text("We'll send push notifications instantly when your messages are read & new messages are posted in BlueMode Chat.")
                                        .frame(width: 400, height: 100, alignment: .center)
                                })
                                .frame(width: 400, height: 75, alignment: .center)
                                .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                                .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                                .cornerRadius(25)
                            
                            
                            
                            Spacer()
                                .frame(height: 55)
                            
                            NavigationLink(destination: SettingsView()) {
                                Text("Ok, let's do this >>>")
                                    .font(.system(size: 30))
                                    .fontWeight(.ultraLight)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .frame(width: 350, height: 50)
                                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))) .cornerRadius(25)
                                
                                
                                
                                
                            }
                            
                            Spacer()
                                .frame(height: 60)
                            
                        }
                    }
                }
            }
        }
        
        
        
        
        
        
        struct BlueModePage6_Previews : PreviewProvider {
            static var previews: some View {
                BlueModePage6()
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    // Diverting to the BlueHeartVid page instead of page 6
    
    //struct BlueModePage6: View {
    //
    //    var body: some View {
    //        NavigationView{
    //
    //
    //        ZStack {
    //
    //
    //            Image("Transition")
    //                .resizable()
    //                .ignoresSafeArea()
    //                .scaledToFill()
    //
    //
    //            VStack {
    //
    //                    ZStack {
    //                        Image("ChatBubbleTrans")
    //                            .resizable()
    //                            .frame(width: 500, height: 250)
    //                            .scaledToFill()
    //
    //                        Text("Before things get any worse.")
    //                            .italic()
    //                            .font(.system(size: 35))
    //                            .fontWeight(.regular)
    //                            .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
    //                            .multilineTextAlignment(.center)
    //                            .frame(width: 300, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    //                    }
    //
    //
    //                    Spacer()
    //
    //
    //                NavigationLink(destination: SettingsView()) {
    //                                    Text("Take me to BlueMode Chat")
    //                                        .font(.system(size: 30))
    //                                        .fontWeight(.ultraLight)
    //                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
    //                                        .frame(width: 400, height: 50)
    //                                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
    //                                        .cornerRadius(25)
    //                    }
    //
    //                Spacer()
    //                    .frame(height: 215)
    //
    //                    }
    //            }
    //        }
    //    }
    //}
    //
    //
    //struct BlueModePaqe6_Previews : PreviewProvider {
    //    static var previews: some View {
    //
    //        BlueModePage6()
    //
    //
    //    }
    //}
    //
    //
    //
    
}
