//
//  ReserveElectricity.swift
//  Parking
//
//  Created by Nirmalsinh Rathod on 31/05/24.
//

import SwiftUI

struct ReserveElectricity: View {
    @State private var navigateToNextScreen = false
    @State private var offset = CGSize.zero
    
    var body: some View {
        NavigationStack{
            GeometryReader { geometry in
                ScrollView{
                    ZStack{
                        Color("backGround")
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        WaveShape(amplitude: -30, frequency: 2)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(hex: "33AD5F"), Color("waveColor2")]), startPoint: .top, endPoint: .bottom))
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        VStack{
                            BackView()
                            HStack{
                                Image("flash")
                                    .resizable()
                                    .frame(width: 24,height: 24)
                                    .aspectRatio(contentMode: .fit)
                                Text("Reserve Electricity")
                                    .foregroundColor(Color(hex: "FFB039"))
                                    .bold()
                                
                            }
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                            .padding(.top,20)
                            
                            Text("How much energy do you need?")
                                .font(.system(size: 40))
                                .minimumScaleFactor(0.01)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text("You hava 10%")
                                .bold()
                                .font(.title3)
                                .frame(width: 314,height: 51)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 29)
                                        .stroke(.gray, lineWidth: 1)
                                )
                                .padding(.bottom,20)
                            
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("batterybackColor"))
                                .frame(width: geometry.size.width * 0.12,height: geometry.size.width * 0.04)
                            
                            RoundedRectangle(cornerRadius: 21)
                                .fill(Color("batterybackColor"))
                                .frame(width: geometry.size.width * 0.4,height: geometry.size.width * 0.8)
                                .overlay {
                                    VStack(spacing:  geometry.size.width * 0.02){
                                        RoundedRectangle(cornerRadius: 8)
                                            .fill(Color("Cardback"))
                                            .frame(width: geometry.size.width * 0.3,height: geometry.size.width * 0.1)
                                        ForEach(0..<5)
                                        {index in
                                            RoundedRectangle(cornerRadius: 8)
                                                .fill(Color("batteryFillColor"))
                                                .frame(width: geometry.size.width * 0.3,height: geometry.size.width * 0.1)
                                        }
                                        
                                    }
                                    
                                }
                            
                            Text("90%")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .bold()
                            
                            Spacer()
                            NavigationLink {
                                ChargingPoint()
                                    .navigationBarBackButtonHidden(true)
                            } label: {
                                Text("Select Port")
                                    .font(.title3)
                                    .bold()
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                        .padding(.bottom,20)
                        .padding(.horizontal,36)
                    }
                }
            }
           
        }
    }
}


#Preview {
    ReserveElectricity()
}
