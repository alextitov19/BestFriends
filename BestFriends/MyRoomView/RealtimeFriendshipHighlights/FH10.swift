//
//  FH10.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/7/23.
//

//import SwiftUI
//
//struct FH10: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct FH10_Previews: PreviewProvider {
//    static var previews: some View {
//        FH10()
//    }
//}




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
            ColorManager.grey4
            //                .opacity(0.6)
                .ignoresSafeArea()
            
//            AdPlayerView(name: "sky2")
//                .ignoresSafeArea()
//                .blendMode(.screen)
       
            
           
            VStack {
                Text("TAP CENTER PLANET -> takes you to Main page")
                    .fontWeight(.thin)
                    .frame(width: 300, height: 60)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .font(.system(size: 13))
                    .background(ColorManager.grey3)
                    .cornerRadius(10)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
            
                
                Text("Friends show up as smaller planets circling around your planet")
                    .fontWeight(.thin)
                    .frame(width: 300, height: 60)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .font(.system(size: 15))
                    .background(ColorManager.grey3)
                    .cornerRadius(10)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                
             
//                NavigationLink(
//                    destination: EmptyView(),
//                   label: {
                       Text("Friend's current 'vibe' shows as atmosphere around their planet")
                           .fontWeight(.thin)
                           .frame(width: 300, height: 60)
                           .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                           .font(.system(size: 13))
                           .background(ColorManager.grey3)
                           .cornerRadius(10)
                           .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                   
                
                Spacer ()
                    .frame(height: 30)
                
                HStack {
                    NavigationLink(
                        
                        destination: InfoInsideChat(user: user),
                        label: {
                            Text("Create & Customize \nChat Rooms")
                                .fontWeight(.light)
                                .frame(width: 130, height: 50)
                                .foregroundColor(ColorManager .grey4)
                                .font(.system(size: 13))
                                .background(Color.green)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            
                        })
                    
                    //                    InviteView(user: user, atmosphere: atmosphere, friends: friends,  friendAtmospheres: friendAtmospheres, groups: groups
                    
                    NavigationLink(
                        
                        destination: SaySomethingNice6(user: user, atmosphere: atmosphere, friends: friends, groups: groups, friendAtmospheres: friendAtmospheres),
                        label: {
                            Text("Invite \n& Accept \nFriends")
                                .fontWeight(.light)
                                .frame(width: 80, height: 50)
                                .foregroundColor(ColorManager .grey4)
                                .font(.system(size: 13))
                                .background(Color.green)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            
                        })
                }
                    
                    HStack {
                    
                    //                    HStack {
                    NavigationLink(
                        
                        destination: INFOPreload3(user: user),
                        label: {
                            Text("Free \nStickers")
                                .fontWeight(.light)
                                .frame(width: 80, height: 50)
                                .foregroundColor(ColorManager .grey4)
                                .font(.system(size: 13))
                                .background(Color.green)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            
                        })
                    
                    
                    
                    Link(destination: URL(string: "https://socialtechlabs.com/social-media-influencers/")!) {
                        
                        Text("Supportive \nInfluencers")
                            .fontWeight(.light)
                            .frame(width: 80, height: 50)
                            .foregroundColor(ColorManager .grey4)
                            .font(.system(size: 13))
                            .background(Color.green)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        HStack {
                            
                            NavigationLink(
                                
                                destination: BuiltByTeensView(user: user, friends: friends),
                                label: {
                                    Text("Our Story")
                                        .fontWeight(.light)
                                        .frame(width: 80, height: 50)
                                        .foregroundColor(ColorManager .grey4)
                                        .font(.system(size: 13))
                                        .background(Color.green)
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                })
                            
                            NavigationLink(
                                
                                destination: InfoPushNotifications(user: user),
                                label: {
                                    Text("CareHeart \nStreaks")
                                        .fontWeight(.light)
                                        .frame(width: 80, height: 50)
                                        .foregroundColor(ColorManager .grey4)
                                        .font(.system(size: 13))
                                        .background(Color.green)
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                })
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
}



