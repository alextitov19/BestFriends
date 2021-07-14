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
                    
                    NavigationLink(destination: InfoViewPage2()) {
                        Text("Ok, fine.")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .frame(width: 200, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)
                   
                   
                        
                    
                    }
                    
                    Spacer()
                        .frame(height: 20)
                    
                }
            }
        }
        
    }
}



struct InfoViewPage2: View {
    
    var body: some View {
        
        ZStack {
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                
                
                Text("You're never alone.")
                    .font(.system(size: 35))
                    .italic()
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
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
                    
                    NavigationLink(destination: InfoViewPage3()) {
                        Text("That's cool")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .frame(width: 250, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)
                    }
                    
                    Spacer()
                        .frame(height: 20)
                    
                }
            }
        }
    }
}




struct InfoViewPage3: View {
    
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
                    
                    NavigationLink(destination: InfoViewPage4()) {
                        Text("Next")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .frame(width: 250, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)
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
    
    var body: some View {
        
        ZStack {
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                Text("SmileNotes")
                    .font(.system(size: 40))
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 375, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
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
                
                    
                    NavigationLink(destination: InfoViewPage5()) {
                        Text("Long-tap to save message >")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .frame(width: 400, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)
                        
                        
                    }
                    
                }
                
                Spacer()
                    .frame(height: 20)
                
            }
        }
    }
}






//***************************************

struct InfoViewPage5: View {
    
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
                
                
                
                NavigationLink(destination: InfoViewPage6()) {
                    Text("Next")
                        .font(.title)
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 250, height: 50)
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
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
    
    var body: some View {
        NavigationView{
            ZStack {
                
                Image("SignUpPinBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()


                VStack {
                        Text("Adding Your Friends.")
                            
                            .font(.system(size: 40))
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
                    
                    NavigationLink(destination: SettingsView()) {
                        Text("Let's get started >")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .frame(width: 350, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)
                     
                      
                    }
            }
        }
    }
}

}


struct InfoViewPags_Previews : PreviewProvider {
    static var previews: some View {
        InfoViewPage1()
        InfoViewPage2()
        InfoViewPage3()
        InfoViewPage4()
        InfoViewPage5()
        InfoViewPage6()
        
    }
}




//struct InfoViewPage6: View {
//
//    var body: some View {
//        ZStack {
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//
//            VStack {
//                HStack {
//                    VStack {
//
//                        Spacer()
//                            .frame(height: 125)
//
//                        Image("Penguin Sticker 18")
//                            .resizable()
//                            .frame(width: 150, height: 150)
//                            .scaledToFill()
//
//                    }
//
//                    VStack {
//                        ZStack {
//                            Image("ChatBubbleTrans")
//                                .resizable()
//                                .frame(width: 300, height: 175)
//                                .scaledToFill()
//
//                            Text("Your protected from 'Phone Grabs' & 'Cancel Culture'.")
//                                .italic()
//                                .font(.system(size: 20))
//                                .fontWeight(.ultraLight)
//                                .foregroundColor(.white)
//                                .multilineTextAlignment(.center)
//                                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                        }
//
//                        Spacer()
//                            .frame(height: 75)
//                    }
//                }
//
//                Text("Hide your Chat messages from prying eyes. Only you can get them back with your 'secret' PIN.")
//                    .font(.system(size: 25))
//                    .fontWeight(.regular)
//                    .foregroundColor(.white)
//                    .multilineTextAlignment(.center)
//                    .frame(width: 400, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
//                Text("You won't see your chat messages splashed all over IG or Snap. BestFriends blocks screen-shots in Chat.")
//
//                    .font(.system(size: 25))
//                    .fontWeight(.regular)
//                    .foregroundColor(.white)
//                    .multilineTextAlignment(.center)
//                    .frame(width: 400, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
//                Spacer()
//                    .frame(height: 10)
//
//                NavigationLink(destination: InfoViewPage7()) {
//                    Text("Next")
//                        .font(.title)
//                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
//                        .frame(width: 200, height: 50)
//                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
//                        .cornerRadius(25)
//                }
//
//                Spacer()
//                    .frame(height: 130)
//
//            }
//        }
//    }
//}

//
//struct InfoViewPage7: View {
//
//    var body: some View {
//
//        ZStack {
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//
//            VStack {
//                HStack {
//                    VStack {
//                        Spacer()
//                            .frame(height: 125)
//
//                        Image("Penguin Sticker 24")
//                            .resizable()
//                            .frame(width: 150, height: 150)
//                            .scaledToFill()
//
//                    }
//                    VStack {
//
//                        ZStack {
//
//
//                            Image("ChatBubbleTrans")
//                                .resizable()
//                                .frame(width: 300, height: 175)
//                                .scaledToFill()
//
//                            Text("Just had a fight with your friend.")
//                                .italic()
//                                .font(.system(size: 20))
//                                .fontWeight(.ultraLight)
//                                .foregroundColor(.white)
//                                .multilineTextAlignment(.center)
//                                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                        }
//
//                        Spacer()
//                            .frame(height: 70)
//
//                    }
//                }
//
//
//
//                Spacer()
//                    .frame(height: 30)
//
//                Text("From Homepage just 'long-tap' your friends 'name' and select 'BlueMode' unlocking special features helping you fix this mess.")
//                    .italic()
//                    .font(.system(size: 25))
//                    .fontWeight(.regular)
//                    .foregroundColor(.white)
//                    .multilineTextAlignment(.center)
//                    .frame(width: 400, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
//
//                Spacer()
//                    .frame(height: 65)
//                NavigationLink(destination: SettingsView()) {
//                    Text("Next")
//                        .font(.title)
//                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
//                        .frame(width: 200, height: 50)
//                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
//                        .cornerRadius(25)
//                }
//
//                Spacer()
//                    .frame(height: 95)
//
//            }
//        }
//    }
//}
//
//


// ***********************************************




// ************************************************


// ************************************************



//
//struct InfoViewPage6: View {
//
//    @EnvironmentObject var sessionManager: SessionManager
//
//    var body: some View {
//        NavigationView{
//            ZStack {
//
//                Image("SignUpPinBackground")
//                    .resizable()
//                    .ignoresSafeArea()
//                    .scaledToFill()
//
//
//                VStack {
//                    Text("How do I Add a Friend?")
//
//                        .font(.system(size: 35))
//                        .fontWeight(.regular)
//                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                        .multilineTextAlignment(.center)
//                        .frame(width: 375, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
//                    Spacer()
//                        .frame(height: 15)
//
//
//                    Text("Step 1")
//
//                        .font(.system(size: 22))
//                        .fontWeight(.regular)
//
//                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.9791358113, blue: 0, alpha: 1)))
//                        .multilineTextAlignment(.center)
//                        .frame(width: 375, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
//
//                    Text("Select [Get my QR code]")
//
//                        .font(.system(size: 22))
//                        .fontWeight(.regular)
//                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                        .multilineTextAlignment(.center)
//                        .frame(width: 375, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
//
//                    Spacer()
//                        .frame(height: 15)
//
//
//                    Text("Step 2")
//
//                        .font(.system(size: 22))
//                        .fontWeight(.regular)
//                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.9791358113, blue: 0, alpha: 1)))
//
//                        .multilineTextAlignment(.center)
//                        .frame(width: 375, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
//                    Text("Screen-shot your QR code and text image to your friend.")
//
//                        .font(.system(size: 22))
//                        .fontWeight(.regular)
//                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//
//                        .multilineTextAlignment(.center)
//                        .frame(width: 300, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
//
//                    Spacer()
//                        .frame(height: 15)
//
//                    VStack {
//
//                        Text("Step 3")
//
//                            .font(.system(size: 22))
//                            .fontWeight(.regular)
//                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.9791358113, blue: 0, alpha: 1)))
//
//                            .multilineTextAlignment(.center)
//                            .frame(width: 375, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
//                        Text("Ask friend to save QR image to their gallery.")
//
//                            .font(.system(size: 22))
//                            .fontWeight(.regular)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//
//                            .multilineTextAlignment(.center)
//                            .frame(width: 275, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
//
//
//
//                        Spacer()
//                            .frame(height: 15)
//
//
//                        Text("Step 4")
//
//                            .font(.system(size: 22))
//                            .fontWeight(.regular)
//                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.9791358113, blue: 0, alpha: 1)))
//
//                            .multilineTextAlignment(.center)
//                            .frame(width: 375, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
//                        Text("Ask friend to select [My Gallery] and tap the image of your QR code.")
//
//                            .font(.system(size: 22))
//                            .fontWeight(.regular)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .multilineTextAlignment(.center)
//                            .frame(width: 375, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
//                        Spacer()
//                            .frame(height: 5)
//
//                        VStack {
//
//                            NavigationLink(destination: InfoViewPage6()) {
//                                Text("Let's Add Your 1st Friend >")
//                                    .font(.title)
//                                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
//                                    .frame(width: 435, height: 50)
//                                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
//                                    .cornerRadius(25)
//
//
//                            }
//
//
//                            Spacer()
//                                .frame(height: 100)
//
//                        }
//                    }
//                }
//            }
//        }
//    }
//}
//
//
//
//
//
//
//
//
//
