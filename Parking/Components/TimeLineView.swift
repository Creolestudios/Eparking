//
//  TimeLineView.swift
//  Parking
//
//  Created by Nirmalsinh Rathod on 03/06/24.
//

import SwiftUI

struct TimelineEvent: Identifiable {
    let id = UUID()
    let date: String
    let time: String
    let isLast: Bool
}


struct TimeLineView: View {
    let events = [
        TimelineEvent(date: "03:06:2022", time: "15:06",isLast: false),
        TimelineEvent(date: "03:06:2022", time: "15:41",isLast:true),
        
    ]
    var body: some View {
        VStack(spacing: 0){
            ForEach(events) { event in
                HStack(alignment: .top) {
                    VStack (spacing: 0){
                        Circle()
                            .fill(Color.green)
                            .frame(width: 20, height: 20)
                        if !event.isLast {
                            DottedLine()
                                .stroke(Color.green, style: StrokeStyle(lineWidth: 4))
                                .frame(width: 2, height: 60)
                        }
                    }
                    
                    HStack {
                        Text(event.time)
                            .font(.title)
                        Text(event.date)
                            .font(.body)
                            .foregroundColor(.gray)
                            .foregroundColor(.gray)
                    }
                    .padding(.leading, 8)
                }
                
            }
        }
        
    }
}

#Preview {
    TimeLineView()
}
