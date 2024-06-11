//
//  WaveShape.swift
//  Parking
//
//  Created by Nirmalsinh Rathod on 10/06/24.
//

import SwiftUI

struct WaveShape: Shape {
    var amplitude: CGFloat = 20
    var frequency: CGFloat = 2
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let midHeight = rect.height / 1.8
        let width = rect.width
        
        path.move(to: CGPoint(x: 0, y: midHeight))
        
        for x in stride(from: 0, through: width, by: 1) {
            let relativeX = x / width
            let sine = sin(relativeX * .pi * frequency)
            let y = midHeight + sine * amplitude
            path.addLine(to: CGPoint(x: x, y: y))
        }
        
        path.addLine(to: CGPoint(x: width, y: rect.height))
        path.addLine(to: CGPoint(x: 0, y: rect.height))
        path.closeSubpath()
        
        return path
    }
}


#Preview {
    WaveShape()
}


