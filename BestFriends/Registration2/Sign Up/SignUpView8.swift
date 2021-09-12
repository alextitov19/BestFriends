//
//  SignUpView6.swift
//  BestFriends
//
//  Created by Alex Titov on 8/22/21.
//

import SwiftUI

struct SignUpView8: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State private var selectedPronoun = "She/Her"
    private let pronouns = ["She/Her", "He/Him", "They/Them", "Other", "Prefer not to say"]
    
    @State private var readyToGo = false
    @State private var locationString = ""
    
    private let locationManager = LocationManager()
    
    let username: String
    let firstname: String
    let lastname: String
    let email: String
    let password: String
    let date: Date

    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.932589829, green: 0.9314347506, blue: 0.9335541129, alpha: 1))
                .ignoresSafeArea()
            
            ZStack {
                Circle()
                    .frame(width: 400, height: 400)
                    .foregroundColor(Color(#colorLiteral(red: 0.7975029945, green: 0.7191545963, blue: 0.9469521642, alpha: 1)))
                    .offset(x: 200, y: -400)
                
                Circle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(Color(#colorLiteral(red: 0.7975029945, green: 0.7191545963, blue: 0.9469521642, alpha: 1)))
                    .offset(x: -200, y: 400)
            }
            
            VStack {
                Spacer().frame(height: 80)
                
                HStack {
                    Text("2/3")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(Color(#colorLiteral(red: 0.6782051325, green: 0.5380625725, blue: 0.9619095922, alpha: 1)))
                        .onAppear {
                            guard let exposedLocation = self.locationManager.exposedLocation else {
                                print("User denied location")
                                return
                            }
                            
                            self.locationManager.getPlace(for: exposedLocation) { placemark in
                                guard let placemark = placemark else { return }
                                
                                locationString = ""
                                if let country = placemark.country {
                                    locationString = locationString + "\(country)"
                                }
                                if let state = placemark.administrativeArea {
                                    locationString = locationString + ", \(state)"
                                }
                                if let town = placemark.locality {
                                    locationString = locationString + ", \(town)"
                                }
                            }
                        }
                    
                    Spacer()
                }
                .padding(.horizontal, 40)
                
                HStack {
                    Text("Which pronouns do you prefer?")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.black)

                    Spacer()
                }
                .padding(.horizontal, 40)
                
                HStack {
                    Text("Your friends will not see your selection.")
                        .font(.system(size: 18, weight: .light))
                        .foregroundColor(.black)

                    Spacer()
                }
                .padding(.horizontal, 40)
                
                
                Section {
                    Picker("Select your pronouns", selection: $selectedPronoun) {
                        ForEach(pronouns, id: \.self) {
                            Text($0)
                                .foregroundColor(.black)
                        }
                    }
                    .foregroundColor(.black)
                }
                
                
                
                Spacer()
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            
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
                
                Button(action: {
                    readyToGo = true
                }) {
                    Text("NEXT")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.white)
                        .frame(maxWidth: 200)
                        .frame(height: 60)
                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(20)
                        .padding(30)
                    
                }
                
                NavigationLink("", destination: SignUpView9(username: username, firstname: firstname, lastname: lastname, email: email, password: password, date: date, pronoun: selectedPronoun, location: locationString).environmentObject(sessionManager), isActive: $readyToGo)

            }
        }
    }
}
