//
//  HomeView.swift
//  Parking
//
//  Created by Nirmalsinh Rathod on 31/05/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        let item1 = CarTab(imageName: "IconCar",title: "Car")
        let item2 = CarTab(imageName: "Bike",title: "Bike")
        let item3 = CarTab(imageName: "Bus",title: "Bus")
        
        ZStack{
            Color("backGround").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            GeometryReader{ geometry in
                ScrollView(showsIndicators: false){
                    HStack{
                        Image("Profile")
                            .resizable()
                            .frame(width: 43,height: 43)
                            .aspectRatio(contentMode: .fit)
                        Spacer()
                        Image("Map")
                            .resizable()
                            .frame(width: 43,height: 43)
                            .aspectRatio(contentMode: .fit)
                    }
                    
                    Text("Hello,NirmalSinh")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                        .padding(.top,38)
                    
                    Text("Made easly")
                        .font(.system(size: 50))
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                    
                    Text("Parking")
                        .bold()
                        .font(.system(size: 40))
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                    
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(spacing: 20){
                            CarTabView(item: item1)
                            CarTabView(item: item2)
                            CarTabView(item: item3)
                            
                        }
                    }
                   
                    Spacer()
                    
                    HStack{
                        Image("RoadLine")
                            .resizable()
                            .frame(width: geometry.size.width * 0.01,height: geometry.size.width * 0.6)
                            .aspectRatio(contentMode: .fit)
                        
                        Image("TopViewCar")
                            .resizable()
                            .frame(width: geometry.size.width * 0.4,height: geometry.size.width * 0.8)
                            .aspectRatio(contentMode: .fit)
                            .padding(.horizontal,50)
                            .overlay(
                                NavigationLink {
                                    MapView()
                                        .navigationBarBackButtonHidden(true)
                                } label: {
                                    GeometryReader { geo in
                                        ZStack {
                                            Circle()
                                                .fill(Color.yellow)
                                            VStack{
                                                Text("START")
                                                    .bold()
                                                    .foregroundColor(.black)
                                                Text("TO ADD CAR")
                                                    .bold()
                                                    .foregroundColor(.black)
                                            }
                                            
                                        }
                                        .frame(width: geo.size.width * 0.5, height: geo.size.width * 0.4)
                                        .position(x: geo.size.width / 1.9, y: geo.size.height - 40 )
                                    }
                       
                                }
                                
                            )
                        Image("RoadLine")
                            .resizable()
                            .frame(width: geometry.size.width * 0.01,height: geometry.size.width * 0.6)
                            .aspectRatio(contentMode: .fit)
                    }
                    .padding(.top,40)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("backGround"))
                        .padding(.top,40)
                }
              
                .padding(.horizontal,32)

            }
        }
    }
}

#Preview {
    HomeView()
}
