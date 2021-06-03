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
                   
                    
                    Text("BestFriend 'Feature Walk-throughs' and Setups")
                        .font(.system(size: 32))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 385, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                       
                    NavigationLink(
                            destination: InfoViewPage1(),
                            label: {
                                Text("BestFriends App Walk-through")
                            })
                            .frame(width: 325, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 5)
                                    )
                    
                    
                    Spacer().frame(height: 20)
                   
                   
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
                    VStack {
                    
                    
                        Spacer().frame(height: 20)
                       
                       
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
                      
                       
                        Text("We'd Love to Hear from You")
                           
                            .font(.system(size: 32))
                            .fontWeight(.ultraLight)
                            .foregroundColor(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            
                        
                        
                            NavigationLink(
                                destination: EnjoyingBestFriends(),
                                label: {
                                    Text("Are you enjoying BestFriends?")
                                })
                                .frame(width: 325, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)), lineWidth: 1)
                                        )
                        
                        
                        Spacer()
                            .frame(height: 45)
                        
                        
                        
                        Text("Be a BestFriends Beta-tester")
                            .font(.system(size: 32))
                            .fontWeight(.ultraLight)
                            .foregroundColor(Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                
                    
                    VStack {
                        
                            Link("Work with our staff making BestFriends better!", destination: URL(string: "https://socialtechlabs.com/beta-team/")!)
                                .frame(width: 325, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)), lineWidth: 1)
                                        )
                        
                       
                        
                        Spacer()
                            .frame(height: 45)
                        
                        
                        Text("Privacy / Reporting Abuse")
                           
                            .font(.system(size: 32))
                            .fontWeight(.ultraLight)
                            .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            
                        
                        
                        
                        Link("Privacy Policy / Terms of Service", destination: URL(string: "https://socialtechlabs.com/privacy/")!)
                            .frame(width: 325, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 1)
                                    )
                        
                        Spacer()
                            .frame(height: 20)
                     
                    
                        Link("Report Objectional Content & Behavior", destination: URL(string: "https://socialtechlabs.com/report-objectionable-content-behavior/")!)
                            .frame(width: 325, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 1)
                                    )
                        
                       
                        
                        Spacer()
                            .frame(height: 20)
                     
                      
                        VStack {
                        
                            
                            Link("Report Copyright Infringment", destination: URL(string: "https://socialtechlabs.com/report-copyright-infringements/")!)
                                .frame(width: 325, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 1)
                                        )
                                
                            Spacer()
                                .frame(height: 45)
                            
                            
                            Text("Manage my Account")
                               
                                .font(.system(size: 32))
                                .fontWeight(.ultraLight)
                                
                                .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                                .multilineTextAlignment(.center)
                                .frame(width: 385, height: 50, alignment: .center
                                )
                            
                         
                            NavigationLink(
                                destination: ManageMyFriends(),
                                label: {
                                    Text("Manage my Friends")
                                })
                           
                                .frame(width: 325, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), lineWidth: 1)
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
                                        .stroke(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), lineWidth: 1)
                                        )
                        
                            
                            
                            
                            VStack {
                            
                            Spacer()
                                .frame(height: 20)
                          
                                NavigationLink(
                                    destination: Notifications(),
                                    label: {
                                        Text("Notification Settings (Need B/E)")
                                    })
                                    .frame(width: 325, height: 50)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 25)
                                            .stroke(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), lineWidth: 1)
                                            )
                                
                                Spacer()
                                    .frame(height: 20)
                                
                            NavigationLink(
                                destination: DeleteMyAccount(),
                                label: {
                                    Text("Delete Account (Not Built)")
                                })
                                .frame(width: 325, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), lineWidth: 1)
                                        )
                                
                                
                                Spacer()
                                    .frame(height: 45)
                                
                                
                                Text("Customize my Chat Rooms")
                                   
                                    .font(.system(size: 32))
                                    .fontWeight(.ultraLight)
                                    
                                    .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
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
                                            .stroke(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), lineWidth: 1)
                                            )
                                
                                Spacer()
                                    .frame(height: 20)
                                
                                NavigationLink(
                                    destination: ChangeChatFontSize(),
                                    label: {
                                        Text("Chat Font Size")
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
                                    
                                    
                                    Text("BlueMode Settings")
                                       
                                        .font(.system(size: 32))
                                        .fontWeight(.ultraLight)
                                        
                                        .foregroundColor(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
                                        .multilineTextAlignment(.center)
                                        .frame(width: 385, height: 50, alignment: .center
                                   )
                                    
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

struct SettingsView_Previews : PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}


}
