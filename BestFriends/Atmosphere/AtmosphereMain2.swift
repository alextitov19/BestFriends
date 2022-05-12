//
//  AtmosphereMain2.swift
//  BestFriends
//
//  Created by Social Tech on 5/12/22.
//


import Foundation
import SwiftUI


struct AtmosphereMain2: View {
 
    @State var didTap:Bool = false
    
    var body: some View {
        
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .onAppear {
                   
                }
 
    VStack {
          
        
        Text("Today I'm Feeling ...")
            .font(.system(size: 23))
            .fontWeight(.regular)
            .foregroundColor(Color.white)
            .multilineTextAlignment(.leading)
            .padding(.trailing, 160.0)
        
        Text("(Select your current mood)")
            .font(.system(size: 15))
            .italic()
            .fontWeight(.regular)
            .foregroundColor(Color.white)
            .multilineTextAlignment(.leading)
            .padding(.trailing, 160.0)
        
//    Spacer()
//        .frame(height: 20)
//
    HStack {
        VStack {
      
                          Button(action: {
                                  self.didTap = true
                              }) {
      
                              Text("Upset")
                                      .font(.system(size: 17))
                                      .foregroundColor(Color.black)
                              }
                              .frame(width: 80, height: 30, alignment: .center)
                              .background(didTap ? Color.blue : Color.gray)
                              .cornerRadius(7)
                              .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
      
      
              Spacer()
                  .frame(height: 20)
      
              Button(action: {
                      self.didTap = true
                  }) {
      
                  Text("Stressed")
                          .font(.system(size: 17))
                          .foregroundColor(Color.black)
                  }
                  .frame(width: 80, height: 30, alignment: .center)
                  .background(didTap ? Color.blue : Color.gray)
                  .cornerRadius(7)
                  .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
      
                          
                Spacer()
                    .frame(height: 20)
                          
                    Button(action: {
                        self.didTap = true
                        }) {
                          
                        Text("Sad")
                            .font(.system(size: 17))
                            .foregroundColor(Color.black)
                        }
                            .frame(width: 80, height: 30, alignment: .center)
                            .background(didTap ? Color.blue : Color.gray)
                            .cornerRadius(7)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                          
                          
                Spacer()
                    .frame(height: 20)
                          
                    Button(action: {
                        self.didTap = true
                        }) {
                          
                        Text("Lonely")
                            .font(.system(size: 17))
                            .foregroundColor(Color.black)
                        }
                            .frame(width: 80, height: 30, alignment: .center)
                            .background(didTap ? Color.blue : Color.gray)
                            .cornerRadius(7)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                          
                      }
        
        Spacer()
            .frame(width: 40)
        
        VStack {
      
                          Button(action: {
                                  self.didTap = true
                              }) {
      
                              Text("Okay")
                                      .font(.system(size: 17))
                                      .foregroundColor(Color.black)
                              }
                              .frame(width: 80, height: 30, alignment: .center)
                              .background(didTap ? Color.green : Color.gray)
                              .cornerRadius(7)
                              .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
      
            
            Spacer()
                .frame(height: 20)
            
                                Button(action: {
                                        self.didTap = true
                                    }) {
            
                                    Text("Bored")
                                            .font(.system(size: 17))
                                            .foregroundColor(Color.black)
                                    }
                                    .frame(width: 80, height: 30, alignment: .center)
                                    .background(didTap ? Color.orange : Color.gray)
                                    .cornerRadius(7)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
            
            
            
        }
        
            Spacer()
                .frame(width: 40)
        
        VStack {
      
                          Button(action: {
                                  self.didTap = true
                              }) {
      
                              Text("Happy")
                                      .font(.system(size: 17))
                                      .foregroundColor(Color.black)
                              }
                              .frame(width: 80, height: 30, alignment: .center)
                              .background(didTap ? Color.yellow : Color.gray)
                              .cornerRadius(7)
                              .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
      
      
              Spacer()
                  .frame(height: 20)
      
              Button(action: {
                      self.didTap = true
                  }) {
      
                  Text("Excited")
                          .font(.system(size: 17))
                          .foregroundColor(Color.black)
                  }
                  .frame(width: 80, height: 30, alignment: .center)
                  .background(didTap ? Color.yellow : Color.gray)
                  .cornerRadius(7)
                  .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
      
                          
                Spacer()
                    .frame(height: 20)
                          
                    Button(action: {
                        self.didTap = true
                        }) {
                          
                        Text("Powerful")
                            .font(.system(size: 17))
                            .foregroundColor(Color.black)
                        }
                            .frame(width: 80, height: 30, alignment: .center)
                            .background(didTap ? Color.yellow : Color.gray)
                            .cornerRadius(7)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                          
                          
                Spacer()
                    .frame(height: 20)
                          
                    Button(action: {
                        self.didTap = true
                        }) {
                          
                        Text("Carefree")
                            .font(.system(size: 17))
                            .foregroundColor(Color.black)
                        }
                            .frame(width: 80, height: 30, alignment: .center)
                            .background(didTap ? Color.yellow : Color.gray)
                            .cornerRadius(7)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
            
            }
        
    }
    .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing], 65.0/*@END_MENU_TOKEN@*/)
    }
    .padding(/*@START_MENU_TOKEN@*/.all, 0.0/*@END_MENU_TOKEN@*/)
        
            }
                   
        }
    }

        
        
struct AtmosphereMain2_Previews : PreviewProvider {
    static var previews: some View {
        AtmosphereMain2()
                }

            }
