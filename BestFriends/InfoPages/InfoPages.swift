//
//  InfoPages.swift
//  BestFriends
//
//  Created by Robert Roe on 5/5/21.
//

//import Foundation

import Amplify
import SwiftUI

struct InfoViewPage1: View {

    var body: some View {
        
        ZStack {
            Image("Transition3")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                
                Spacer()
                    .frame(height: 100)
                
                Text("Welcome to")
                     .italic() .italic()
                     .font(.system(size: 25))
                     .fontWeight(.regular)
                     .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                     .multilineTextAlignment(.center)
                     .frame(width: 275, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Spacer()
                    .frame(height: 20)

                Text("BestFriends")
                    .font(.system(size: 60))
                     .fontWeight(.regular)
                     .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                     .multilineTextAlignment(.center)
                     .frame(width: 350, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
                    .frame(height: 20)
                
                Text("the 'positivity' app")
                    .font(.system(size: 30))
                     .fontWeight(.regular)
                     .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                     .multilineTextAlignment(.center)
                     .frame(width: 275, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
                Spacer()
                    .frame(height: 225)
                
                VStack {
                
                    NavigationLink(destination: InfoViewPage2()) {
                                        Text("Show me BestFriends")
                                            .font(.title)
                                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                            .frame(width: 400, height: 50)
                                            .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                            .cornerRadius(25)
                        }
                    Spacer()
                        .frame(height: 20)

                    HStack {
                    
                    
                    NavigationLink(destination: SettingsView()) {
                                        Text("Later")
                                            .font(.title)
                                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                            .frame(width: 100, height: 30)
                                            .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                            .cornerRadius(25)
                    
                    
                    Text("demo also in settings")
                        .italic()
                        .font(.system(size: 20))
                         .fontWeight(.regular)
                         .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                         .multilineTextAlignment(.center)
                        .frame(width: 190, height: 50, alignment: .trailing)
                   
                   
                        Spacer()
                            .frame(height: 10)
                    }
                    }
                 
                    
                   
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
                    
                HStack {
                    VStack {
                        Spacer()
                            .frame(height: 125)
                                                
                        Image("Penguin Sticker 32")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .scaledToFill()
                                                
                    }
                    
                    VStack {
                        ZStack {
                            Image("ChatBubbleTrans")
                                .resizable()
                                .frame(width: 300, height: 175)
                                .scaledToFill()
                        
                            Text("With BestFriends you're never alone - ever again!")
                                .italic()
                                .font(.system(size: 20))
                                .fontWeight(.ultraLight)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                        
                        Spacer()
                            .frame(height: 75)
                    }
                }
 
                Text("When entering BestFriends a lightbeam shoots from your phone to everyone, everyhere on BestFriends. That are their lightbeams you see on your landingpage.")
                   
                    .font(.system(size: 25))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                    
                Spacer()
                    .frame(height: 30)
                   
                   
                NavigationLink(destination: InfoViewPage3()) {
                                    Text("Next")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                        .frame(width: 200, height: 50)
                                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                }
            Spacer()
                .frame(height: 95)
        
        }
        }

    
   
   
    }
}

        



struct InfoViewPage3: View {

    var body: some View {
        ZStack {
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
              
            VStack {
                HStack {
                    VStack {
                        Spacer()
                            .frame(height: 125)
                                                    
                            Image("Penguin Sticker 38")
                                .resizable()
                                .frame(width: 150, height: 150)
                                .scaledToFill()
                                                    
                                }
                        VStack {
                       
                            ZStack {
                                
                                
                                Image("ChatBubbleTrans")
                                    .resizable()
                                    .frame(width: 300, height: 175)
                                    .scaledToFill()
                            
                                Text("BestFriends is about positivity")
                                    .italic()
                                    .font(.system(size: 20))
                                    .fontWeight(.ultraLight)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }
                            
                            Spacer()
                                .frame(height: 70)
                        }
                    }
                    
                Spacer()
                    .frame(height: 70)
                    
                    Text("We have a zero tolorane policy concerning sending hurtful messages to your friends. Please play nicely!")
                       
                        .font(.system(size: 25))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 385, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                      
                    
                Spacer()
                    .frame(height: 30)
                   
                NavigationLink(destination: InfoViewPage4()) {
                                    Text("Next")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                        .frame(width: 200, height: 50)
                                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                    
                  
                    }
                Spacer()
                    .frame(height: 75)
            
            }
            }

       
       
        }
    }








//***************************************
struct InfoViewPage4: View {

    var body: some View {
        ZStack {
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
              
            VStack {
                HStack {
                    VStack {
                        Spacer()
                            .frame(height: 125)
                                                    
                            Image("Penguin2")
                                .resizable()
                                .frame(width: 150, height: 150)
                                .scaledToFill()
                    }
                    
                    VStack {
                   
                        ZStack {
                            
                            
                            Image("ChatBubbleTrans")
                                .resizable()
                                .frame(width: 300, height: 175)
                                .scaledToFill()
                        
                            Text("ShakingCool - finding smiles everyday")
                                .italic()
                                .font(.system(size: 20))
                                .fontWeight(.ultraLight)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                        
                        Spacer()
                            .frame(height: 75)
                    }
                }
                    
                Spacer()
                    .frame(height: 70)
                    
                Text("Just shake your phone and your 3 favorite pics that always make you smile ... Pop up!")
                   
                    .font(.system(size: 25))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 385, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                  
                Spacer()
                    .frame(height: 35)
                
                
                Text(" When a friend adds you to BestFrineds send them a pic you want them to put in their ShakingCool.")
                   
                    .font(.system(size: 25))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 385, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
               
                Spacer()
                    .frame(height: 50)
                   
                NavigationLink(destination: InfoViewPage5()) {
                                    Text("Next")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                        .frame(width: 200, height: 50)
                                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                    
                  
                    }
                
                Spacer()
                    .frame(height: 75)
            }
        }
    }
}





// ************************************************
struct InfoViewPage5: View {

    var body: some View {
        
        ZStack {
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
                
            VStack {
                HStack {
                    VStack {
                        Spacer()
                            .frame(height: 125)
                                                
                        Image("Penguin1")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .scaledToFill()
                    }
                    
                    VStack {
                        ZStack {
                            Image("ChatBubbleTrans")
                                .resizable()
                                .frame(width: 300, height: 175)
                                .scaledToFill()
                        
                            Text("SmileNotes - can't find that 'special' message.")
                                .italic()
                                .font(.system(size: 20))
                                .fontWeight(.ultraLight)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                       
                        Spacer()
                            .frame(height: 75)
                    }
                }
                
                Spacer()
                    .frame(height: 70)
                
                Text("STOP SCROLLING. Just long-tap special messages when you get them. We save them for the next time we see you.")
                   
                    .font(.system(size: 25))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 385, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                Spacer()
                    .frame(height: 50)
                   
                   
                NavigationLink(destination: InfoViewPage6()) {
                                    Text("Next")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                        .frame(width: 200, height: 50)
                                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                }
                Spacer()
                    .frame(height: 95)
        
        }
            
        }
   
    
   
   
    }
}




// ************************************************

struct InfoViewPage6: View {

    var body: some View {
        ZStack {
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
                
            VStack {
                HStack {
                    VStack {
                                               
                        Spacer()
                            .frame(height: 125)
                                                
                        Image("Penguin Sticker 18")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .scaledToFill()
                                                
                    }
                    
                    VStack {
                        ZStack {
                            Image("ChatBubbleTrans")
                                .resizable()
                                .frame(width: 300, height: 175)
                                .scaledToFill()
                        
                            Text("Your protected from 'Phone Grabs' & 'Cancel Culture'.")
                                .italic()
                                .font(.system(size: 20))
                                .fontWeight(.ultraLight)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                        
                        Spacer()
                            .frame(height: 75)
                    }
                }
                    
                Text("Hide your Chat messages from prying eyes. Only you can get them back with your 'secret' PIN.")
                    .font(.system(size: 25))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Text("You won't see your chat messages splashed all over IG or Snap. BestFriends blocks screen-shots in Chat.")
                   
                    .font(.system(size: 25))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                Spacer()
                    .frame(height: 10)
                
                NavigationLink(destination: InfoViewPage7()) {
                                    Text("Next")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                        .frame(width: 200, height: 50)
                                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                    }
                
                Spacer()
                    .frame(height: 130)
        
            }
        }
    }
}


struct InfoViewPage7: View {

    var body: some View {
  
        ZStack {
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                    HStack {
                        VStack {
                            Spacer()
                                .frame(height: 125)
                                                    
                            Image("Penguin Sticker 24")
                                .resizable()
                                .frame(width: 150, height: 150)
                                .scaledToFill()
                                                    
                                }
                        VStack {
                       
                            ZStack {
                                
                                
                                Image("ChatBubbleTrans")
                                    .resizable()
                                    .frame(width: 300, height: 175)
                                    .scaledToFill()
                            
                                Text("Just had a fight with your friend.")
                                    .italic()
                                    .font(.system(size: 20))
                                    .fontWeight(.ultraLight)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }
                            
                            Spacer()
                                .frame(height: 70)
                           
                        }
                    }
                    
               
                    
                    Spacer()
                        .frame(height: 30)
                   
                Text("From Homepage just 'long-tap' your friends 'name' and select 'BlueMode' unlocking special features helping you fix this mess.")
                    .italic()
                    .font(.system(size: 25))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                
                Spacer()
                    .frame(height: 65)
                NavigationLink(destination: SettingsView()) {
                                    Text("Next")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                        .frame(width: 200, height: 50)
                                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                    }
               
                Spacer()
                    .frame(height: 95)
        
            }
        }
    }
}




// ***********************************************




// ************************************************


// ************************************************

struct InfoViewPags_Previews : PreviewProvider {
    static var previews: some View {
        InfoViewPage1()
        InfoViewPage2()
        InfoViewPage3()
        InfoViewPage4()
        InfoViewPage5()
        InfoViewPage6()
        InfoViewPage7()
        
        }
    }





