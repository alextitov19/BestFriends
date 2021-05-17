//
//  PinView.swift
//  BestFriends
//
//  Created by Alex Titov on 5/17/21.
//

import SwiftUI

struct PinView: View {
    
    @State var currentPin: String = ""
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
                .ignoresSafeArea()
        
            VStack {
                Text(currentPin)
                    .frame(width: 200, height: 40)
                    .background(Color.white)
                Spacer().frame(height: 40)
                HStack {
                    Button(action: { currentPin.append("7") }) {
                        Text("7")
                           .frame(width: 100, height: 100)
                           .foregroundColor(Color.white)
                           .background(Color.clear)
                           .clipShape(Circle())
                            .overlay(
                                RoundedRectangle(cornerRadius: 85)
                                    .stroke(Color.white, lineWidth: 2)
                            )
                    }
                    
                    Spacer().frame(width: 20)
                    
                    Button(action: { currentPin.append("8") }) {
                        Text("8")
                           .frame(width: 100, height: 100)
                           .foregroundColor(Color.white)
                           .background(Color.clear)
                           .clipShape(Circle())
                            .overlay(
                                RoundedRectangle(cornerRadius: 85)
                                    .stroke(Color.white, lineWidth: 2)
                            )
                    }
                    
                    Spacer().frame(width: 20)
                    
                    Button(action: { currentPin.append("9") }) {
                        Text("9")
                           .frame(width: 100, height: 100)
                           .foregroundColor(Color.white)
                           .background(Color.clear)
                           .clipShape(Circle())
                            .overlay(
                                RoundedRectangle(cornerRadius: 85)
                                    .stroke(Color.white, lineWidth: 2)
                            )
                    }
                }
                
                Spacer().frame(height: 20)
                
                HStack {
                    Button(action: { currentPin.append("4") }) {
                        Text("4")
                           .frame(width: 100, height: 100)
                           .foregroundColor(Color.white)
                           .background(Color.clear)
                           .clipShape(Circle())
                            .overlay(
                                RoundedRectangle(cornerRadius: 85)
                                    .stroke(Color.white, lineWidth: 2)
                            )
                    }
                    
                    Spacer().frame(width: 20)
                    
                    Button(action: { currentPin.append("5") }) {
                        Text("5")
                           .frame(width: 100, height: 100)
                           .foregroundColor(Color.white)
                           .background(Color.clear)
                           .clipShape(Circle())
                            .overlay(
                                RoundedRectangle(cornerRadius: 85)
                                    .stroke(Color.white, lineWidth: 2)
                            )
                    }
                    
                    Spacer().frame(width: 20)
                    
                    Button(action: { currentPin.append("6") }) {
                        Text("6")
                           .frame(width: 100, height: 100)
                           .foregroundColor(Color.white)
                           .background(Color.clear)
                           .clipShape(Circle())
                            .overlay(
                                RoundedRectangle(cornerRadius: 85)
                                    .stroke(Color.white, lineWidth: 2)
                            )
                    }
                }
                
                Spacer().frame(height: 20)
                
                HStack {
                    Button(action: { currentPin.append("1") }) {
                        Text("1")
                           .frame(width: 100, height: 100)
                           .foregroundColor(Color.white)
                           .background(Color.clear)
                           .clipShape(Circle())
                            .overlay(
                                RoundedRectangle(cornerRadius: 85)
                                    .stroke(Color.white, lineWidth: 2)
                            )
                    }
                    
                    Spacer().frame(width: 20)
                    
                    Button(action: { currentPin.append("2") }) {
                        Text("2")
                           .frame(width: 100, height: 100)
                           .foregroundColor(Color.white)
                           .background(Color.clear)
                           .clipShape(Circle())
                            .overlay(
                                RoundedRectangle(cornerRadius: 85)
                                    .stroke(Color.white, lineWidth: 2)
                            )
                    }
                    
                    Spacer().frame(width: 20)
                    
                    Button(action: { currentPin.append("3") }) {
                        Text("3")
                           .frame(width: 100, height: 100)
                           .foregroundColor(Color.white)
                           .background(Color.clear)
                           .clipShape(Circle())
                            .overlay(
                                RoundedRectangle(cornerRadius: 85)
                                    .stroke(Color.white, lineWidth: 2)
                            )
                    }
                }
                
                Spacer().frame(height: 20)
                
                Button(action: { currentPin.append("0") }) {
                    Text("0")
                       .frame(width: 100, height: 100)
                       .foregroundColor(Color.white)
                       .background(Color.clear)
                       .clipShape(Circle())
                        .overlay(
                            RoundedRectangle(cornerRadius: 85)
                                .stroke(Color.white, lineWidth: 2)
                        )
                }
            }
            
        }
    }
}


struct PinView_Previews : PreviewProvider {
    static var previews: some View {
        PinView()
    }
}
