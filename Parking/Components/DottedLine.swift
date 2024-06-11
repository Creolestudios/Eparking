//
//  DottedLine.swift
//  Parking
//
//  Created by Nirmalsinh Rathod on 10/06/24.
//

import SwiftUI

struct DottedLine: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let dashLength: CGFloat = 5
        let spaceLength: CGFloat = 5
        let totalPatternLength = dashLength + spaceLength
        let count = Int(rect.height / totalPatternLength)
        
        for i in 0..<count {
            let startY = CGFloat(i) * totalPatternLength
            path.move(to: CGPoint(x: rect.midX, y: startY))
            path.addLine(to: CGPoint(x: rect.midX, y: startY + dashLength))
        }
        
        return path
    }
}

#Preview {
    DottedLine()
}
