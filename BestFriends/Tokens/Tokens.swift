//
//  Tokens.swift
//  BestFriends
//
//  Created by Social Tech on 6/8/22.
//
//
//import Foundation
//
//import SwiftUI
//
//struct Tokens: View {
//    
//    
//    var body: some View {
//        ZStack {
//            
//            Image("blueBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//            
//            ScrollView {
//                VStack {
//                    
//                    
//                    Text("Tokens")
//                        .font(.system(size: 50))
//                        .fontWeight(.ultraLight)
//                        .foregroundColor(.blue)
//                        .multilineTextAlignment(.center)
//                        .frame(width: 400, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                    
//                    
//                    
//                    
//                    Text("Tokens are earned by watching Ad videos. Tokens may be used to purchase premimum Stickers.")
//                        
//                        .italic() .italic()
//                        .font(.system(size: 25))
//                        .fontWeight(.regular)
//                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                        .multilineTextAlignment(.center)
//                        .frame(width: 400, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                    
//                    
//                    
//                    
//                    Spacer().frame(height: 30)
//                    
//                    Text("Earning Tokens")
//                        .font(.system(size: 40))
//                        .fontWeight(.ultraLight)
//                        .foregroundColor(.blue)
//                        .multilineTextAlignment(.center)
//                        .frame(width: 400, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                    VStack {
//                        
//                        Spacer()
//                            .frame(height: 25)
//                        
//                        
//                        NavigationLink(
//                            destination: SettingsView(),
//                            label: {
//                                Text("Watch complete Ad video = 1 token.")
//                            })
//                            .frame(width: 325, height: 50, alignment: .center)
//                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
//                            .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
//                            .cornerRadius(25)
//                        Spacer()
//                            .frame(height: 25)
//                        
//                        NavigationLink(
//                            destination: EmptyView(),
//                            label: {
//                                Text("Click Link in Ad video = 3 token.")
//                            })
//                            .frame(width: 325, height: 50, alignment: .center)
//                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
//                            .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
//                            .cornerRadius(25)
//                        
//                        
//                        
//                        
//                        Spacer()
//                            .frame(height: 20)
//                        
//                        NavigationLink(
//                            destination: EmptyView(),
//                            label: {
//                                Text("How many tokens do I have?")
//                            })
//                            .frame(width: 325, height: 50, alignment: .center)
//                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
//                            .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
//                            .cornerRadius(25)
//                        
//                        
//                        
//                        
//                        VStack {
//                            
//                            Spacer()
//                                .frame(height: 20)
//                            
//                            
//                            
//                            
//                            Spacer()
//                                .frame(height: 25)
//                            
//                            
//                            NavigationLink(
//                                destination: ChangeAdPreference(),
//                                label: {
//                                    Text("Edit my 'ad interest' categories")
//                                })
//                                
//                                .frame(width: 325, height: 50)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .overlay(
//                                    RoundedRectangle(cornerRadius: 25)
//                                        .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 1)
//                                )
//                            
//                            
//                            
//                            Spacer()
//                                .frame(height: 20)
//                       
//                            }
//                            
//                            
//                            
//                            
//                            
//                            
//                            
//                            
//                            
//                            
//                        }
//                    }
//                }
//            }
//        }
//    }
//
//
//
//
//struct Tokens_Previews : PreviewProvider {
//    static var previews: some View {
//        Tokens()
//    }
//}
