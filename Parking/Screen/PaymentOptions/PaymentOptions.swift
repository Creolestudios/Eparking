//
//  PaymentOptions.swift
//  Parking
//
//  Created by Nirmalsinh Rathod on 03/06/24.
//

import SwiftUI

struct PaymentOptions: View {
    var body: some View {
        ScrollView{
            ZStack{
                Color("backGround")
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    BackView()
                    CommonHeader(title: "Select payment method", leftIcon: "creditCardEdit", customIcon:true)
                    SectionHeader(title: "Cards", leftTitle: "Top up")
                    VStack(spacing:55){
                        NavigationLink {
                            TicketDetail()
                                .navigationBarBackButtonHidden(true)
                        } label: {
                            PortView(title: "HRK 60.00",value:"Account",leftIcon: "walletLogo",customIcon: true,iconWidth:33 ,iconHeight: 33,titleColor: Color.green,valueColor: Color("textColor"))
                        }
                        .buttonStyle(PlainButtonStyle())                       
                    }
        
                    SectionHeader(title: "Credit Cards", leftTitle: "Add")
                        .padding(.top,50)
                        PortView(title: "3056****5904",value:"Ivan Horvat . 06/26",leftIcon: "masterCardLogo",customIcon: true,iconWidth:40 ,iconHeight: 32,valueColor: Color("textColor"))
                        PortView(title: "5213****4854",value:"Ivan Horvat . 06/26",leftIcon: "visaElectronLogo",customIcon: true,iconWidth:49 ,iconHeight: 21,valueColor: Color("textColor"))
                    
                    Spacer()

                }
                .padding(.horizontal,36)
            }
        }
        
    }
}

#Preview {
    PaymentOptions()
}
