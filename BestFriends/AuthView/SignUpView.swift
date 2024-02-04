//
//  SignUpView.swift
//  BestFriends
//
//  Created by Alex Titov on 3/30/22.
//

import SwiftUI
import CoreLocation
import CoreLocationUI

struct SignUpView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @StateObject var locationManager = LocationManager()
    
    @State private var firstname = ""
    @State private var lastname = ""
    @State private var email = ""
    @State private var password = ""
    @State private var age: Int = 0
    @State private var ageString = ""
    @State private var gender = ""
    let genders = ["Male", "Female", "Other"]
    @State private var locationString = "Not shared"
    
    @State private var errorMessage = ""
    
    var body: some View {
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
                .opacity(0.7)

            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.9)
            
            AdPlayerView(name: "moonShots")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.45)
            
            ZStack {
                Circle()
                    .frame(width: 400, height: 400)
                    .foregroundColor(ColorManager.purple3)
                    .offset(x: 200, y: -450)
                
                Circle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(ColorManager.purple3)
                    .offset(x: -200, y: 400)
            }
            
            
            VStack {

           
                
                VStack {
                    HStack {
                        MainTextField(text: $firstname, placeholder: "First Name")
                        
                        MainTextField(text: $lastname, placeholder: "Last Name")
                    }
                    .padding(.horizontal, 40)
                    .padding(.vertical, 15)
                    
                    MainTextField(text: $email, placeholder: "Email")
                        .padding(.horizontal, 40)
                        .padding(.vertical, 15)
                    
                    MainSecureField(text: $password, placeholder: "Password")
                        .padding(.horizontal, 40)
                        .padding(.vertical, 15)
                    
                    HStack {
                        MainTextField(text: $ageString, placeholder: "Age")
                            .keyboardType(.decimalPad)
                        
                        
                        Menu {
                            Picker(selection: $gender) {
                                ForEach(genders, id: \.self) { g in
                                    Text(g)
                                        .tag(g)
                                        .font(.largeTitle)
                                }
                            } label: {}
                        } label: {
                            if gender.count == 0 {
                                Text("Gender")
                                    .frame(width: 200)
                                    .overlay(RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.gray)
                                        .frame(height: 40)
                                    )
                                    .font(Font.custom("MainFont", size: 20))
                                    .foregroundColor(.gray)
                            } else {
                                Text(gender)
                                    .frame(width: 200)
                                    .overlay(RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.gray)
                                        .frame(height: 40)
                                    )
                                    .font(Font.custom("MainFont", size: 20))
                                    .foregroundColor(.gray)
                            }
                        }
                        
                    }
                    .padding(.horizontal, 40)
                    .padding(.vertical, 15)
                    
                    
                    
                    VStack {
                        LocationButton(.shareCurrentLocation) {
                            locationManager.requestLocation()
                        }
                        .frame(height: 40)
                        .cornerRadius(10)
                    }
                    .padding(.horizontal, 40)
                    .padding(.vertical, 5)
                    
                    
                }
                
//                Spacer().frame(height: 15)
                
                Text(errorMessage)
                    .foregroundColor(ColorManager.red)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                
                Button(action: {
                    if checkFields() {
                        email = email.lowercased()
                        let data = SignUpUserData(firstName: firstname, lastName: lastname, credentials: Credentials(email: email, password: password), age: age, gender: gender, location: locationString)
                        // Sign up
                        RestApi.instance.signUp(data).then{ response in
                            //   self.removeActivityIndicator(myActivityIndicator)
                            print("Response: ", response)
                            sessionManager.login(email: email, password: password)
                        }.catch { err in
                            print("Got error")
                            print(err)
                            //  self.removeActivityIndicator(myActivityIndicator)
                            errorMessage = "Cannot Sign Up. Try again"
                        }
                    }
                }) {
                    CustomButtonInterior(text: "Sign Up", backgroundColor: ColorManager.purple4, textColor: ColorManager.grey1)
                }
                
                
                // Terms of Service and Privacy Policy footer
                Text("By signing up, you agree to our")
                    .foregroundColor(.white)
                
                HStack {
                    Link("Terms of Service", destination: URL(string: "https://socialtechlabs.com/terms-service/")!)
                        .foregroundColor(Color.blue)
                    
                    Text("and")
                        .foregroundColor(.white)
                    
                    Link("Privacy Policy", destination: URL(string: "https://socialtechlabs.com/privacy-policy-2/")!)
                        .foregroundColor(Color.blue)
                }
                
                Text("Login")
                    .underline()
                    .font(.system(size: 25))
                    .frame(width: 150, height: 50)
                    .foregroundColor(ColorManager.purple3)
                    .onTapGesture {
                        sessionManager.showLogin()
                    }
//                    .padding()
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
    
    private func checkFields() -> Bool {
        
        errorMessage = "Fill out all fields"
        
        if firstname == "" || lastname == "" {
            return false
        }
        
        if isValidEmail() == false {
            errorMessage = "Email is taken or is not valid"
            return false
        }
        
        if password.count < 4 {
            errorMessage = "Password must be longer than 4 character"
            return false
        }
        
        if let a = Int(ageString) {
            age = a
            if age < 12 { return false }
        } else { return false }
        
        if gender.count == 0 {
            return false
        }
        
        if let placemark = locationManager.placemark {
            print("Your location: \(placemark.description)")
            locationString = placemark.description
        }
        
        return true
    }
    
    
    private func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        if emailPred.evaluate(with: email) == false {
            return false
        }
        
        return true
    }
    
}
