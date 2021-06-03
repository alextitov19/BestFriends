//
//  BlueModePages.swift
//  BestFriends
//
//  Created by Social Tech on 5/22/21.
//

import Amplify
import SwiftUI

struct BlueModePage1: View {

    var body: some View {
     //   NavigationView{
    
  
        ZStack {
            
            
            Image("AriC2")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
                
            VStack {
                       
                    ZStack {
                        Image("ChatBubbleTrans")
                            .resizable()
                            .frame(width: 500, height: 285)
                            .scaledToFill()
                    
                        Text("Just had a huge fight with your best friend or significant other?")
                            .italic()
                            .font(.system(size: 35))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 400, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
            
                    
               
                    
                    Spacer()
                   
              
                    
                
             
               
                
                NavigationLink(destination: BlueModePage2()) {
                                    Text("Yes, unlock special features for me to help fix this mess.")
                                        .font(.system(size: 30))
                                        .fontWeight(.ultraLight)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .frame(width: 400, height: 75)
                                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                }
                
                Spacer()
                     .frame(height: 20)
                
                NavigationLink(destination: BlueModePage6()) {
                                    Text("Skip Walk-through")
                                        .font(.system(size: 30))
                                        .fontWeight(.ultraLight)
                                        .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                        .frame(width: 300, height: 50)
                                        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .cornerRadius(25)
                    }
                
                Spacer()
                    .frame(height: 130)
            
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
                        Text("introducing ...")
                        .italic() .italic()
                        .font(.system(size: 25))
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 275, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                
                    Text("BlueMode")
                        
                        .font(.system(size: 45))
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 275, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                        
                        Spacer()
                            .frame(width: 50)
                        
                    }
                    
                    
                    
                    Spacer()
                        .frame(height: 0)
                
                    
                HStack {
                    VStack {
                        Spacer()
                            .frame(height: 125)
                                                
                        Image("Penguin Sticker 32")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .scaledToFill()
                                                
                    }
                    
                  
                        
                        
                        
                        ZStack {
                            Image("ChatBubbleTrans")
                                .resizable()
                                .frame(width: 350, height: 150)
                                .scaledToFill()
                        
                            
                            VStack {
                                Text("Helping you fix this mess!")
                                    .italic() .italic()
                                    .font(.system(size: 37))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 275, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                            
                                Spacer()
                                    .frame(height: 7)
                            
                            }
                            
                            
                        }
                        
                        Spacer()
                            .frame(height: 75)
                    }
                }
 
                Spacer()
                    .frame(height: 250)
                   
                   
                NavigationLink(destination: BlueModePage3()) {
                                    Text("Next")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .frame(width: 325, height: 50)
                                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                    
                    
                    
                    
                }
            Spacer()
                .frame(height: 150)
        
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
                        .frame(width: 500, height: 275)
                        .scaledToFill()
                    
                    Text("Before you start 'unfriending' each other on IG & Snap, or repost private messages that will be hurtful - let's try 'BlueMode'.")
                        .italic()
                        .font(.system(size: 27))
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 375, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                .padding()
                
            VStack {
                Spacer()
                
                Text("We can help.")
                    .font(.system(size: 45))
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 385, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                NavigationLink(destination: BlueModePage4()) {
                        Text("Ok, what should I do first?")
                            .font(.system(size: 30))
                            .fontWeight(.ultraLight)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .frame(width: 375, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)
           
                    }
                
                Spacer()
                    .frame(height: 180)
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
            
                   // try below
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
                            .frame(height: 20)
                        
                    

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
                        .frame(height: 75)
                
                        
                        
                        
                        
                        
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
            
               
                
               
            
                Spacer().frame(height: 25)
               
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
                            Text("Upload images of you two from happier days to your 'FRIEND'S' ShakingCool activating good vibes!")
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
                            Text("View all the SmileNotes from your friend - rembering nice things that your were told.")
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
                            Text("Unlock special stickers saying the words you can't seem to say right now.")
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
                                Text("Yep, all this waiting to hear back sucks. We'll send push notifications once your messages are read or new messages are posted in BlueMode.")
                                    .frame(width: 400, height: 100, alignment: .center)
                            })
                        .frame(width: 400, height: 75, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                        .cornerRadius(25)
                        
                     
                        Text("Ready to get started - take a breath.")
                          //  .italic()
                            .font(.system(size: 25))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 425, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                     
                        NavigationLink(destination: BlueModePage6()) {
                                            Text("Let's do this >>>")
                                                .font(.system(size: 30))
                                                .fontWeight(.ultraLight)
                                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                .frame(width: 350, height: 50)
                                                .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                                .cornerRadius(25)
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
}

// ***************************************


struct BlueModePage6: View {

    var body: some View {
        NavigationView{
    
  
        ZStack {
            
            
            Image("Transition")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
                
            VStack {
                       
                    ZStack {
                        Image("ChatBubbleTrans")
                            .resizable()
                            .frame(width: 475, height: 250)
                            .scaledToFill()
                    
                        Text("You'll find icons for all these features in BlueMode Chat.")
                            .italic()
                            .font(.system(size: 35))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 300, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
    
                    
               
                    
                    Spacer()
                   
              
                    
                
               Spacer()
                    .frame(height: 3)
               
                
                
                NavigationLink(destination: SettingsView()) {
                                    Text("Ok, take me to BlueMode Chat")
                                        .font(.system(size: 30))
                                        .fontWeight(.ultraLight)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .frame(width: 400, height: 50)
                                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                    }
                
                Spacer()
                    .frame(height: 185)
            
                    }
            }
        }
    }
}


struct BlueModePaqe6_Previews : PreviewProvider {
    static var previews: some View {
   
        BlueModePage6()

        
    }
}

