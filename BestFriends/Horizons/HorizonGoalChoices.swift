//
//  HorizonGoalChoices.swift
//  BestFriends
//
//  Created by Christine Maldonado on 7/8/22.
//

import SwiftUI

struct HorizonGoalChoices: View {
    
    let user: User
    let friends: [User]
    let atmosphere: Atmosphere
    
    
    var body: some View {
        
        ZStack
        {
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack
            {
                Text("Choose Your Goal")
                    .foregroundColor(.white)
                    .font(.title)
                
                HStack
                {
                    VStack
                    {
                        NavigationLink(destination: HorizonCustom(user: user, friends: friends, atmosphere: atmosphere), label: {
                            HStack
                            {
                                Image(systemName: "wrench")
                                    .resizable()
                                    .foregroundColor(.black)
                                    .background(.white)
                                    .frame(width: 50, height: 50)
                                    .padding(5)
                                    .border(Color.white,width:5)
                                
                                Text("Custom")
                                    .font(.system(size: 17))
                                    .frame(width: 80,alignment: .leading)
                                    .foregroundColor(.black)
                            }//HStack
                            .background(.blue)
                            .cornerRadius(15)
                        })//NavigationLink
                        
                        NavigationLink(destination: HorizonSetGoal(user: user, friends: friends, atmosphere: atmosphere), label: {
                            HStack
                            {
                                Image(systemName: "bubble.left")
                                    .resizable()
                                    .foregroundColor(.black)
                                    .background(.white)
                                    .frame(width: 50, height: 50)
                                    .padding(5)
                                    .border(Color.white,width:5)
                                
                                
                                Text("Check on my friends")
                                    .font(.system(size: 17))
                                    .frame(width: 80,alignment: .leading)
                                    .foregroundColor(.black)
                            }//HStack
                            .background(.blue)
                            .cornerRadius(15)
                        })//NavigationLink
                        
                        NavigationLink(destination: HorizonSetGoal(user: user, friends: friends, atmosphere: atmosphere), label: {
                            HStack
                            {
                                Image(systemName: "person.2.fill")
                                    .resizable()
                                    .foregroundColor(.black)
                                    .background(.white)
                                    .frame(width: 50, height: 50)
                                    .padding(5)
                                    .border(Color.white,width:5)
                                
                                
                                Text("Make plan with roommate")
                                    .font(.system(size: 15))
                                    .frame(width: 80,alignment: .leading)
                                    .foregroundColor(.black)
                            }//HStack
                            .background(.blue)
                            .cornerRadius(15)
                        })//NavigationLink
                        
                        NavigationLink(destination: HorizonSetGoal(user: user, friends: friends, atmosphere: atmosphere), label: {
                            HStack
                            {
                                Image(systemName: "music.note.list")
                                    .resizable()
                                    .foregroundColor(.black)
                                    .background(.white)
                                    .frame(width: 55, height: 57)
                                    .padding(5)
                                    .border(Color.white,width:5)
                                
                                
                                Text("New Playlist for my friend's mood")
                                    .font(.system(size: 14))
                                    .frame(width: 80,alignment: .leading)
                                    .foregroundColor(.black)
                            }//HStack
                            .background(.blue)
                            .cornerRadius(15)
                        })//NavigationLink
                        
                        NavigationLink(destination: HorizonSetGoal(user: user, friends: friends, atmosphere: atmosphere), label: {
                            HStack
                            {
                                Image(systemName: "cloud")
                                    .resizable()
                                    .foregroundColor(.black)
                                    .background(.white)
                                    .frame(width: 50, height: 50)
                                    .padding(5)
                                    .border(Color.white,width:5)
                                
                                
                                Text("Set up my Dreams")
                                    .font(.system(size: 17))
                                    .frame(width: 80,alignment: .leading)
                                    .foregroundColor(.black)
                            }//HStack
                            .background(.blue)
                            .cornerRadius(15)
                        })//NavigationLink
                    }//VStack
                    
                    VStack
                    {
                        NavigationLink(destination: HorizonSetGoal(user: user, friends: friends, atmosphere: atmosphere), label: {
                            HStack
                            {
                                Image(systemName: "tshirt")
                                    .resizable()
                                    .foregroundColor(.black)
                                    .background(.white)
                                    .frame(width: 50, height: 50)
                                    .padding(5)
                                    .border(Color.white,width:5)
                                
                                
                                Text("Declutter my closet")
                                    .font(.system(size: 17))
                                    .frame(width: 80,alignment: .leading)
                                    .foregroundColor(.black)
                            }//HStack
                            .background(.blue)
                            .cornerRadius(15)
                        })//NavigationLink
                        
                        NavigationLink(destination: HorizonSetGoal(user: user, friends: friends, atmosphere: atmosphere), label: {
                            HStack
                            {
                                Image(systemName: "hands.sparkles")
                                    .resizable()
                                    .foregroundColor(.black)
                                    .background(.white)
                                    .frame(width: 50, height: 50)
                                    .padding(5)
                                    .border(Color.white,width:5)
                                
                                
                                Text("Volunteer for a Day")
                                    .font(.system(size: 17))
                                    .frame(width: 80,alignment: .leading)
                                    .foregroundColor(.black)
                                
                            }//HStack
                            .background(.blue)
                            .cornerRadius(15)
                        })//NavigationLink
                        
                        NavigationLink(destination: HorizonSetGoal(user: user, friends: friends, atmosphere: atmosphere), label: {
                            HStack
                            {
                                Image(systemName: "lightbulb")
                                    .resizable()
                                    .foregroundColor(.black)
                                    .background(.white)
                                    .frame(width: 50, height: 50)
                                    .padding(5)
                                    .border(Color.white,width:5)
                                
                                
                                Text("Try something new")
                                    .font(.system(size: 16))
                                    .frame(width: 80,alignment: .leading)
                                    .foregroundColor(.black)
                            }//HStack
                            .background(.blue)
                            .cornerRadius(15)
                        })//NavigationLink
                        
                        NavigationLink(destination: HorizonSetGoal(user: user, friends: friends, atmosphere: atmosphere), label: {
                            HStack
                            {
                                Image(systemName: "book")
                                    .resizable()
                                    .foregroundColor(.black)
                                    .background(.white)
                                    .frame(width: 50, height: 53)
                                    .padding(5)
                                    .border(Color.white,width:5)
                                
                                
                                Text("Read my favorite book")
                                    .font(.system(size: 17))
                                    .frame(width: 80,alignment: .leading)
                                    .foregroundColor(.black)
                            }//HStack
                            .background(.blue)
                            .cornerRadius(15)
                        })//NavigationLink
                        
                        NavigationLink(destination: HorizonSetGoal(user: user, friends: friends, atmosphere: atmosphere), label: {
                            HStack
                            {
                                Image(systemName: "sparkles.tv")
                                    .resizable()
                                    .foregroundColor(.black)
                                    .background(.white)
                                    .frame(width: 50, height: 53)
                                    .padding(5)
                                    .border(Color.white,width:5)
                                
                                
                                Text("Watch a new movie")
                                    .font(.system(size: 17))
                                    .frame(width: 80,alignment: .leading)
                                    .foregroundColor(.black)
                            }//HStack
                            .background(.blue)
                            .cornerRadius(15)
                        })//NavigationLink
                    }//VStack
                }//HStack
                
                Spacer()
            }//VStack
        }//ZStack
    }//body
}//struct

//struct HorizonGoalChoices_Previews: PreviewProvider {
//    static var previews: some View {
//        HorizonGoalChoices()
//            .previewDevice("iPod touch (7th generation)")
//    }
//}
