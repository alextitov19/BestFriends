//
//  BuildFriendPlaylist.swift
//  BestFriends
//
//  Created by Social Tech on 6/11/22.
//

import SwiftUI


struct BuildFriendPlaylist: View {
    
    var body: some View {
        ZStack {
          
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            //
            //
            //                AdPlayerView(name: "backgroundAnimation")
            //                    .ignoresSafeArea()
            //                    .blendMode(.screen)
            //                    .offset(y: -250)
            //
            VStack {
//                Text("Fixing Friend \nGroup Fights")
//                    .font(.system(size: 65))
//                    .foregroundColor(.white)
//                    .fontWeight(.ultraLight)
//                    .multilineTextAlignment(.center)
//                Spacer()
//                    .frame(height: 20)
                Text("Playlists")
                    .font(.system(size: 80))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)


                
                Text("Build a Playlist for your Friends")
                    .font(.system(size: 27))
                    .foregroundColor(.blue)
                    .fontWeight(.light)
                
                Spacer()
                    .frame(height: 5)
                 
                Text("that match their ")
                    .font(.system(size: 27))
                    .foregroundColor(.blue)
                    .fontWeight(.light)
                Spacer()
                    .frame(height: 15)
                
                   
                Text("Mood")
                    .font(.system(size: 70))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                
            VStack {
                    Spacer()
                        .frame(height: 60)
                    
//                    NavigationLink(
//                        destination: EmptyView(),
//                        label: {
//                            Text("Comming July 2022")
//                                .fontWeight(.thin)
//                                .frame(width: 300, height: 40)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 30))
//                                .background(ColorManager.purple3)
//                                .cornerRadius(15)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                        })
//                    
                    Spacer()
                        .frame(height: 40)
                
                Text("One for Good days, ")
                    .font(.system(size: 40))
                    .fontWeight(.light)
                    .foregroundColor(Color.blue)
                
                Text("one for Bad")
                    .font(.system(size: 40))
                    .fontWeight(.light)
                    .foregroundColor(Color.blue)
               
             
                    
                }
            }
            
        }
    }
}


struct BuildFriendPlaylist_Previews : PreviewProvider {
    static var previews: some View {
        BuildFriendPlaylist()
    }
}


