import SwiftUI
import MapKit

struct MapView: View {
    @State private var showingCredits = true
    @State var showDetaiView:Bool = false
    let coffeeShopCoordinate = CLLocationCoordinate2D(latitude: 25.865208, longitude: -80.121807)
 
    
    var body: some View {
        
        ZStack{
            
            Map{
                Annotation("", coordinate: coffeeShopCoordinate) {
                    Image("Map")
                        .resizable()
                        .frame(width: 50,height: 50)
                        .aspectRatio(contentMode: .fit)
                }
            }
            .onTapGesture {
                showingCredits.toggle()
            }
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                HStack{
                    BackView()
                        .frame(width: 100)
                    Text("Parking Map")
                        .font(.title)
                        .bold()
                        .frame(maxWidth: .infinity,alignment:.leading)
                    
                }
                .padding(.horizontal,20)
                Spacer()
            }
            
            .sheet(isPresented: $showingCredits) {
                if  showDetaiView {
                    BookingProgress()
                        .presentationDetents([.large, .large])
                        .presentationDragIndicator(.visible)
                }
                else
                {
                    BookingPopUp(sheetHeight: .zero, showDetaiView: $showDetaiView)
                }
                
            }
       
           
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
