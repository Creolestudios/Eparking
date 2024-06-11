//
//  TicketDetail.swift
//  Parking
//
//  Created by Nirmalsinh Rathod on 03/06/24.
//

import SwiftUI



struct TicketDetail: View {
    let events = [
        TimelineEvent(date: "03:06:2022", time: "15:06",isLast: false),
        TimelineEvent(date: "03:06:2022", time: "15:41",isLast:true),
        
    ]
    var body: some View {
        ScrollView{
            ZStack{
                Color("backGround")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack{
                    BackView(leftIcon: true)
                    
                    CommonHeader(title: "Parking ticket details", leftIcon: "ParkingMap",customIcon: true,showMap: true)
                        .padding(.vertical,20)
                 
                    
                    RoundedRectangle(cornerRadius: 27)
                        .fill(Color("Cardback"))
                        .stroke(Color.black, lineWidth: 1)
                        .frame(height: 159)
                        .overlay( content: {
                            HStack(spacing: 24){
                                ZStack{
                                    Circle()
                                        .fill(Color.green)
                                        .frame(width: 70,height: 70)
    
                                    Text("P")
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(.black)
                                        .bold()
    
                                }
                                .padding(.bottom,20)
                                VStack(spacing: 0){
                                    Text("ZG1234IG . Mamin AUTO")
                                        .font(.title3)
                                        .frame(minWidth: 0, maxWidth: 151,alignment: .leading)
                                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                    VStack{
                                        Text("Zone 1 - Rovinj")
                                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                                            .font(.subheadline)
                                            .bold()
                                        Text("Hourly parking ticket")
                                            .font(.subheadline)
                                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                                            .bold()
                                    }
                                    .padding(.top,10)
                                }
                            }
                            .padding(.horizontal,24)
                        }
                        )
                    Text("Log Activities")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(Color(hex: "DDD9F0"))
                        .bold()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                        .padding(.vertical,20)
                    TimeLineView()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                    
                    Divider()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .padding(.vertical,26)
                        

                    PortView(title: "3056****5904",value:"Ivan Horvat . 06/26",leftIcon: "masterCardLogo",customIcon: true,iconWidth:40 ,iconHeight: 32,valueColor: Color("textColor"),showBottomView:false)
                     
                    Spacer()
                    
    
                }
                .padding(.horizontal,36)
            }
        }
        
    }
}

#Preview {
    TicketDetail()
}

