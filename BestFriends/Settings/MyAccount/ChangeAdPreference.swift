//
//  ChangeAdPreference.swift
//  BestFriends
//
//  Created by Alex Titov on 7/15/21.
//

import SwiftUI

struct ChangeAdPreference: View {
    
    @State var selectedOptions: [Int] = []
    @State var hasSaved = false

    let userDS = UserDataSource()
    
    var body: some View {
        ZStack {
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                
                Text("Change Ad Preference")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .padding(20)
                
                Text("Saved")
                    .font(.system(size: 40))
                    .foregroundColor(.green)
                    .multilineTextAlignment(.center)
                    .shadow(color: Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)), radius: 22)
                    .isHidden(!hasSaved)
                
                VStack {
                    Button(action: {
                        updateArray(number: 1)
                    }) {
                        Text("Beauty / Fashion")
                            .frame(width: 300, height: 50, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                            .background(selectedOptions.contains(3) ? Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)) : Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            .padding(15)
                    }
                    
                    Button(action: {
                        updateArray(number: 2)
                    }) {
                        Text("Health / Nutrition")
                            .frame(width: 300, height: 50, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                            .background(selectedOptions.contains(3) ? Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)) : Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            .padding(15)
                    }
                    
                    Button(action: {
                        updateArray(number: 3)
                    }) {
                        Text("Sports / Fitness / Apperel")
                            .frame(width: 300, height: 50, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                            .background(selectedOptions.contains(3) ? Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)) : Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            .padding(15)
                    }
                    
                    Button(action: {
                        updateArray(number: 4)
                    }) {
                        Text("Lifestyle")
                            .frame(width: 300, height: 50, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                            .background(selectedOptions.contains(3) ? Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)) : Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            .padding(15)
                    }
                    
                    
                    Button(action: {
                        updateArray(number: 5)
                    }) {
                        Text("Social Impact / NGO")
                            .frame(width: 300, height: 50, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                            .background(selectedOptions.contains(3) ? Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)) : Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            .padding(15)
                    }
                    
                }
                
                Button(action: {
                    saveData()
                }) {
                    Text("Submit")
                        .font(.title)
                        .frame(width: 200, height: CGFloat(selectedOptions.count > 0 ? 50 : 0))
                        .disabled(selectedOptions.count == 0)
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        .padding(25)
                }
                
                Spacer()
                    .frame(height: 40)
            }
        }
    }
    
    private func updateArray(number: Int) {
        if selectedOptions.contains(number) {
            if let index = selectedOptions.firstIndex(of: number) {
                selectedOptions.remove(at: index)
            }
        } else {
            selectedOptions.append(number)
        }
    }
    
    private func saveData() {
        var user = userDS.getCurrentUser()
        user.adPreference = selectedOptions
        userDS.updateUser(user: user)
        hasSaved = true
    }
}
