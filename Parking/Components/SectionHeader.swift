//
//  SectionHeader.swift
//  Parking
//
//  Created by Nirmalsinh Rathod on 03/06/24.
//

import SwiftUI

struct SectionHeader: View {
    let title:String
    let leftTitle:String
    var body: some View {
        HStack{
            Text(title)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
           
            Spacer()
            Text("+ " + leftTitle)
                .foregroundColor(Color(hex: "20B682"))
                .font(.title2)
                .padding(.horizontal,25)
                .padding(.vertical,10)
                .background(
                RoundedRectangle(cornerRadius: 80)
                    .fill(Color("buttonBack"))
                )
        }
    }
}

#Preview {
    SectionHeader(title: "Cards", leftTitle: "Top up")
}
