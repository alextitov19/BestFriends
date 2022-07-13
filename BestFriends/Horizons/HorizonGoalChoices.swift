//
//  HorizonGoalChoices.swift
//  BestFriends
//
//  Created by Christine Maldonado on 7/8/22.
//

import SwiftUI

struct HorizonGoalChoices: View {
    var body: some View {
        
//        UIScrollView()
//        {
        ZStack
        {
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack
            {
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
                        .font(.system(size: 20))
                        .frame(width: 200,alignment: .leading)
                        
                        
                }//HStack
                .background(.blue)
                .cornerRadius(15)
                
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
                        .font(.system(size: 20))
                        .frame(width: 200,alignment: .leading)
                }//HStack
                .background(.blue)
                .cornerRadius(15)
                
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
                        .font(.system(size: 20))
                        .frame(width: 200,alignment: .leading)
                }//HStack
                .background(.blue)
                .cornerRadius(15)
                
                HStack
                {
                    Image(systemName: "music.note.list")
                        .resizable()
                        .foregroundColor(.black)
                        .background(.white)
                        .frame(width: 50, height: 50)
                        .padding(5)
                        .border(Color.white,width:5)
                        
                    
                    Text("Create a new Playlist for my friend's mood")
                        .font(.system(size: 20))
                        .frame(width: 200,alignment: .leading)
                }//HStack
                .background(.blue)
                .cornerRadius(15)
                
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
                        .font(.system(size: 20))
                        .frame(width: 200,alignment: .leading)
                }//HStack
                .background(.blue)
                .cornerRadius(15)
                
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
                        .font(.system(size: 20))
                        .frame(width: 200,alignment: .leading)
                }//HStack
                .background(.blue)
                .cornerRadius(15)
                
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
                        .font(.system(size: 20))
                        .frame(width: 200,alignment: .leading)
                }//HStack
                .background(.blue)
                .cornerRadius(15)
            
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
                        .font(.system(size: 20))
                        .frame(width: 200,alignment: .leading)
                }//HStack
                .background(.blue)
                .cornerRadius(15)

                
                HStack
                {
                    Image(systemName: "book")
                        .resizable()
                        .foregroundColor(.black)
                        .background(.white)
                        .frame(width: 50, height: 50)
                        .padding(5)
                        .border(Color.white,width:5)
                        
                    
                    Text("Read my favorite book")
                        .font(.system(size: 20))
                        .frame(width: 200,alignment: .leading)
                }//HStack
                .background(.blue)
                .cornerRadius(15)
                
                HStack
                {
                    Image(systemName: "sparkles.tv")
                        .resizable()
                        .foregroundColor(.black)
                        .background(.white)
                        .frame(width: 50, height: 50)
                        .padding(5)
                        .border(Color.white,width:5)
                        
                    
                    Text("Watch a new movie")
                        .font(.system(size: 20))
                        .frame(width: 200,alignment: .leading)
                }//HStack
                .background(.blue)
                .cornerRadius(15)
            }//VStack
        }//ZStack
//        }//UIScrollView
    }
}

struct HorizonGoalChoices_Previews: PreviewProvider {
    static var previews: some View {
        HorizonGoalChoices()
    }
}
