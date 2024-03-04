//
//  ContentView.swift
//  TrafficLightV2
//
//  Created by Rustam Cherezbiev on 29.02.2024.
//

import SwiftUI

enum CurrentLight {
    case off, red, orange, green
}

struct ContentView: View {
    
    @State private var buttonText: String = "START"
    @State private var currentLight: CurrentLight = .off
    
    var body: some View {
        VStack(spacing: 20) {
            CircleView(
                color: .red,
                opacity: currentLight == .red ? 1 : 0.3
            )
            CircleView(
                color: .orange,
                opacity: currentLight == .orange ? 1 : 0.3
            )
            CircleView(
                color: .green,
                opacity: currentLight == .green ? 1 : 0.3
            )
            
            Spacer()
            
            StartButtonView(title: buttonText) {
                if buttonText == "START" {
                    buttonText = "NEXT"
                }
                nextColor()
            }
        }
        .padding()
    }
    private func nextColor() {
        switch currentLight {
        case .off: currentLight = .red
        case .red: currentLight = .orange
        case .orange: currentLight = .green
        case .green: currentLight = .red
        }
    }
}

#Preview {
    ContentView()
}
