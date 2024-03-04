//
//  CircleView.swift
//  TrafficLightV2
//
//  Created by Rustam Cherezbiev on 03.03.2024.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100)
            .foregroundStyle(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

#Preview {
    CircleView(color: .red, opacity: 1)
}
