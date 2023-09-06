//
//  FH10.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/7/23.
//



import SwiftUI

struct FH10: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    
    var body: some View {
        ZStack {

            ColorManager .grey4
                .opacity(0.9)
                .ignoresSafeArea()

            
    
       
            ZStack {
              
            }
           
            VStack {
//                Text("TAP CENTER PLANET -> takes you to Main page")
//                    .fontWeight(.light)
//                    .frame(width: 300, height: 60)
//                    .foregroundColor(Color.white)
//                    .font(.system(size: 17))
//                    .background(ColorManager.grey3)
//                    .cornerRadius(10)
//                    .shadow(color: Color.white, radius: 2, x: 0, y: 2)
//
                Spacer ()
                    .frame(height: 15)
                
                Text("Friends show up as smaller planets circling around your planet")
                    .fontWeight(.light)
                    .frame(width: 300, height: 60)
                    .foregroundColor(Color.white)
                    .font(.system(size: 17))
                    .background(ColorManager .grey3)
                    .cornerRadius(10)
                    .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                
          
                Spacer ()
                    .frame(height: 15)
                
                       Text("Friend's current 'vibe' shows as atmosphere around their planet")
                           .fontWeight(.light)
                           .frame(width: 300, height: 60)
                           .foregroundColor(Color.white)
                           .font(.system(size: 17))
                           .background(ColorManager .grey3)
                           .cornerRadius(10)
                           .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                   
                
                Spacer ()
                    .frame(height: 50)
                
                HStack {
                    
                    
                    NavigationLink(
                        
                        destination: SaySomethingNice6(user: user, atmosphere: atmosphere, friends: friends, groups: groups, friendAtmospheres: friendAtmospheres),
                        label: {
                            Text("Invite & Accept \nFriends")
                                .fontWeight(.regular)
                                .frame(width: 130, height: 50)
                                .foregroundColor(Color.white)
                                .font(.system(size: 13))
                                .background(Color.orange)
                                .cornerRadius(15)
                                .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                            
                        })
                    
                    
                    NavigationLink(
                        
                        destination: InfoInsideChat(user: user),
                        label: {
                            Text("Create & Customize \nChat Rooms")
                                .fontWeight(.regular)
                                .frame(width: 130, height: 50)
                                .foregroundColor(Color.white)
                                .font(.system(size: 13))
                                .background(Color.orange)
                                .opacity(0.85)
                                .cornerRadius(15)
                                .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                            
                        })
                 
                }
                    
                Spacer ()
                    .frame(height: 20)
                
                    HStack {
//
//
//                    Link(destination: URL(string: "https://socialtechlabs.com/social-media-influencers/")!) {
//
//                        Text("Supportive \nInfluencers")
//                            .fontWeight(.regular)
//                            .frame(width: 80, height: 50)
//                            .foregroundColor(Color.white)
//                            .font(.system(size: 13))
//                            .background(Color.pink)
//                            .opacity(0.85)
//                            .cornerRadius(15)
//                            .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                        
                        HStack {
                            
                            ZStack {
                                
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .foregroundColor(ColorManager .purple3)
                                    .frame(width: 130, height: 90)
                                    .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                                    .opacity(0.7)
                                
                                NavigationLink(
                                    
                                    destination: BuiltByTeensView(user: user, friends: friends),
                                    label: {
                                        Text("Our Story")
                                            .fontWeight(.regular)
                                            .foregroundColor(Color.white)
                                            .font(.system(size: 13))
                                        
                                    })
                               
                            }
                        }
                    }
                }
                
            }
        }
    }
    
    
    
    
    
    
    private struct MyRoomRowView: View {
        let title, imageName: String
        let backgroundColor, foregroundColor: CGColor
        
        var body: some View {
            ZStack {
                Color(cgColor: backgroundColor)
                
                HStack{
                    Image(systemName: imageName)
                        .resizable()
                        .frame(width: 30, height: 30)
                        .scaledToFit()
                        .foregroundColor(Color(cgColor: foregroundColor))
                    
                    
                    
                    Spacer().frame(width: 20)
                    
                    Text(title)
                        .font(.system(size: 24, weight: .light))
                        .foregroundColor(Color(cgColor: foregroundColor))
                }
            }
            .frame(width: 310, height: 60)
            .opacity(0.6)
            .cornerRadius(15)
            .padding()
        }
    }




