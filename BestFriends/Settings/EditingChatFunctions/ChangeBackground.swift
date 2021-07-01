//
//  ChangeBackground.swift
//  BestFriends
//
//  Created by Social Tech on 5/28/21.
//


import Amplify
import SwiftUI

struct ChangeBackground: View {
        
    var body: some View {
        ZStack {
            Image("changeBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                Text("Change Chat Background")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .light))
                    .padding()
                
                ScrollView {
                    VStack {
                        HStack {
                            VStack {
                                Image("purpleBackground")
                                    .resizable()
                                    .frame(width: 150, height: 250)
                                    //                                .cornerRadius(25)
                                    .border(Color.white, width: 2)
                                
                                Button("Select", action: { saveData(index: 1) })
                                    .frame(width: 110, height: 40)
                                    .background(Color(#colorLiteral(red: 0.5280093551, green: 0.4946141839, blue: 1, alpha: 1)))
                                    .foregroundColor(.white)
                                    .cornerRadius(25)
                            }
                            .padding()
                            
                            VStack {
                                Image("blueBackground")
                                    .resizable()
                                    .frame(width: 150, height: 250)
                                    //                                .cornerRadius(25)
                                    .border(Color.white, width: 2)
                                
                                Button("Select", action: { saveData(index: 1) })
                                    .frame(width: 110, height: 40)
                                    .background(Color(#colorLiteral(red: 0.5280093551, green: 0.4946141839, blue: 1, alpha: 1)))
                                    .foregroundColor(.white)
                                    .cornerRadius(25)
                            }
                            .padding()
                        }
                        
                        HStack {
                            VStack {
                                Image("blueGradient1")
                                    .resizable()
                                    .frame(width: 150, height: 250)
    //                                .cornerRadius(25)
                                    .border(Color.white, width: 2)
                                
                                Button("Select", action: { saveData(index: 1) })
                                    .frame(width: 110, height: 40)
                                    .background(Color(#colorLiteral(red: 0.5280093551, green: 0.4946141839, blue: 1, alpha: 1)))
                                    .foregroundColor(.white)
                                    .cornerRadius(25)
                            }
                            .padding()
                                                    
                            VStack {
                                Image("blueGradient2")
                                    .resizable()
                                    .frame(width: 150, height: 250)
    //                                .cornerRadius(25)
                                    .border(Color.white, width: 2)
                                
                                Button("Select", action: { saveData(index: 1) })
                                    .frame(width: 110, height: 40)
                                    .background(Color(#colorLiteral(red: 0.5280093551, green: 0.4946141839, blue: 1, alpha: 1)))
                                    .foregroundColor(.white)
                                    .cornerRadius(25)
                            }
                            .padding()
                        }
                    }
                }
                
                
            }
        }
        //        .navigationBarTitle("Change Chat Background")
    }
    
    private func saveData(index: Int) {
        print("Saving new static background as option #\(index)")
        var user = UserDataSource().getCurrentUser()
        user.background = index
        UserDataSource().updateUser(user: user)
    }
}

struct ChangeBackground_Previews : PreviewProvider {
    static var previews: some View {
        ChangeBackground()
    }
}

