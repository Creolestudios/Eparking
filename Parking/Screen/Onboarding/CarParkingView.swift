//
//  HomeView.swift
//  Parking
//
//  Created by Nirmalsinh Rathod on 30/05/24.
//

import SwiftUI

struct CarParkingView: View {
    var body: some View {
        
        ZStack {
            Color("backGround").edgesIgnoringSafeArea(.all)
            VStack {
                GeometryReader { geometry in
                    VStack {
                        Circle()
                            .fill(Color.white)
                            .shadow(color: .white, radius: 40)
                            .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 0.6)
                            .overlay(alignment: .center) {
                                Image("Car")
                                    .resizable()
                                    .frame(width: geometry.size.width * 0.9, height: geometry.size.width * 0.5)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack {
                            HStack {
                                Image("greencar")
                                    .resizable()
                                    .frame(width: geometry.size.width * 0.1,height: geometry.size.width * 0.1)
                                
                                Text("Car Parking")
                                    .foregroundColor(Color("textColor"))
                             
                                    .font(Font.system(size:  geometry.size.width * 0.05))
                            }
                    
                            .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text("You can feel best performance on your drive 💪")
                                .font(.system(size:  geometry.size.width * 0.1))
                                .foregroundColor(Color("textColor"))
                                .frame(maxWidth: .infinity,alignment:.leading)
                            
                            HStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color(hex: "EFEEF6"))
                                    .frame(height: 73)
                                    .overlay {
                                        Text("Skip")
                                            .font(.system(size: 20))
                                            .foregroundColor(.black)
                                    }
                                
                                NavigationLink {
                                    ChargingView()
                                        .navigationBarBackButtonHidden(true)
                                } label: {
                                    RoundedRectangle(cornerRadius: 15)
                                        .fill(Color.indigo)
                                        .frame(height: 73)
                                        .overlay(alignment: .center) {
                                            Text("Next")
                                                .font(.system(size: 20))
                                                .foregroundColor(.white)
                                        }
                                }
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 30)
                        }
                        .padding(.top, 30)
                        .padding(.horizontal, 20)
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height)
                }
            }
        }
        
    }
}

#Preview {
    NavigationStack{
        CarParkingView()
    }
}

