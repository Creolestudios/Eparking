import SwiftUI

struct CarRotateView: View {
    @State var showingCredits = true
    @State var degree = 0.0
    @State var navigateToAnotherScreen:Bool = false;
    @StateObject var navigate = navigationStack()
    @Binding var isFullScreenPresented: Bool

    
    var body: some View {
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
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.green)
                            .frame(width: geometry.size.width * 0.4, height: 42)
                        
                        Text("Completed")
                            .foregroundColor(Color("backGround"))
                    }
                    
                    ZStack {
                        Circle()
                            .fill(Color("carBookingBack"))
                            .shadow(color: .white.opacity(0.2), radius: 40)
                            .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 0.8)
                        
                        HStack {
                            DottedLine()
                                .stroke(Color.gray, style: StrokeStyle(lineWidth: 4))
                                .frame(width: 2, height: geometry.size.width * 0.6)
                            
                            Circle()
                                .frame(width: geometry.size.width * 0.6, height: geometry.size.width * 0.6)
                            
                            DottedLine()
                                .stroke(Color.gray, style: StrokeStyle(lineWidth: 4))
                                .frame(width: 2, height: geometry.size.width * 0.6)
                        }
                        
                        Image("TopViewCar")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width * 0.45, height: geometry.size.width * 0.25)
                    }
                    .rotationEffect(Angle.degrees(degree))
                    .frame(maxWidth: .infinity)
                    .frame(height: geometry.size.width * 1.25)
                    .gesture(RotationGesture().onChanged { angle in
                        degree = angle.degrees
                    })
                    
                    Spacer()
                    
                    
                        .fullScreenCover(isPresented: $isFullScreenPresented) {
                                   HomeView()
                               }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(hex: "FEDD66"))
                            .frame(width: geometry.size.width * 0.7, height: 70)
                        
                        Text("End Parking")
                            .font(.title)
                            .foregroundColor(.black)
                    }
                    .onTapGesture {
                        navigate.isFullScreenPresented = true
                    }
                    
                    
                }
                .padding(.vertical, 40)
                .padding([.leading, .trailing])
            }
        }
        .fullScreenCover(isPresented: $navigate.isFullScreenPresented) {
            ReserveElectricity()
        }
        
    }
}


#Preview {
    CarRotateView(isFullScreenPresented: .constant(false))
}
