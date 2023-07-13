//
//  VirtualHug.swift
//  BestFriends
//
//  Created by Social Tech on 6/4/22.
//


//import CoreHaptics
import SwiftUI
//import CoreHaptics
import AudioToolbox

struct VirtualHug: View {
    //    @State private var engine: CHHapticEngine?
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @State private var showingHeart = true;
    
    var body: some View {
        
        
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()
            //                .onAppear(perform: prepareHaptics)
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            AdPlayerView(name: "")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            VStack {
                
                Button(action: {
                    sessionManager.showLogin()
                },
                    label: {
                    Image("home-alt2")
                        .frame(width: 50, height: 25)
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .background(Color .gray)
                        .cornerRadius(15)
                        .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                        .opacity(0.70)
                    
                })
                
                Spacer()
                    .frame(height: 17)
                
                Text("tap heart,")
                    .font(.system(size: 30))
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                
                Text("hold iPhone to your heart")
                    .font(.system(size: 30))
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                

                
                Spacer()
                    .frame(height: 20)
                
                if (showingHeart) {
                    ZStack {
                        Image(systemName: "heart.fill")
                            .resizable()
                            .foregroundColor(.purple)
                            .frame(width: 150, height: 150)
                            .shadow(color: .blue, radius: 65, x: 30, y: 50)
                            .opacity(0.7)
                        
                        
                        Text("tap")
                            .font(.system(size: 35))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
                            .padding()
                            .onTapGesture {
                                showingHeart = false
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                    AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
                                        AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
                                            AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
                                                AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
                                                    AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
                                                        showingHeart = true
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        
                        //                            complexSuccess()
                        
                    }
                }
                
                //                Button(action: {
                //                    sessionManager.showLogin()
                //                },
                //                       label: {
                //                    Text("Send a Hug back")
                //                        .fontWeight(.thin)
                //                        .frame(width: 250, height: 30)
                //                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                //                        .font(.system(size: 30))
                //                        .background(ColorManager.purple1)
                //                        .cornerRadius(15)
                //                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                //                        .opacity(0.7)
                //                })
                
                Spacer()
                    .frame(height: 300)
            }
        }
    }
    
  
}



