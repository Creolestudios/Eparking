//
//  PortView.swift
//  Parking
//
//  Created by Nirmalsinh Rathod on 31/05/24.
//

import SwiftUI

struct PortView: View {
    let title:String
    let value:String
    let leftIcon: String
    var customIcon: Bool = false
    var iconWidth:CGFloat = 24
    var iconHeight:CGFloat = 24
    var titleColor:Color = Color("textColor")
    var valueColor:Color = Color.green
    var showBottomView:Bool = false
    
    var body: some View {
        VStack{
            HStack{
                ZStack{
                    Circle()
                        .fill(Color("backGround"))
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .overlay(
                            Circle()
                                .stroke(Color.gray, lineWidth: 3)
                        )
                    if customIcon {
                        Image(leftIcon)
                            .resizable()
                            .frame(width: iconWidth, height: iconHeight)
                            .aspectRatio(contentMode: .fit)
                        
                    } else {
                        Image(systemName: leftIcon)
                            .resizable()
                            .frame(width: 15, height: 15)
                            .aspectRatio(contentMode: .fit)
                    }
                }
                
                Spacer()
                VStack(alignment: .center,spacing: 10){
                    
                    Text(title)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                        .foregroundColor(titleColor)
                        .font(.system(size: 25))
                        .bold()
                    Text(value)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                        .font(.system(size: 20))
                        .foregroundColor(valueColor)
                    
                    
                    if showBottomView {
                        VStack(spacing: 0){
                            Text("Total")
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                                .font(.system(size: 20))
                                .foregroundColor(valueColor)
                            HStack{
                                Text("HRK 1.00")
                                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                                    .foregroundColor(titleColor)
                                    .font(.system(size: 25))
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.green)
                                        .frame(width: 47,height: 35)
                                    Image(systemName: "chevron.down")
                                    
                                }
                            }
                        }
                    }
                    
                    
                    
                }
                
                .padding(.leading,22)
            }
            
            
        }
        
    }
}

#Preview {
    PortView(title: "3056****5904",value:"Ivan Horvat . 06/26",leftIcon: "masterCardLogo",customIcon: true,iconWidth:40 ,iconHeight: 32,valueColor: Color("textColor"),showBottomView:false)
    //    PortView(title: "3056****5904",value:"Ivan Horvat . 06/26",leftIcon: "masterCardLogo",customIcon: true,iconWidth:40 ,iconHeight: 32,valueColor: Color("textColor"))
}
