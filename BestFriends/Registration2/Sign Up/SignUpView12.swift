//
//  SignUpView6.swift
//  BestFriends
//
//  Created by Alex Titov on 8/22/21.
//

import SwiftUI

struct SignUpView12: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
        
    var body: some View {
        ZStack {
            VStack {
                Spacer().frame(height: 80)
                
                HStack {
                    Text("3/3")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(Color(#colorLiteral(red: 0.6782051325, green: 0.5380625725, blue: 0.9619095922, alpha: 1)))
                    
                    Spacer()
                }
                .padding(.horizontal, 40)
                
                HStack {
                    Text("What are your interests?")
                        .font(.system(size: 30, weight: .bold))
                    
                    Spacer()
                }
                .padding(.horizontal, 40)
                
                HStack {
                    Text("We don’t use cookies to stalk you outside BestFriends. Instead, we ask you to share with us your interests and show ads based on your preference. You can always revise your decisions later in the setting.")
                        .font(.system(size: 18, weight: .light))
                    
                    Spacer()
                }
                .padding(.horizontal, 40)
                
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        HStack {
                            Text("Lifestyle")
                                .frame(width: 150, height: 200)
                                .background(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)))
                                .cornerRadius(15)
                                .padding(5)
                            
                            Text("Fitness")
                                .frame(width: 150, height: 200)
                                .background(Color(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)))
                                .cornerRadius(15)
                                .padding(5)
                        }
                        
                        HStack {
                            Text("Beauty")
                                .frame(width: 150, height: 200)
                                .background(Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)))
                                .cornerRadius(15)
                                .padding(5)

                            Text("Fashion")
                                .frame(width: 150, height: 200)
                                .background(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                                .cornerRadius(15)
                                .padding(5)
                        }
                        
                        HStack {
                            Text("Travel")
                                .frame(width: 150, height: 200)
                                .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                .cornerRadius(15)
                                .padding(5)

                            Text("Health")
                                .frame(width: 150, height: 200)
                                .background(Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)))
                                .cornerRadius(15)
                                .padding(5)
                        }
                        
                        Button(action: {
                            
                        }) {
                            Text("SUBMIT")
                                .font(.system(size: 20, weight: .semibold))
                                .foregroundColor(.white)
                                .frame(maxWidth: 200)
                                .frame(height: 60)
                                .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                .cornerRadius(20)
                                .padding(30)
                            
                        }
                    }
                }
                
                
                Spacer()
            }
            
            VStack {
                HStack {
                    Image("arrowLeft")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .padding(.horizontal, 30)
                        .onTapGesture {
                            self.mode.wrappedValue.dismiss()
                        }
                    
                    Spacer()
                }
                
                Spacer()
                
                
            }
        }
    }
}

struct SignUpView12Preview : PreviewProvider {
    static var previews: some View {
        SignUpView12()
            .environmentObject(SessionManager())
    }
}
