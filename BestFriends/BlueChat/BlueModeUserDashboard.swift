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
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            
                VStack {
                    ScrollView {

                    Text("BlueMode")
                        .font(.system(size: 50))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                    Spacer().frame(height: 40)
                 
                        NavigationLink(
                            destination: BlueModePage1(),
                            label: {
                                Text("BlueMode Walk-through")
                            })
                            .frame(width: 325, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 5)
                                    )
                    
                    
                    
                    Spacer().frame(height: 20)
                       
                       
                     
                     
                    Spacer().frame(height: 45)
                
                        VStack {
                        
                          
                                
                            Text("Helping pull the two of you from this wreckage before your hearts become forever dented!")
                                .frame(width: 375, height: 150, alignment: .center)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                               // .font(.title)
                                .font(.system(size: 20))
                                .multilineTextAlignment(.center)
                                .frame(width: 385, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            
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
                            
                    
                          
                            Spacer()
                                .frame(height: 20)
                            
                            NavigationLink(
                                destination: SettingsView(),
                                label: {
                                    Text("Schedule Time to Talk")
                                })
                           
                                .frame(width: 325, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), lineWidth: 1)
                                        )
                          
                          
                            VStack {
                            
                                Spacer()
                                    .frame(height: 35)
                                
                                Text("Unlock Special Features")
                                   
                                    .font(.system(size: 32))
                                    .fontWeight(.ultraLight)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    
                                
                                Text("It remains forever hard to un-break a heart; remembering that in the end some things can never be taken back!")
                                  //  .italic()
                                    .font(.system(size: 20))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 375, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                                NavigationLink(
                                    destination: ShakingCoolView(),
                                    label: {
                                    Text("BlueMode ShakingCool SetUp")
                                        })
                                    .frame(width: 400, height: 50)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 25)
                                            .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 5)
                                        )
                                Spacer()
                                    .frame(height: 30)
                               
                                NavigationLink(
                                    destination: SmileNotesView(),
                                    label: {
                                        Text("Filtering SmileNotes - remembering the nice things")
                                            .frame(width: 400, height: 100, alignment: .center)
                                    })
                                    .frame(width: 400, height: 50)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 25)
                                            .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 5)
                                        )
                                
                               
                                
                                Spacer()
                                    .frame(height: 30)
                                
                                NavigationLink(
                                    destination: InfoViewPage1(),
                                    label: {
                                        Text("BlueMode stickers - saying the words you can't seem to say right now.")
                                            .frame(width: 400, height: 100, alignment: .center)
                                    })
                                    .frame(width: 400, height: 50)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 25)
                                            .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 5)
                                        )
                              
                                VStack {
                                   
                                  
                                    
                                    NavigationLink(
                                        destination: InfoViewPage1(),
                                        label: {
                                            Text(">>> We'll send push notifications instantly when your messages are read & new messages are posted in BlueMode Chat.")
                                                .frame(width: 350, height: 150, alignment: .center)
                                        })
                               
                                    NavigationLink(
                                        destination: InfoViewPage1(),
                                        label: {
                                            Text(">>> We 'time-stamp' when your messages are read - just so you know.")
                                                .frame(width: 350, height: 100, alignment: .center)
                                        })
                                 
                          
                                VStack {
                                    
                                    Spacer()
                                        .frame(height: 45)
                                    
                                    
                                    Text("Customize BlueMode Chat")
                                       
                                        .font(.system(size: 32))
                                        .fontWeight(.ultraLight)
                                        
                                        .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                                        .multilineTextAlignment(.center)
                                        .frame(width: 385, height: 50, alignment: .center
                                        )
                                    
                                    NavigationLink(
                                        destination: ChangeBackground(),
                                        label: {
                                            Text("BlueMode Chat Backgrounds")
                                        })
                                   
                                        .frame(width: 325, height: 50)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 25)
                                                .stroke(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), lineWidth: 1)
                                                )
                                    
                                
                                
                                    VStack {
                                 
                                   
                                        Spacer()
                                            .frame(height: 45)
                                        
                                        
                                        Text("Aditional Resources")
                                           
                                            .font(.system(size: 32))
                                            .fontWeight(.ultraLight)
                                            
                                            .foregroundColor(Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)))
                                            .multilineTextAlignment(.center)
                                            .frame(width: 385, height: 50, alignment: .center
                                       )
                           
                                        
                                        Link("In 'crisis' mode? Anonymously chat with trained teens on 'TeenLine'", destination: URL(string: "https://socialtechlabs.com/beta-team/")!)
                                            .frame(width: 325, height: 50)
                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 25)
                                                    .stroke(Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)), lineWidth: 1)
                                                    )
                                        
                                        Spacer()
                                            .frame(height: 45)
                                        
                                         Text("We'd Love to Hear from You")
                                            
                                             .font(.system(size: 32))
                                             .fontWeight(.ultraLight)
                                             .foregroundColor(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
                                             .multilineTextAlignment(.center)
                                             .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                             
                                             
                                         
                                     
                                         NavigationLink(
                                             destination: BlueSurvey(),
                                             label: {
                                                 Text("BlueMode Survey")
                                             })
                                             .frame(width: 325, height: 50)
                                             .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                             .overlay(
                                                 RoundedRectangle(cornerRadius: 25)
                                                     .stroke(Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)), lineWidth: 1)
                                                     )
                                     
                                   
                                    
                                    
                                    
                                    
                                    
                            
                            
                        }
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                    }
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
                
            }
                    
                    HStack {
                        
                        Spacer()
                        
                        Button(action: {
                            //Display invite menu
                            sessionManager.getCurrentAuthUser()

                          }) {
                              Image("inviteWhite")
                                .resizable()
                                .frame(width: 40, height: 40)
                            
                          }

                        Spacer()
                        
                               Image("messageIconWhite")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .scaledToFill()
                                .onTapGesture {
                                    sessionManager.showRooms()
                                }
                        
                        Spacer()
//
                               Image("whiteSmiley")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .scaledToFill()
                                .onTapGesture {
                                    sessionManager.showSmileNotes()
                                }

                    
                        
                        Spacer()
                        
                     
                    }
                    
        
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
        
        .navigationBarTitle("")
        .navigationBarHidden(true)
            
            
            }
        }
    }
//
//
//struct BlueModeUserDashboard_Previews : PreviewProvider {
//    static var previews: some View {
//        BlueModeUserDashboard()
    }
}





