//
//  LaunchView.swift
//  Parking
//
//  Created by Nirmalsinh Rathod on 10/06/24.
//

import SwiftUI

struct LaunchView: View {
    var body: some View {
        VStack {
            ZStack{
                Circle()
                    .fill(Color.white)
                .frame(width: 200,height: 200)
                .shadow(color: .white, radius: 40)
                .overlay {
                    Image("carLogo")
                        .resizable()
                        .frame(width: 100,height: 100)
                        .aspectRatio(contentMode: .fit)
                      
                }
            }
               }
               .frame(maxWidth: .infinity, maxHeight: .infinity)
     
    }
}

#Preview {
    LaunchView()
}
