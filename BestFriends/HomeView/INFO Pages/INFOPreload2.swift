//
//  INFOPreload2.swift
//  BestFriends
//
//  Created by Social Tech on 11/8/22.
//

//



import Foundation
import SwiftUI


struct INFOPreload2: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
//    let atmosphere: Atmosphere
//    let friends: [User]
//    let groups: [Group]
//    let friendAtmospheres: [Atmosphere]
//
    var body: some View {
        ZStack {
//            ColorManager.grey3
//                .ignoresSafeArea()
//                .onAppear()
//
 
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()

            
//
//            Image("in bushes")
////                .resizable()
//                .ignoresSafeArea()
////                .scaledToFill()
//
//
            
            


            
            
            
            AdPlayerView(name: "PlanetSound")
                .ignoresSafeArea()
                .blendMode(.screen)

            
        
         
             
            VStack {
           
                Spacer()
                    .frame(height: 10)
                
                Text("W O R L D")
                    .font(.system(size: 63))
                
                    .foregroundColor(ColorManager.purple3)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Text("FriendGroups")
                    .font(.system(size: 63))
                
                    .foregroundColor(ColorManager.purple3)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
               
                Text("it's like ...")
                        .font(.system(size: 27))
                        .italic()
                        .fontWeight(.light)
                        .foregroundColor(ColorManager .purple3)
             
                Spacer()
                    .frame(height: 10)
                
              
                
                VStack {
                
                            
                    Text("receiving warm pings \ntouching our hearts")
                            .font(.system(size: 25))
                            .fontWeight(.thin)
                            .foregroundColor(Color.white)
                    
                    Spacer()
                        .frame(height: 15)
                    
                    Text("the look on a girl's face \nholding unexpected flowers")
                            .font(.system(size: 25))
                            .fontWeight(.thin)
                            .foregroundColor(Color.white)
                            .padding()
                    
                    Spacer()
                        .frame(height: 15)
                    
                    Text("kicking through \nAutumn's leaves")
                            .font(.system(size: 25))
                            .fontWeight(.thin)
                            .foregroundColor(Color.white)
                    
                    Spacer()
                        .frame(height: 15)
                    
            VStack {
                Text("making snow angles")
                        .font(.system(size: 25))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                
                Spacer()
                    .frame(height: 30)
               
                Text("Feeling a little lighter")
                            .font(.system(size: 27))
                            .italic()
                            .fontWeight(.light)
                            .foregroundColor(ColorManager.purple3)
                    
                
                    
               
                        
                    
                    
                    
                Spacer()
                    .frame(height: 20)
            
                VStack {
                    
                    
                    NavigationLink(
                        destination: BuiltForTeens(user: user),
                        label: {
                            Text("App Walk-through")
                                .fontWeight(.thin)
                                .frame(width: 310, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.pmbc_green)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            
                        })
                    
                    
                    Spacer()
                        .frame(height: 40)
                    
                }
                
                    }
                        
                    }
                }
                
            }
}
    }

        
  


//import Foundation
//import SwiftUI
//
//struct INFOPreload2: View {
//
//    @EnvironmentObject var sessionManager: SessionManager
//
//    let user: User
//
//
//    var body: some View {
//
//        VStack {
//
//
//            ZStack {
//
//                //                ColorManager.purple1
//                //                    .ignoresSafeArea()
//                //                    .onAppear()
//                //
//
//                Image("purpleBackground")
//                    .resizable()
//                    .ignoresSafeArea()
//                    .scaledToFill()
//
//                AdPlayerView(name: "sky2")
//                    .ignoresSafeArea()
//                    .blendMode(.screen)
//                    .opacity(0.75)
//
//
//                VStack {
//
//                        VStack {
//
//
//
//                            Spacer()
//
//                            Text("building")
//                                .font(.system(size: 20))
//                                .italic()
//                                .fontWeight(.thin)
//                                .foregroundColor(Color.white)
//
//                                .frame(height: 10)
//
//                            Text("World FriendGroups")
//                                .font(.system(size: 32))
//                                .fontWeight(.thin)
//                                .foregroundColor(Color.white)
//
//                            Text("moments of kindness")
//                                .font(.system(size: 17))
//                                .italic()
//                                .fontWeight(.thin)
//                                .foregroundColor(Color.white)
//
//                            Text("amoung friends")
//                                .font(.system(size: 17))
//                                .italic()
//                                .fontWeight(.thin)
//                                .foregroundColor(Color.white)
//
//                            Text("   Our friends sending warm pings touching our hearts \n\n   Feeling safe in the silence \n\n   Feeling special, like a girl's face holding unexpected flowers. \n\n   Kicking through autumn's leaves, our lives perfect in the moment \n\n   NOW, feeling somehow lighter as if making snow angles")
//                                .font(.system(size: 12))
//                            //                    .italic()
//                                .fontWeight(.thin)
//                                .foregroundColor(Color.white)
//                                .padding()
//                            Spacer()
//                                .frame(height: 80)
//
//
//
//
//
//                            NavigationLink(
//                                destination: BuiltForTeens(user: user),
//                                label: {
//                                    Text("Next")
//                                        .fontWeight(.thin)
//                                        .frame(width: 100, height: 30)
//                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                        .font(.system(size: 25))
//                                        .background(ColorManager.purple3)
//                                        .cornerRadius(15)
//                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                                })
//
//                            VStack {
//                                Text("F R I E N D S")
//                                    .font(.system(size: 25))
//
//                                    .fontWeight(.thin)
//                                    .foregroundColor(Color.white)
//
//                                Text("a friend may well be reckoned the masterpiece \nof nature --- Ralph Waldo Emerson")
//                                    .font(.system(size: 15))
//                                    .italic()
//                                    .fontWeight(.thin)
//                                    .foregroundColor(Color.white)
//                                    .multilineTextAlignment(.center)
//
//
//
//                                Spacer()
//                                    .frame(height: 20)
//                            }
//                        }
//
//                    }
//                }
//
//            }
//        }
//
//    }
//
