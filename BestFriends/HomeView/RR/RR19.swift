//
//  RR19.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 8/18/23.
//

//import SwiftUI
//
//struct RR19: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct RR19_Previews: PreviewProvider {
//    static var previews: some View {
//        RR19()
//    }
//}
//


import Foundation
import SwiftUI
import AVKit


struct RR19: View {
    
   
    @State var audioPlayer: AVAudioPlayer!
    
    var body: some View {
        
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
            //                    .scaledToFill()
                .blendMode(.screen)
            
            VStack {
                
                
//
//                VStack {
//                    Text("a white linen dress")
//                        .font(.system(size: 14))
//                        .foregroundColor(ColorManager.purple2)
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//
//                    Spacer()
//                        .frame(height: 20)
                    
                    Text("The souls of your feet slightly numbing \non the cold, firm, wet sand")
                        .font(.system(size: 12))
                        .foregroundColor(ColorManager.purple2)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 9)
                    
                    Text("Hypnotically stepping forward into the endless night,")
                        .font(.system(size: 12))
                        .foregroundColor(ColorManager.purple2)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    
                    Text("seemingly forever, not wanting to turn around")
                        .font(.system(size: 12))
                        .foregroundColor(ColorManager.purple2)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    
                
                    
                    Spacer()
                        .frame(height: 9)
                    
                    Text("The still darkness interrupted by the \ndeafening roar of the waves to your left")
                        .font(.system(size: 12))
                        .foregroundColor(ColorManager.purple2)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 11)
           
                    
                    VStack {
                      
                        
                        Text("In between the crash of each rhythmic wave,")
                            .font(.system(size: 12))
                            .foregroundColor(ColorManager.purple2)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
         
                
                Text("the faint sounds of the city off to the right somewhere,")
                    .font(.system(size: 12))
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
                Text("glow of the light generated by everyone busy reflecting upward")
                    .font(.system(size: 12))
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 11)
                
                Text("In between the crash of each rhythmic wave,")
                    .font(.system(size: 12))
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 9)
                
                Text("the faint sounds of the city off to the right somewhere, the glow")
                    .font(.system(size: 11))
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 9)
                
               
                        
    VStack {
                 
        Text("of the light generated by everyone busy reflecting upward")
            .font(.system(size: 12))
            .foregroundColor(ColorManager.purple2)
            .fontWeight(.light)
            .multilineTextAlignment(.center)
        
                
                Spacer()
                    .frame(height: 9)
        
        
                            Text("Your easy gaze focused on the narrow glisten of")
                                .font(.system(size: 12))
                                .foregroundColor(ColorManager.purple2)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                            Text("moonlight along the edge of each crested wave")
                                .font(.system(size: 12))
                                .foregroundColor(ColorManager.purple2)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                            
                            Spacer()
                                .frame(height: 9)
                            
                            Text("You carry your shoes by the thin straps in one hand,")
                                .font(.system(size: 12))
                                .foregroundColor(ColorManager.purple2)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                            Text("the other with fingers intertwined in his")
                                .font(.system(size: 12))
                                .foregroundColor(ColorManager.purple2)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                            
                            Spacer()
                                .frame(height: 9)
                            
                            Text("The air cool on your face after the day’s hot sun")
                                .font(.system(size: 12))
                                .foregroundColor(ColorManager.purple2)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                            
                            
                            
                            
                            VStack {
                                
                                Spacer()
                                    .frame(height: 9)
                                
                                Text("A wave, splashes up cold just over your knee,")
                                    .font(.system(size: 12))
                                    .foregroundColor(ColorManager.purple2)
                                    .fontWeight(.light)
                                    .multilineTextAlignment(.center)
                                Text("startled, you jump into him")
                                    .font(.system(size: 12))
                                    .foregroundColor(ColorManager.purple2)
                                    .fontWeight(.light)
                                    .multilineTextAlignment(.center)
                                
                                Spacer()
                                    .frame(height: 9)
                                
                                Text("He catches you, feeling safety in his arms")
                                    .font(.system(size: 12))
                                    .foregroundColor(ColorManager.purple2)
                                    .fontWeight(.light)
                                    .multilineTextAlignment(.center)
                                
                                
                                VStack {
                                    
                                    Spacer()
                                        .frame(height: 9)
                                    
                                    Text("Your dress wet, it clings cold")
                                        .font(.system(size: 12))
                                        .foregroundColor(ColorManager.purple2)
                                        .fontWeight(.light)
                                        .multilineTextAlignment(.center)
                                    
                                    
                                    Spacer()
                                        .frame(height: 9)
                                    
                                    Text("Under your breath, whispering ")
                                        .font(.system(size: 15))
                                        .foregroundColor(ColorManager.purple2)
                                        .fontWeight(.light)
                                        .multilineTextAlignment(.center)
                                    
                                    Spacer()
                                        .frame(height: 9)
                                    
                                    Text("I love you")
                                        .font(.system(size: 12))
                                        .foregroundColor(ColorManager.purple2)
                                        .fontWeight(.light)
                                        .multilineTextAlignment(.center)
                                    
                                    Spacer()
                                        .frame(height: 9)
                           
                                    
                                    VStack {
                                        
                                        Text("You had never told him that before")
                                            .font(.system(size: 12))
                                            .foregroundColor(ColorManager.purple2)
                                            .fontWeight(.light)
                                            .multilineTextAlignment(.center)
                                        
                                        Spacer()
                                            .frame(height: 0)
                                        
                                        Text("But everything felt so right, it just came out ")
                                            .font(.system(size: 2))
                                            .foregroundColor(ColorManager.purple2)
                                            .fontWeight(.light)
                                            .multilineTextAlignment(.center)
                                        
                                        Spacer()
                                            .frame(height: 9)
                                        
                                        Text("Wondering if he heard it")
                                            .font(.system(size: 12))
                                            .foregroundColor(ColorManager.purple2)
                                            .fontWeight(.light)
                                            .multilineTextAlignment(.center)
                                        
                                        Spacer()
                                            .frame(height: 0)
                                        
                                        Text("A little scared he did")
                                            .font(.system(size: 12))
                                            .foregroundColor(ColorManager.purple2)
                                            .fontWeight(.light)
                                            .multilineTextAlignment(.center)
                                        VStack {
                                            
                                            
                                            Spacer()
                                                .frame(height: 9)
                                            
                                            Text("But deep down hoping he did, just")
                                                .font(.system(size: 12))
                                                .foregroundColor(ColorManager.purple2)
                                                .fontWeight(.light)
                                                .multilineTextAlignment(.center)
                                            Text("wanting him to say it back")
                                                .font(.system(size: 12))
                                                .foregroundColor(ColorManager.purple2)
                                                .fontWeight(.light)
                                                .multilineTextAlignment(.center)
                                            
                                            
                                            
                                            
                                            Spacer()
                                                .frame(height: 9)
                                            
                                            Text("Now very aware of your own uncomfortable silence")
                                                .font(.system(size: 12))
                                                .foregroundColor(ColorManager.purple2)
                                                .fontWeight(.light)
                                                .multilineTextAlignment(.center)
                                            
                                            Spacer()
                                                .frame(height: 9)
                                            
                                            Text("And then he says,")
                                                .font(.system(size: 12))
                                                .foregroundColor(ColorManager.purple2)
                                                .fontWeight(.light)
                                                .multilineTextAlignment(.center)
                                            
                                            Spacer()
                                                .frame(height: 9)
                                            
                                            Text("“I loved you first”")
                                                .font(.system(size: 12))
                                                .foregroundColor(ColorManager.purple2)
                                                .fontWeight(.light)
                                                .multilineTextAlignment(.center)
                                          
                                            
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

