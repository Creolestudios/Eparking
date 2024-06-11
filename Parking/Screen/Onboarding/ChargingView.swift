//
//  ChargingView.swift
//  Parking
//
//  Created by Nirmalsinh Rathod on 31/05/24.
//

import SwiftUI

struct ChargingView: View {
    var body: some View {
        ZStack{
            (Color("backGround"))
            GeometryReader { geometry in
                    VStack{
                        HStack{
                            Image("RoadLine")
                                .resizable()
                                .frame(width: geometry.size.width * 0.01,height: geometry.size.width * 0.5)
                                .aspectRatio(contentMode: .fit)
                            
                            Image("TopViewCar")
                                .resizable()
                                .frame(width: geometry.size.width * 0.3,height:  geometry.size.width * 0.6)
                                .aspectRatio(contentMode: .fit)
                                .padding(.horizontal,50)
                            
                            Image("RoadLine")
                                .resizable()
                                .frame(width: geometry.size.width * 0.01,height: geometry.size.width * 0.5)
                                .aspectRatio(contentMode: .fit)
                        }
                        
                        VStack{
                            HStack{
                                Image("flash")
                                    .resizable()
                                    .frame(width: geometry.size.width * 0.1,height: geometry.size.width * 0.1)
                                    .aspectRatio(contentMode: .fit)
                                
                                Text("Charging")
                                    .foregroundColor(Color("textColor"))
                                    .font(Font.system(size:  geometry.size.width * 0.05))
                                
                            }
                            
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                            
                            
                            Text("Awesome 🧤experience car energy charge")
                                .font(.system(size:  geometry.size.width * 0.1))
                                .foregroundColor(Color("textColor"))
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                            
                            
                            HStack{
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color(hex: "EFEEF6"))
                                    .frame(height: 73)
                                    .overlay {
                                        Text("Skip")
                                            .font(Font.system(size: 20))
                                            .foregroundColor(.black)
                                    }
                                
                                
                                NavigationLink {
                                    HomeView()
                                        .navigationBarBackButtonHidden(true)
                                } label: {
                                    RoundedRectangle(cornerRadius: 15)
                                        .fill(Color.indigo)
                                        .frame(height: 73)
                                        .overlay(alignment: .center) {
                                            Text("Next")
                                                .font(Font.system(size: 20))
                                                .foregroundColor(.white)
                                        }
                                    
                                }
                                
                            }
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .padding(.top,30)
                        }
                        .padding(.top,30)
                        .padding(.horizontal,20)
                        
                    }
                    .frame(maxHeight:.infinity)
                
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ChargingView()
}
