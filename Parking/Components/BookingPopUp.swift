//
//  BookingPopUp.swift
//  Parking
//
//  Created by Nirmalsinh Rathod on 10/06/24.
//

import SwiftUI

struct BookingPopUp: View {
    @State  var sheetHeight: CGFloat = .zero
    @Binding var showDetaiView:Bool



    var body: some View {
        VStack{
            Text("Book your car")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
            Text("Parking")
            
                .font(.custom(
                    "FontNameMono",
                    fixedSize: 36))
                .bold()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
            
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color("Cardback"))
                .stroke(Color.gray, lineWidth: 1)
                .frame(height: 180)
                .overlay {
                    VStack(spacing: 0) {
                        Spacer()
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Zone")
                                    .foregroundColor(Color(hex: "85848A"))
                                    .font(.subheadline)
                                
                                Text("A-103")
                                    .font(.title)
                            }
                            Spacer()
                            Image("ParkingMap")
                            
                                .resizable()
                                .frame(width: 88, height: 70)
                                .aspectRatio(contentMode: .fit)
                        }
                        .padding([.leading, .trailing])
                        
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Time Slot")
                                    .foregroundColor(Color(hex: "85848A"))
                                
                                HStack {
                                    Text("10:02 PM - 12:20AM")
                                    Spacer()
                                    Text("$20")
                                }
                            }
                        }
                        .padding([.leading, .trailing, .top])
                        
                        Spacer()
                        
                    }
                }
            
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(hex:"FEDD66"))
                    .frame(height: 70)
                Text("Start Booking")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.black)
            }
            .onTapGesture(perform: {
                showDetaiView.toggle()
            })
            .padding(.top,33)
            
            
        }
        .padding(.vertical,33)
        .padding(.horizontal,40)
        .overlay {
            GeometryReader { geometry in
                Color.clear.preference(key: InnerHeightPreferenceKey.self, value: geometry.size.height)
            }
        }
        .onPreferenceChange(InnerHeightPreferenceKey.self) { newHeight in
            sheetHeight = newHeight
        }
        .presentationDetents([.height(sheetHeight)])
        .presentationCornerRadius(35)
    }
}


#Preview {
    BookingPopUp(sheetHeight: 0, showDetaiView: .constant(false))
}

struct InnerHeightPreferenceKey: PreferenceKey {
    static let defaultValue: CGFloat = .zero
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

