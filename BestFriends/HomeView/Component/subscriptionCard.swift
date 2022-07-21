//
//  subscriptionCard.swift
//  BestFriends
//
//  Created by Dhaval Desai on 7/20/22.
//

import SwiftUI

struct subscriptionCard: View {
    @EnvironmentObject var cartManager: cartManager
    var product: subscription
    
    var body: some View {
        ScrollView{
        ZStack(alignment: .topTrailing) {
            Color.purple
                            .ignoresSafeArea()
            ZStack(alignment: .bottom) {

                /*VStack{
                    //                Text("Getting STARTED")
                    ////                    .foregroundColor(.gray)
                    //                    .foregroundColor(ColorManager.grey2)
                    //                    .font(.system(size: 25, weight: .bold))
                    //
                    //                Spacer()
                    //                .frame(height: 5)
                                    
                                    Text("Select Plan")
                                        .font(.system(size: 40))
                                        .fontWeight(.thin)
                                        .multilineTextAlignment(.center)
                                       .foregroundColor(Color.purple)
                                  
                                    Spacer()
                                    .frame(height: 15)
                                    
                                    NavigationLink(
                                        destination: EmptyView(),
                                        label: {
                                            Text("BestFriends")
                                                .fontWeight(.thin)
                                                .frame(width: 300, height: 40)
                                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                .font(.system(size: 20))
                                                .background(ColorManager.purple3)
                                                .cornerRadius(15)
                                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                      
                                        }
                                    )
                                  
                                    
                                 
                                    
                                    Text("-FREE")
                                        .font(.system(size: 15))
                                        .fontWeight(.light)
                                        .multilineTextAlignment(.center)
                    //                    .foregroundColor(Color.white)
                                        .foregroundColor(ColorManager.grey1)
                                    
                                    Text("-Access to all Features listed on previous page")
                                        .font(.system(size: 15))
                                        .fontWeight(.light)
                                        .multilineTextAlignment(.center)
                    //                    .foregroundColor(Color.white)
                                        .foregroundColor(ColorManager.grey1)
                                 
                                    VStack {
                                   
                                        
                                    Text("-Can Add up to 5 friends")
                                        .font(.system(size: 15))
                                        .fontWeight(.light)
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(ColorManager.grey1)
                    //                    .foregroundColor(.gray)

                                 
                                    }
                                    Spacer()
                                    .frame(height: 15)
                                   
                                VStack {
                                    
                                    
                                    
                                    NavigationLink(
                                        destination: EmptyView(),
                                        label: {
                                            Text("BestFrends PURPLE")
                                                .fontWeight(.thin)
                                                .frame(width: 300, height: 40)
                                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                .font(.system(size: 20))
                                                .background(ColorManager.purple3)
                                                .cornerRadius(15)
                                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                      
                                        })
                                  
                                 
                                  
                                    
                                    Text("-Customize Planets \n-Choose Premium backgrounds \n-???")
                                        .font(.system(size: 15))
                                        .fontWeight(.light)
                                        .multilineTextAlignment(.center)
                    //                    .foregroundColor(Color.white)
                                        .foregroundColor(ColorManager.grey1)
                                    
                                    Text("-.99 Cents per Month \n-$10 per year")
                                        .font(.system(size: 15))
                                        .fontWeight(.light)
                                        .multilineTextAlignment(.center)
                    //                    .foregroundColor(Color.white)
                                        .foregroundColor(ColorManager.grey1)
                                   
                                    Spacer()
                                    .frame(height: 15)

                                 
                                    
                                VStack {
                                    
                                    
                                    
                                    NavigationLink(
                                        destination: SubscriptionsInfoView(),
                                        label: {
                                            Text("BestFriends FAMILY - BEST DEAL")
                                                .fontWeight(.thin)
                                                .frame(width: 300, height: 40)
                                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                .font(.system(size: 20))
                                                .background(ColorManager.purple3)
                                                .cornerRadius(15)
                                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                      
                                        })
                                    
                                    
                                    Text("-Add up to 10 users per User")
                                        .font(.system(size: 15))
                                        .fontWeight(.light)
                                        .multilineTextAlignment(.center)
                    //                    .foregroundColor(Color.white)
                                        .foregroundColor(ColorManager.grey1)
                                    
                                    Text("-Designed to minimize 'Dysfunction'")
                                        .font(.system(size: 15))
                                        .fontWeight(.light)
                                        .multilineTextAlignment(.center)
                    //                    .foregroundColor(Color.white)
                                        .foregroundColor(ColorManager.grey1)
                                    
                                    Text("-Access all BestFriend's Premium benefits")
                                        .font(.system(size: 15))
                                        .fontWeight(.light)
                                        .multilineTextAlignment(.center)
                    //                    .foregroundColor(Color.white)
                                        .foregroundColor(ColorManager.grey1)
                                    
                                    
                                    Text("-$2 per month")
                                        .font(.system(size: 15))
                                        .fontWeight(.light)
                                        .multilineTextAlignment(.center)
                    //                    .foregroundColor(Color.white)
                                        .foregroundColor(ColorManager.grey1)
                                    
                                    
                                    Text("-$19.95 per year")
                                        .font(.system(size: 15))
                                        .fontWeight(.light)
                                        .multilineTextAlignment(.center)
                    //                    .foregroundColor(Color.white)
                                        .foregroundColor(ColorManager.grey1)
                                  
                                    Spacer()
                                    .frame(height: 200)
                                   
                              
                           
                                }
                            }
                            
                        }*/
                
                VStack(alignment: .leading) {
                    Text(product.name)
                        .bold()
                    
                    Text("$\(product.price)")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 3)
            
            Button {
                cartManager.addtoCart(product: product)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
        }
    }
}
}

struct subscriptionCard_Previews: PreviewProvider {
    static var previews: some View {
        subscriptionCard(product: subscriptionList[0])
            .environmentObject(cartManager())
    }
}

