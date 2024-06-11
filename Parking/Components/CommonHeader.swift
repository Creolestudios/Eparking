//
//  CommonHeader.swift
//  Parking
//
//  Created by Nirmalsinh Rathod on 03/06/24.
//

import SwiftUI

struct CommonHeader: View {
    var title: String
    var leftIcon: String
    var customIcon: Bool = false
    var showMap:Bool = false
    
    
    var body: some View {
        HStack {
            Text(title)
                .frame(minWidth: 0, maxWidth: 200, minHeight: 0, maxHeight: 200, alignment: .leading)
            
                .font(.largeTitle)
                .minimumScaleFactor(0.01)
                .bold()
            Spacer()
            
            if showMap {
                Image(leftIcon)
                    .resizable()
                    .frame(width: 88, height: 75)
                    .aspectRatio(contentMode: .fit)
            }
            else
            {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("backGround"))
                        .frame(width: 47, height: 83)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color("textColor"), lineWidth: 1)
                        )
                    if customIcon {
                        Image(leftIcon)
                            .resizable()
                            .colorInvert().colorMultiply(Color("textColor"))
                            .frame(width: 24, height: 24)
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image(systemName: leftIcon)
                            .resizable()
                            .frame(width: 20, height: 10)
                            .aspectRatio(contentMode: .fit)
                    }
                    
                }
            }
            
            
        }
    }
}

#Preview {
    CommonHeader(title: "Select charging ports", leftIcon: "creditCardEdit",customIcon: true)
}
