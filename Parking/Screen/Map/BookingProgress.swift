import SwiftUI

struct BookingProgress: View {
    @State var showChange: Bool = true
    
    var body: some View {
        NavigationStack{
            GeometryReader { geometry in
                ScrollView(showsIndicators: false){
                    VStack {
                        Text("SL 250 ML")
                            .font(.custom("FontNameMono", fixedSize: 36))
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        Text("NirmalSinh Rathod")
                            .foregroundColor(Color(hex: "85848A"))
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        Text("Price:")
                            .foregroundColor(Color(hex: "85848A"))
                            .padding(.top, 41)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        ZStack {
                            if showChange {
                                Circle()
                                    .stroke(
                                        Color("carBookingBack"),
                                        lineWidth: 25
                                    )
                                    .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 0.8)
                                Circle()
                                    .trim(from: 0, to: 0.5)
                                    .stroke(
                                        Color(hex: "39C16B"),
                                        style: StrokeStyle(
                                            lineWidth: 25,
                                            lineCap: .round
                                        )
                                    )
                                    .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 0.8)

                                    .rotationEffect(.degrees(-90))
                                Image("TopViewCar")
                                    .resizable()
                               
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.4)
                            } else {
                                RoundedRectangle(cornerRadius: 1)
                                    .fill(Color("carBookingBack"))
                                    .frame(width: geometry.size.width * 0.4, height: geometry.size.height * 0.25)
                                    .overlay(alignment: .bottom) {
                                        ZStack(alignment: .bottom) {
                                            Image("TopViewCar")
                                                .resizable()
                                                .frame(width: geometry.size.width * 0.25, height: geometry.size.height * 0.24)
                                                .aspectRatio(contentMode: .fit)
                                            RoundedRectangle(cornerRadius: 1)
                                                .fill(Color(hex: "#2E924C").opacity(0.9))
                                                .frame(width: geometry.size.width * 0.4, height: geometry.size.height * 0.15)
                                                .overlay {
                                                    VStack {
                                                        Text("Done")
                                                            .foregroundColor(Color("backGround"))
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 30)
                                                                .fill(Color("backGround"))
                                                                .frame(width: 53, height: 30)
                                                            Image(systemName: "arrow.right")
                                                        }
                                                    }
                                                }
                                        }
                                    }
                            }
                        }
                        .padding(.top, 42)
                        
                        Text("30:20")
                            .font(.system(size: 60))
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        Text("12.10 PM - 01 Dec 2021")
                            .foregroundColor(Color(hex: "85848A"))
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                            .frame(height: 109)
                            .overlay {
                                VStack(spacing: 0) {
                                    Spacer()
                                    HStack {
                                        VStack(alignment: .leading) {
                                            Text("Zone")
                                                .foregroundColor(Color(hex: "85848A"))
                                                .font(.subheadline)
                                            
                                            Text("A-103")
                                                .foregroundColor(.black)
                                                .font(.title)
                                        }
                                        Spacer()
                                        Image("ParkingMap")
                                            .resizable()
                                            .frame(width: 88, height: 70)
                                            .aspectRatio(contentMode: .fit)
                                    }
                                    .padding([.leading, .trailing])
                                    
                                    Spacer()
                                }
                            }
                        
                        NavigationLink {
                            CarRotateView( isFullScreenPresented: .constant(false))
                                .navigationBarBackButtonHidden(true)
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(hex: "FEDD66"))
                                    .frame(width: showChange ? geometry.size.width * 0.7 : 273, height: geometry.size.width * 0.15 )
                                Text( showChange ? "Stop" : "End Parking")
                                    .font(.title)
                                    .foregroundColor(.black)
                            }
                            
                        }
                        Spacer()
                    }
                    .padding()
                }
            
            }
        }
        
   
    }
}

#Preview {
    BookingProgress()
}

