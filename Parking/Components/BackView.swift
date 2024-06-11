//
//  BackView.swift
//  Parking
//
//  Created by Nirmalsinh Rathod on 31/05/24.
//

import SwiftUI

struct BackView: View {
    @Environment(\.presentationMode) var presentationMode
    var leftIcon:Bool = false
    var body: some View {
        HStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(Color("backGround"))
                .frame(width: 48,height: 48)
                .shadow(radius: 2)
                .overlay {
                    Image(systemName: "chevron.backward")
                        .resizable()
                        .foregroundColor(Color("textColor"))
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 10,height: 20)
                        .bold()
                }
                .onTapGesture {
                    presentationMode.wrappedValue.dismiss()
                }
            Spacer()
            
            if leftIcon{
                HStack{
                    Image("download")
                        .resizable()
                        .frame(width: 24,height: 24)
                    Text("Receipt")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("batteryFillColor"))
                        .bold()
                }
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
      
    }
}

#Preview {
    BackView(leftIcon: true)
}
