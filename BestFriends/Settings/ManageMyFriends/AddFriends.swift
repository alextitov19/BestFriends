//
//  AddFriends.swift
//  BestFriends
//
//  Created by Social Tech on 6/12/21.
//



import SwiftUI


struct AddFriends: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        NavigationView{
            ZStack {
                
                Image("SignUpPinBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
              
                    
                   
                    
                    
                    VStack {
                       
                        
                        Text("Step 1")
                            
                            .font(.system(size: 22))
                            .fontWeight(.regular)
                            
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.9791358113, blue: 0, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 375, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        
                        Text("Select [Get my QR code]")
                            
                            .font(.system(size: 22))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 375, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        
                        Spacer()
                            .frame(height: 15)
                        
                        
                        Text("Step 2")
                            
                            .font(.system(size: 22))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.9791358113, blue: 0, alpha: 1)))
                           
                            .multilineTextAlignment(.center)
                            .frame(width: 375, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text("Screen-shot your QR code and text image to your friend.")
                            
                            .font(.system(size: 22))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            
                            .multilineTextAlignment(.center)
                            .frame(width: 275, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        
                        Spacer()
                            .frame(height: 15)
                        
                        VStack {
                            
                            Text("Step 3")
                                
                                .font(.system(size: 22))
                                .fontWeight(.regular)
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.9791358113, blue: 0, alpha: 1)))
                               
                                .multilineTextAlignment(.center)
                                .frame(width: 375, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("Ask friend to save QR image to their gallery.")
                                
                                .font(.system(size: 22))
                                .fontWeight(.regular)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                               
                                .multilineTextAlignment(.center)
                                .frame(width: 275, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            
                            
                            
                            Spacer()
                                .frame(height: 15)
                            
                            
                            Text("Step 4")
                                
                                .font(.system(size: 22))
                                .fontWeight(.regular)
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.9791358113, blue: 0, alpha: 1)))
                               
                                .multilineTextAlignment(.center)
                                .frame(width: 375, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("Ask friend to select [My Gallery] and tap the image of your QR code.")
                                
                                .font(.system(size: 22))
                                .fontWeight(.regular)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.center)
                                .frame(width: 375, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Spacer()
                                .frame(height: 55)
                            
                            VStack {
                            
                        
                            
                            Spacer()
                                .frame(height: 55)
                            
                        }
                        
                        VStack {
                            
                     
                            
                            
                            
                        }
                    }
                }
            }
        }
        
    }
}
//struct AddFriends_Previews : PreviewProvider {
//    static var previews: some View {
//        AddFriends()
//    }
//}
        
        
        
        
        
        
        //Text("Ok, got it.")
        //    .onTapGesture {
        //        sessionManager.getCurrentAuthUser()
        //    }
        //    .font(.system(size: 35))
        //    .frame(width: 325, height: 50)
        //    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        //    .overlay(
        //        RoundedRectangle(cornerRadius: 25)
        //            .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 1)
        //    )

}

