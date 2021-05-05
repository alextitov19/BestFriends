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
        NavigationView{
        ZStack {
            
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
              
            VStack {
                    
                    HStack {
                        VStack {
                                                   
                            Spacer()
                                .frame(height: 155)
                                                    
                            Image("Penguin Sticker 38")
                                .resizable()
                                .frame(width: 175, height: 175)
                                .scaledToFill()
                                                    
                                }
                        VStack {
                       
                            ZStack {
                                
                                
                                Image("ChatBubbleTrans")
                                    .resizable()
                                    .frame(width: 300, height: 300)
                                    .scaledToFill()
                            
                                Text("ShakingCool - finding smiles everyday")
                                    .italic()
                                    .font(.system(size: 25))
                                    .fontWeight(.ultraLight)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }
                            Spacer()
                                .frame(height: 125)
                        }
                    }
                    
                
                    
                    Text("Just shake your phone & your 3 favorite pics that always make you smile pop up")
                       
                        .font(.system(size: 35))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 400, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                      
                    
                    Spacer()
                        .frame(height: 20)
                   
                NavigationLink(destination: InfoViewPage2()) {
                                    Text("Next")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                        .frame(width: 200, height: 50)
                                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                    }
               }
            }
        }
               
       
        }
    }





// ************************************************
struct InfoViewPage2: View {

    var body: some View {
        NavigationView{
        ZStack {
            
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
                
            VStack {
                    
                    HStack {
                        VStack {
                                                   
                            Spacer()
                                .frame(height: 155)
                                                    
                            Image("Penguin Sticker 38")
                                .resizable()
                                .frame(width: 175, height: 175)
                                .scaledToFill()
                                                    
                                }
                        VStack {
                       
                            ZStack {
                                
                                
                                Image("ChatBubbleTrans")
                                    .resizable()
                                    .frame(width: 300, height: 300)
                                    .scaledToFill()
                            
                                Text("SmileNotes - can't find that 'special' message.")
                                    .italic()
                                    .font(.system(size: 25))
                                    .fontWeight(.ultraLight)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }
                            Spacer()
                                .frame(height: 125)
                        }
                    }
                    
                
                    
                    Text("Just long-tap 'special' messages. We save & re-deliver them next time we see you.")
                       
                        .font(.system(size: 35))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 400, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                      
                    
                    Spacer()
                        .frame(height: 20)
                   
                NavigationLink(destination: InfoViewPage2()) {
                                    Text("Next")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                        .frame(width: 200, height: 50)
                                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                    }
               }
            }
        }
               
       
        }
    }




// ************************************************
struct InfoViewPage3: View {

    var body: some View {
        NavigationView{
    
  
        ZStack {
            
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
                
            VStack {
                    
                    HStack {
                        VStack {
                                                   
                            Spacer()
                                .frame(height: 155)
                                                    
                            Image("Penguin Sticker 38")
                                .resizable()
                                .frame(width: 175, height: 175)
                                .scaledToFill()
                                                    
                                }
                        VStack {
                       
                            ZStack {
                                
                                
                                Image("ChatBubbleTrans")
                                    .resizable()
                                    .frame(width: 300, height: 300)
                                    .scaledToFill()
                            
                                Text("Your protected from 'Phone Grabs' & 'Cancel Culture'.")
                                    .italic()
                                    .font(.system(size: 25))
                                    .fontWeight(.ultraLight)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }
                            Spacer()
                                .frame(height: 125)
                        }
                    }
                    
                
                    
                    Text("Hide Chat - Restroe w/ Secret PIN. All Chat messages blocked from screen-shots.")
                       
                        .font(.system(size: 35))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 400, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                      
                    
                    Spacer()
                        .frame(height: 20)
                   
                   
             
                NavigationLink(destination: InfoViewPage2()) {
                                    Text("Next")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                        .frame(width: 200, height: 50)
                                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                    }
               }
            }
        }
               
       
        }
    }



// ************************************************
struct InfoViewPage4: View {

    var body: some View {
        NavigationView{
    
  
        ZStack {
            
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
                
            VStack {
                    
                    HStack {
                        VStack {
                                                   
                            Spacer()
                                .frame(height: 155)
                                                    
                            Image("Penguin Sticker 38")
                                .resizable()
                                .frame(width: 175, height: 175)
                                .scaledToFill()
                                                    
                                }
                        VStack {
                       
                            ZStack {
                                
                                
                                Image("ChatBubbleTrans")
                                    .resizable()
                                    .frame(width: 300, height: 300)
                                    .scaledToFill()
                            
                                Text("Just had a huge fight with your friend.")
                                    .italic()
                                    .font(.system(size: 25))
                                    .fontWeight(.ultraLight)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }
                            Spacer()
                                .frame(height: 125)
                        }
                    }
                    
                
                    
                    Text("Just switch to 'Dark' mode unlocking special features helping you fix this mess.")
                       
                        .font(.system(size: 35))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 400, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                      
                    
                    Spacer()
                        .frame(height: 20)
                   
                   
                NavigationLink(destination: InfoViewPage2()) {
                                    Text("Next")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                        .frame(width: 200, height: 50)
                                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                    }
               }
            }
        }
               
       
        }
    }




// ************************************************
struct InfoViewPage5: View {

    var body: some View {
        NavigationView{
    
  
        ZStack {
            
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
                
            VStack {
                    
                    HStack {
                        VStack {
                                                   
                            Spacer()
                                .frame(height: 155)
                                                    
                            Image("Penguin Sticker 38")
                                .resizable()
                                .frame(width: 175, height: 175)
                                .scaledToFill()
                                                    
                                }
                        VStack {
                       
                            ZStack {
                                
                                
                                Image("ChatBubbleTrans")
                                    .resizable()
                                    .frame(width: 300, height: 300)
                                    .scaledToFill()
                            
                                Text("With BestFriends you're never alone - ever again!")
                                    .italic()
                                    .font(.system(size: 25))
                                    .fontWeight(.ultraLight)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }
                            Spacer()
                                .frame(height: 125)
                        }
                    }
                    
                
                    
                    Text("When entering BestFriends a lightbeam shoots from your phone to everyone, everyhere on BestFriends. That are their lightbeams you see on your landingpage.")
                       
                        .font(.system(size: 35))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 400, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                      
                    
                    Spacer()
                        .frame(height: 20)
                   
                   
                NavigationLink(destination: InfoViewPage2()) {
                                    Text("Next")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                        .frame(width: 200, height: 50)
                                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                    }
               }
            }
        }
               
       
        }
    }




// ************************************************
struct InfoViewPage6: View {

    var body: some View {
        NavigationView{
    
  
        ZStack {
            
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
                
            VStack {
                    
                    HStack {
                        VStack {
                                                   
                            Spacer()
                                .frame(height: 155)
                                                    
                            Image("Penguin Sticker 38")
                                .resizable()
                                .frame(width: 175, height: 175)
                                .scaledToFill()
                                                    
                                }
                        VStack {
                       
                            ZStack {
                                
                                
                                Image("ChatBubbleTrans")
                                    .resizable()
                                    .frame(width: 300, height: 300)
                                    .scaledToFill()
                            
                                Text("Having a really bad day. Need your friends, Now!")
                                    .italic()
                                    .font(.system(size: 25))
                                    .fontWeight(.ultraLight)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }
                            Spacer()
                                .frame(height: 125)
                        }
                    }
                    
                
                    
                    Text("Just quickly tap their 'stars' on Homepage and we find them and get their availability for you")
                       
                        .font(.system(size: 35))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 400, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                      
                    
                    Spacer()
                        .frame(height: 20)
                   
                NavigationLink(destination: InfoViewPage2()) {
                                    Text("Next")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                        .frame(width: 200, height: 50)
                                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                    }
               }
            }
        }
               
       
        }
    }




struct InfoViewPage1_Previews : PreviewProvider {
    static var previews: some View {
   
        InfoViewPage1()
        InfoViewPage2()
        InfoViewPage3()
        InfoViewPage4()
        InfoViewPage5()
        InfoViewPage6()
       
    }
}
