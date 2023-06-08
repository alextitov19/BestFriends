//
//  FD_Step1.swift
//  BestFriends
//
//  Created by Social Tech on 7/27/22.
//

import Foundation

import SwiftUI
import AVKit

struct FD_Step1: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        ZStack {
            Image("blueBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                Text("My Parents")
                    .font(.system(size: 40))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.blue)
                
                Spacer()
                    .frame(height: 15)
                
                Text("Family drama may be normal, but it still sucks. We have some suggestions to help handle these conflicts.")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .padding(20)
                
                VStack {
                    Text("If your parents do or say something \nthat makes you extremely angry.")
                        .font(.system(size: 20))
                        .fontWeight(.regular)
                        .foregroundColor(.blue)
                    
                    Spacer()
                        .frame(height: 15)
                    
                    VStack {
                        Text("Try taking a step back and give yourself time to cool down before you address it with them. Then try to discuss things without losing your temper and yelling.")
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                            .padding(.top)
                            .padding(.horizontal)
                        
                        CustomDivider(color: .white)
                            .frame(width: 200)
                    }
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(.white, lineWidth: 1)
                    )
                    .padding(.horizontal, 30)

                    
                    VStack {
                        Spacer()
                            .frame(height: 35)
                        
                        Text("Why do I have negative feeling towards my parents?")
                            .font(.system(size: 20))
                            .fontWeight(.regular)
                            .foregroundColor(Color .blue)
                        
                        Spacer()
                            .frame(height: 5)
                        
                        VStack {
                            Text("Toxic behaviors, abuse, neglect, or conflict are just a few factors that can lead to feelings of animosity.")
                                .foregroundColor(.white)
                                .font(.system(size: 15))
                                .padding(.top)
                                .padding(.horizontal)
                            
                            CustomDivider(color: .white)
                                .frame(width: 200)
                        }
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.white, lineWidth: 1)
                        )
                        .padding(.horizontal, 20)

                        
                        Spacer()
                            .frame(height: 35)
                        
                        NavigationLink(
                            destination: FightWithParents(),
                            label: {
                                Text("NEXT")
                                    .fontWeight(.thin)
                                    .frame(width: 100, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 30))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                        
                        Spacer()
                            .frame(height: 50)
                    }
                }
            }
        }
    }
}
