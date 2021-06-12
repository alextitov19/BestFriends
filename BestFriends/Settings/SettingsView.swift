//
//  SettingsView.swift
//  BestFriends
//
//  Created by Alex Titov on 5/4/21.
//

import SwiftUI

struct SettingsView: View {

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

                    Text("Settings")
                        .font(.system(size: 50))
                        .fontWeight(.ultraLight)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                    Spacer().frame(height: 40)
                   
                    
                    Text("BestFriend Demo & Setup")
                        .font(.system(size: 32))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                       
                    NavigationLink(
                            destination: InfoViewPage1(),
                            label: {
                                Text("BestFriends Demo")
                            })
                            .frame(width: 325, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 5)
                                    )
                    
                        
                            
                            Spacer().frame(height: 20)
                           
                           
                       
                        VStack {
                       
                            NavigationLink(
                                destination: ShakingCoolView(),
                                label: {
                                    Text("ShakingCool SetUp")
                                })
                                .frame(width: 325, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 5)
                                        )
                   
                   
                    
                    
                        Spacer().frame(height: 45)
                       
                        
                        Text("Fight w/ Friend - Switch to BlueMode")
                            .font(.system(size: 32))
                            .fontWeight(.ultraLight)
                            .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 385, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                       
                            NavigationLink(
                                destination: BlueModePage1(),
                                label: {
                                    Text("BlueMode Demo & Setup")
                                })
                                .frame(width: 325, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), lineWidth: 5)
                                        )
                          
                            Spacer().frame(height: 45)
                           
                            Text("My Friends")
                                .font(.system(size: 32))
                                .fontWeight(.ultraLight)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.center)
                                .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                       
                           
                            
                            NavigationLink(
                                destination: AddFriends(),
                                label: {
                                    Text("Add Friends")
                                })
                                .frame(width: 325, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 5)
                                        )
                            Spacer().frame(height: 45)
                         
                            VStack {
                            
                            Text("Purchase Stickers & Gifs with Tokens")
                                .font(.system(size: 32))
                                .fontWeight(.ultraLight)
                                .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                .multilineTextAlignment(.center)
                                .frame(width: 375, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                           
                                NavigationLink(
                                    destination: Tokens(),
                                    label: {
                                        Text("How do Tokens work?")
                                    })
                                    
                                         .frame(width: 325, height: 50)
                                         .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                         .overlay(
                                             RoundedRectangle(cornerRadius: 25)
                                                 .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 1)
                                                 )
                        
                        VStack {
                      
                        Spacer()
                            .frame(height: 45)
                        
                        
                        Text("Privacy / Reporting Abuse")
                           
                            .font(.system(size: 32))
                            .fontWeight(.ultraLight)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            
                        
                        
                        
                        Link("Privacy Policy / Terms of Service", destination: URL(string: "https://socialtechlabs.com/privacy/")!)
                            .frame(width: 325, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 1)
                                    )
                        
                        Spacer()
                            .frame(height: 20)
                     
                    
                        Link("Report Objectional Content & Behavior", destination: URL(string: "https://socialtechlabs.com/report-objectionable-content-behavior/")!)
                            .frame(width: 325, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 1)
                                    )
                        
                       
                        
                        Spacer()
                            .frame(height: 20)
                     
                      
                        VStack {
                        
                            
                            Link("Report Copyright Infringment", destination: URL(string: "https://socialtechlabs.com/report-copyright-infringements/")!)
                                .frame(width: 325, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 1)
                                        )
                                
                            Spacer()
                                .frame(height: 45)
                            
                            
                            Text("Manage my Account")
                               
                                .font(.system(size: 32))
                                .fontWeight(.ultraLight)
                                
                                .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                .multilineTextAlignment(.center)
                                .frame(width: 385, height: 50, alignment: .center
                                )
                            
                         
                            NavigationLink(
                                destination: ManageMyFriends(),
                                label: {
                                    Text("Add, Block or Delete my Friends")
                                })
                           
                                .frame(width: 325, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 1)
                                        )
                            
                            Spacer()
                                .frame(height: 20)
                            
                            NavigationLink(
                                destination: MyAccount(),
                                label: {
                                    Text("Change Password / Email")
                                })
                                .frame(width: 325, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 1)
                                        )
                        
                            
                            
                            
                            VStack {
                            
                            Spacer()
                                .frame(height: 20)
                          
                                NavigationLink(
                                    destination: Notifications(),
                                    label: {
                                        Text("Notification Settings ***(Need B/E)")
                                    })
                                    .frame(width: 325, height: 50)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 25)
                                            .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 1)
                                            )
                                
                                Spacer()
                                    .frame(height: 20)
                                
                            NavigationLink(
                                destination: DeleteMyAccount(),
                                label: {
                                    Text("Delete Account ***(Not Built)")
                                })
                                .frame(width: 325, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 1)
                                        )
                                
                                
                                Spacer()
                                    .frame(height: 45)
                                
                                
                                Text("Customize my Chat Rooms")
                                   
                                    .font(.system(size: 32))
                                    .fontWeight(.ultraLight)
                                    
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 385, height: 50, alignment: .center
                                    )
                                
                                NavigationLink(
                                    destination: ChangeBackground(),
                                    label: {
                                        Text("Customize Chat Backgrounds")
                                    })
                               
                                    .frame(width: 325, height: 50)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 25)
                                            .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 1)
                                            )
                                
                                Spacer()
                                    .frame(height: 20)
                                
                                NavigationLink(
                                    destination: ChangeChatFontSize(),
                                    label: {
                                        Text("Chat Font Size *** (Not Built Yet)")
                                    })
                               
                                    .frame(width: 325, height: 50)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 25)
                                            .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 1)
                                            )
                                VStack {
                                 
                                    
                           
                                    
                                
                                    
                                   
                                        Spacer()
                                            .frame(height: 45)
                                        
                                        
                                        Text("Aditional Resources")
                                           
                                            .font(.system(size: 32))
                                            .fontWeight(.ultraLight)
                                            
                                            .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                            .multilineTextAlignment(.center)
                                            .frame(width: 385, height: 50, alignment: .center
                                       )
                           
                                    
                                    Link("In 'crisis' mode? Anonymously chat with trained teens on 'TeenLine'", destination: URL(string: "https://teenlineonline.org/")!)
                                        .frame(width: 325, height: 50)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 25)
                                                .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 1)
                                                )
                                    
                                    
                                    Spacer()
                                        .frame(height: 45)
                                    
                                    
                                    
                                    Text("We'd Love to Hear from You")
                                       
                                        .font(.system(size: 32))
                                        .fontWeight(.ultraLight)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .multilineTextAlignment(.center)
                                        .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        
                                        
                                    
                                    
                                        NavigationLink(
                                            destination: ReviewPopup(),
                                            label: {
                                                Text("Are you enjoying BestFriends?")
                                            })
                                            .frame(width: 325, height: 50)
                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 25)
                                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 1)
                                                    )
                                 
                                   
                                    Spacer()
                                        .frame(height: 100)
                                    
                                    
                                    
                                    
                            
                            
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
}
//
//struct SettingsView_Previews : PreviewProvider {
//    static var previews: some View {
//        SettingsView()
//    }
//}



}
}
