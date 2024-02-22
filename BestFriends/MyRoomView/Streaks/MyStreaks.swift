//
//  MyStreaks.swift
//  BestFriends
//
//  Created by Social Tech on 4/25/22.
//


import Foundation
import SwiftUI

struct MyStreaks: View {
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color("Custom Color")
                    .background(Color.gray.opacity(0.5))
                    .ignoresSafeArea()

               
//                Image("FatGuy")
               
                VStack {
                    
//                 Image("FatGuy")
                    
                    Text("Oh, yeah!")
                        .font(.system(size: 90))
                        .foregroundColor(.black)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    Spacer()
                        .frame(height: 30)
                    
                    
                    Text("Friend Streaks")
                        .font(.system(size: 40))
                        .foregroundColor(.black)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    
                    
                    NavigationLink(
                        destination: EmptyView(),
                        
                        label: {
                                Text("Friend 1")
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .frame(width: 100, height: 30, alignment: .leading)
                                .font(.system(size: 20))
                                .padding(10)
                                .background(.white)
                                .cornerRadius(15)
                                .shadow(color:  .white, radius: 2, x: 0, y: 1)
                           
                        })
                     
                    NavigationLink(
                        destination: EmptyView(),
                        label: {
                            Text("Friend 2")
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .frame(width: 100, height: 30, alignment: .leading)
                                .font(.system(size: 20))
                                .padding(10)
                                .background(.white)
                                .cornerRadius(15)
                                .shadow(color:  .white, radius: 2, x: 0, y: 1)
                           
                        })
                    
                    NavigationLink(
                        destination: EmptyView(),
                        label: {
                            Text("Friend 3")
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .frame(width: 100, height: 30, alignment: .leading)
                                .font(.system(size: 20))
                                .padding(10)
                                .background(.white)
                                .cornerRadius(15)
                                .shadow(color:  .white, radius: 2, x: 0, y: 1)
                           
                        })
                    NavigationLink(
                        destination: EmptyView(),
                        label: {
                            Text("Friend 4")
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .frame(width: 100, height: 30, alignment: .leading)
                                .font(.system(size: 20))
                                .padding(10)
                                .background(.white)
                                .cornerRadius(15)
                                .shadow(color:  .white, radius: 2, x: 0, y: 1)
                           
                        })
                    
                    
                    NavigationLink(
                        destination: EmptyView(),
                        label: {
                            Text("Friend 5")
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .frame(width: 100, height: 30, alignment: .leading)
                                .font(.system(size: 20))
                                .padding(10)
                                .background(.white)
                                .cornerRadius(15)
                                .shadow(color:  .white, radius: 2, x: 0, y: 1)
                           
                        })
                    VStack {
                    
                    Spacer()
                        .frame(height: 30)
                        
                    Text("Goal Completions")
                        .font(.system(size: 45))
                        .foregroundColor(.black)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                  
                        NavigationLink(
                            destination: EmptyView(),
                            label: {
                                Text("Finished (xx) Goals")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: 225, height: 30, alignment: .leading)
                                    .font(.system(size: 20))
                                    .padding(10)
                                    .background(Color.white)
                                   
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 1)
                                    .opacity(/*@START_MENU_TOKEN@*/5.8/*@END_MENU_TOKEN@*/)
                                   
                               
                            })
                         
                        NavigationLink(
                            destination: EmptyView(),
                            label: {
                                Text("Finished (xx) Rockets")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: 225, height: 30, alignment: .leading)
                                    .font(.system(size: 20))
                                    .padding(10)
                                    .background(Color.white)
                                    .opacity(50)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 1)
                                    
                                   
                               
                            })
                         
                     
                        
                        
                        
                        
                        Spacer()
                        .frame(height: 200)
           
                        
                        
                        
                        
                        
                        
                    }
                }
            }
        }

    }
}
                    struct MyStreaks_Previews : PreviewProvider {
                        static var previews: some View {
                            MyStreaks()
                        }
                    }
 
