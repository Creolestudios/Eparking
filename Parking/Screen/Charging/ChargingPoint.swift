//
//  ChargingPoint.swift
//  Parking
//
//  Created by Nirmalsinh Rathod on 31/05/24.
//

import SwiftUI

struct ChargingPoint: View {
    var body: some View {
        ScrollView{
            ZStack{
                Color("backGround")
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    BackView()
                    CommonHeader(title: "Select charging ports", leftIcon: "chevron.up")
                    VStack(spacing:55){
                        NavigationLink {
                            PaymentOptions()
                                .navigationBarBackButtonHidden(true)
                        } label: {
                            PortView(title: "CHADEMO",value:"$3.5/ KWt",leftIcon: "arrow.up.right")
                            
                        }
                        .buttonStyle(PlainButtonStyle())

                        PortView(title: "Type 2-3", value: "$4.41/ KWt",leftIcon: "arrow.up.right")
                    }
                    Spacer()
                }
                .padding(.horizontal,36)
            }
        }
 
    }
}

#Preview {
    ChargingPoint()
}
