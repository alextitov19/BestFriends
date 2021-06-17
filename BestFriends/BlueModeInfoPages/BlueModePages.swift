//
//  BlueModePages.swift
//  BestFriends
//
//  Created by Social Tech on 5/22/21.
//
import Foundation
import Amplify
import SwiftUI
import AVKit


struct BlueModePage1: View {

    var body: some View {
      // NavigationView{
    
       
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
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 375, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
            
                    
               
                    
                    Spacer()
                   
              
                    
                
             
               
                
                NavigationLink(destination: BlueModePage2()) {
                                    Text(" Unlock special features in 'BlueMode' to help ease this pain.")
                                        .font(.system(size: 30))
                                        .fontWeight(.ultraLight)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .frame(width: 425, height: 75
                                        )
                                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                }
                
                Spacer()
                     .frame(height: 10)
                
                NavigationLink(destination: BlueHeartVid()) {
                                    Text("or 'Skip' walk-through")
                                        .font(.system(size: 30))
                                        .fontWeight(.ultraLight)
                                        .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                        .frame(width: 300, height: 50)
                                        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .cornerRadius(25)
                    }
                
                Spacer()
                    .frame(height: 185)
            
                    }
            }
        }
    }



struct BlueModePage1_Previews : PreviewProvider {
    static var previews: some View {
   
        BlueModePage1()

    }
}




// ********************************************

struct BlueModePage2: View {

    var body: some View {

       // NavigationView{
        
        ZStack {
            Image("Transition3")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
                
            VStack {
                
                VStack {
                    
                   
                    HStack {
                        Spacer()
                            
                        
                        VStack {
                        Text("Duck in for some quiet time with your thoughts & memories or invite your friend to fix this mess!")
                        .italic()
                        .font(.system(size: 30))
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 375, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                            Spacer()
                                .frame(height: 20)
                            
                            Text("BlueMode")
                                .font(.system(size: 50))
                                .fontWeight(.ultraLight)
                                .foregroundColor(.blue)
                                .multilineTextAlignment(.center)
                                .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
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
                                Text("Because this hurts 💔")
                                    .italic()
                                    .font(.system(size: 60))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 350, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                              
                            
                            }
                            
                            
                        }
                        
                      
                    }
                }
 
                Spacer()
                   
                   
                NavigationLink(destination: BlueModePage3()) {
                                    Text("Next")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .frame(width: 325, height: 50)
                                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                    
                    
                    
                    
                }
            Spacer()
                .frame(height: 265)
        
        }
        }
    }
}




struct BlueModePaqe2_Previews : PreviewProvider {
    static var previews: some View {
   
        BlueModePage2()
    }
}




// ***********************************
struct BlueModePage3: View {

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
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 375, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                .padding()
                
            VStack {
//                Spacer()
                
                Spacer()
                    .frame(height: 325)
                
                Text("We know you're upset & hurt, wondering how it came to this after so much good from before.")
                .italic()
                .font(.system(size: 27))
                .fontWeight(.regular)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .multilineTextAlignment(.center)
                .frame(width: 425, height: 125, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Spacer()
                    .frame(height: 15)
                NavigationLink(destination: BlueModePage4()) {
                        Text("Maybe we can help.")
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


struct BlueModePage3_Previews : PreviewProvider {
    static var previews: some View {
        BlueModePage3()
    }
}

// **************************************

struct BlueModePage4: View {
    

    var body: some View {
        ZStack {

            Image("blueBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            ScrollView {
            VStack {
                
     
                Text("BlueMode")
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
                        
                        
                        NavigationLink(
                            destination: InfoViewPage1(),
                            label: {
                                Text("Ready? Let's try to set a time to meet or talk.")
                            })
                        .frame(width: 325, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                        .cornerRadius(25)
                        
                        
                        Spacer()
                            .frame(height: 15)
                        
                        
                        Text("(Note: You can access all BlueMode functions from BlueMode Chat.)")

                            .font(.system(size: 20))
                            .italic()
                            .frame(width: 300, height: 50, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))

                        Spacer()
                            .frame(height: 30)
                        
                        NavigationLink(destination: BlueModePage5()) {
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


 
struct BlueModePage4_Previews : PreviewProvider {
    static var previews: some View {
        BlueModePage4()
    }
}


// ***********************************

struct BlueModePage5: View {
    

    var body: some View {
        ZStack {

            Image("blueBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
               
               
                
                Text("BlueMode")
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
                        destination: InfoViewPage1(),
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
                        destination: InfoViewPage1(),
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
                            destination: InfoViewPage1(),
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
                     
                        NavigationLink(destination: BlueHeartVid()) {
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

struct BlueModePage5_Previews : PreviewProvider {
    static var previews: some View {
        BlueModePage5()
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

