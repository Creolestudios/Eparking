//
//  ContentView.swift
//  Parking
//
//  Created by Nirmalsinh Rathod on 30/05/24.
//

import SwiftUI


class navigationStack: ObservableObject {
    @Published  var isFullScreenPresented = false
}

struct ContentView: View {
    @StateObject var navigate = navigationStack()
    
    var body: some View {
        NavigationStack {
            CarParkingView()
        }
        .environmentObject(navigate)
    }
}

#Preview {
    ContentView()
}
