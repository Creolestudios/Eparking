//
//  CarTabView.swift
//
//
//  Created by Nirmalsinh Rathod on 31/05/24.
//

import SwiftUI

struct CarTabView: View {
    let item:CarTab
    
    @State var SelectItem:String = "Car"
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 10)
            .fill(SelectItem ==  item.title ? Color(hex: "FEDD66") : Color("backGround"))
            .shadow(radius: 10)
            .frame(width: UIScreen.main.bounds.width * 0.3,height: UIScreen.main.bounds.width * 0.3,alignment: .center)
            .overlay(alignment: .center) {
                VStack{
                    Image(item.imageName)
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width * 0.1,height: UIScreen.main.bounds.width * 0.1)
                    
                    Text(item.title)
                        .font(.title2)
                        .foregroundColor(SelectItem ==  item.title ? .black: Color(hex: "5D5A6D"))
                }
            }
        
    }
}


struct CarTabView_Previewr:PreviewProvider{
    static var item1 = CarTab(imageName: "IconCar",title: "Car")
    static var item2 = CarTab(imageName: "Bus",title: "Bus")
    static var item3 = CarTab(imageName: "Bike",title: "Bike")
    
    static var previews: some View {
        HStack{
            CarTabView(item: item1)
            CarTabView(item: item2)
            CarTabView(item: item3)
            
        }
        
    }
}

