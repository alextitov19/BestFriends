//
//  SettingsView.swift
//  BestFriends
//
//  Created by Alex Titov on 5/4/21.
//
import Foundation
import SwiftUI

struct SettingsView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("SignUpPinBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    ScrollView(showsIndicators: false) {
                        Spacer().frame(height: 50)
                        
                        VStack {
                            
                            Text("Settings")
                                .font(.system(size: 50))
                                .fontWeight(.ultraLight)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                            
                            Spacer().frame(height: 30)
                            
                            
                            Text("We'd Love to Hear from You")
                                
                                .font(.system(size: 32))
                                .fontWeight(.ultraLight)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.center)
                                .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Spacer().frame(height: 20)
                            
                            Link("User Survey (5 mins.)", destination: URL(string: "https://form.jotform.com/211808350213142")!)
                                .frame(width: 225, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 17))
                                .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                .cornerRadius(25)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            

                                
                            
                            Spacer().frame(height: 20)
                            
                            Link("BlueMode Survey (5 mins.)", destination: URL(string: "https://form.jotform.com/211898588668178")!)
                                .frame(width: 225, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 17))
                                .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                .cornerRadius(25)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                               
                                
                            
                            
                            
                            Spacer().frame(height: 30)
                        }
                        
                        VStack {
                            
                            Text("Join BestFriends Crew")
                                
                                .font(.system(size: 32))
                                .fontWeight(.ultraLight)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.center)
                                .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            
                            Link("Be 1st to test new features", destination: URL(string: "https://socialtechlabs.com/beta-team/")!)
                                .frame(width: 225, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 17))
                                .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                .cornerRadius(25)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            
                            
                            Spacer().frame(height: 30)
                            
                            
                            
                        }
                        
                        Text("Walk-throughs")
                            .font(.system(size: 32))
                            .fontWeight(.ultraLight)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        NavigationLink(
                            destination: SettingsInfoViewPage1().environmentObject(sessionManager),
                            label: {
                                Text("BestFriends")
                            })
                            .frame(width: 225, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 17))
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        Spacer().frame(height: 20)
                        
                        
                        NavigationLink(
                            destination: BlueModePage1(),
                            label: {
                                Text("BlueMode")
                            })
                            .frame(width: 225, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 17))
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        VStack {
                            
                            Spacer().frame(height: 20)
                            
                            NavigationLink(
                                destination: ShakingCoolView(),
                                label: {
                                    Text("ShakingCool")
                                })
                                .frame(width: 225, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 17))
                                .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                .cornerRadius(25)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            
                            
                            Spacer().frame(height: 20)
                            
                            NavigationLink(
                                destination: Tokens(),
                                label: {
                                    Text("Earning Tokens for Stickers")
                                })
                                
                                .frame(width: 225, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 17))
                                .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                .cornerRadius(25)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            
                            
                            
                            Spacer().frame(height: 45)
                            
                            Text("Manage Friends")
                                .font(.system(size: 32))
                                .fontWeight(.ultraLight)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.center)
                                .frame(width: 285, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            
                            
                            NavigationLink(
                                destination: PreAddFriends().environmentObject(sessionManager),
                                label: {
                                    Text("Add Friends")
                                })
                                .frame(width: 225, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 17))
                                .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                .cornerRadius(25)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            
                            Spacer().frame(height: 20)
                            
                            
                            VStack {
                                NavigationLink(
                                    destination: RemoveFriend(),
                                    label: {
                                        Text("Remove Friends")
                                    })
                                    .frame(width: 225, height: 50)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 17))
                                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                    .cornerRadius(25)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                                
                                
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
                                        .font(.system(size: 17))
                                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                    Spacer()
                                        .frame(height: 20)
                                    
                                    
                                    Link("Report Objectional Content & Behavior", destination: URL(string: "https://socialtechlabs.com/report-objectionable-content-behavior/")!)
                                        .frame(width: 325, height: 50)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 17))
                                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                    
                                    
                                    Spacer()
                                        .frame(height: 20)
                                    
                                    
                                    VStack {
                                        
                                        
                                        Link("Report Copyright Infringment", destination: URL(string: "https://socialtechlabs.com/report-copyright-infringements/")!)
                                            .frame(width: 325, height: 50)
                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                            .font(.system(size: 17))
                                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                            .cornerRadius(25)
                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                        
                                        Spacer()
                                            .frame(height: 45)
                                        
                                        
                                        Text("Manage my Account")
                                            
                                            .font(.system(size: 32))
                                            .fontWeight(.ultraLight)
                                            
                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                            .multilineTextAlignment(.center)
                                            .frame(width: 385, height: 50, alignment: .center
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
                                            .font(.system(size: 17))
                                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                            .cornerRadius(25)
                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                        
                                        
                                        
                                        
                                        VStack {
                                            
                                            VStack {
                                                
                                                Spacer()
                                                    .frame(height: 20)
                                                
                                                NavigationLink(
                                                    destination: NotificationsOnOffPage(),
                                                    label: {
                                                        Text("Notification Settings")
                                                    })
                                                    .frame(width: 325, height: 50)
                                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                    .font(.system(size: 17))
                                                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                                    .cornerRadius(25)
                                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                                
                                                Spacer()
                                                    .frame(height: 20)
                                                
                                                NavigationLink(
                                                    destination: ChangePin(),
                                                    label: {
                                                        Text("Change pin for Hide Chat")
                                                    })
                                                    .frame(width: 325, height: 50)
                                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                    .font(.system(size: 17))
                                                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                                    .cornerRadius(25)
                                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                                
                                                Spacer()
                                                    .frame(height: 20)
                                                
                                                NavigationLink(
                                                    destination: ChangeAdPreference(),
                                                    label: {
                                                        Text("Change Ad Preference")
                                                    })
                                                    .frame(width: 325, height: 50)
                                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                    .font(.system(size: 17))
                                                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                                    .cornerRadius(25)
                                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                                
                                                Spacer()
                                                    .frame(height: 20)
                                                
                                                NavigationLink(
                                                    destination: EmptyView(),
                                                    label: {
                                                        Text("Delete Account ***(Not Built)")
                                                    })
                                                    .frame(width: 325, height: 50)
                                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                    .font(.system(size: 17))
                                                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                                    .cornerRadius(25)
                                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                                
                                            }
                                            
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
                                                .font(.system(size: 17))
                                                .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                                .cornerRadius(25)
                                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                            
                                            Spacer()
                                                .frame(height: 20)
                                            
                                            NavigationLink(
                                                destination: ChangeChatFontSize(),
                                                label: {
                                                    Text("Chat Font Size")
                                                })
                                                .frame(width: 325, height: 50)
                                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                .font(.system(size: 17))
                                                .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                                .cornerRadius(25)
                                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                            
                                            VStack {
                                                
                                                Spacer()
                                                    .frame(height: 45)
                                                
                                                Text("Outside Resources")
                                                    
                                                    .font(.system(size: 32))
                                                    .fontWeight(.ultraLight)
                                                    
                                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                    .multilineTextAlignment(.center)
                                                    .frame(width: 385, height: 50, alignment: .center
                                                    )
                                                
                                                Link("In crisis? Anonymously chat w/ trained teens on 'TeenLine'", destination: URL(string: "https://teenlineonline.org/")!)
                                                    .frame(width: 325, height: 50)
                                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                    .font(.system(size: 17))
                                                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                                    .cornerRadius(25)
                                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                                
                                                
                                                Spacer()
                                                    .frame(height: 45)
                                                
                                                
                                                VStack {
                                                    
                                                    Spacer()
                                                        .frame(height: 100)
                                                    
                                                    Button(action: {
                                                        sessionManager.signOut()
                                                    }) {
                                                        Text("Sign Out")
                                                            .frame(width: 325, height: 50)
                                                            .frame(width: 325, height: 50)
                                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                            .font(.system(size: 17))
                                                            .background(Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)))
                                                            .cornerRadius(25)
                                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                                            
                                                    }
                                                    
                                                    Spacer()
                                                        .frame(height: 50)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                    }
                    
                    HStack {
                        
                        Image("home-alt2")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .scaledToFill()
                            .onTapGesture {
                                sessionManager.getCurrentAuthUser()
                            }
                            .padding(20)
                        
                        Image("chat icon")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .scaledToFill()
                            .onTapGesture {
                                sessionManager.showRooms()
                            }
                            .padding(20)
                        
                        Image("happy-face icon")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .scaledToFill()
                            .onTapGesture {
                                sessionManager.showSmileNotes()
                            }
                            .padding(20)
                        
                    }
                }
            }
        }
    }
}

struct SettingsView_Previews : PreviewProvider {
    static var previews: some View {
        SettingsView()
            .environmentObject(SessionManager())
    }
}

