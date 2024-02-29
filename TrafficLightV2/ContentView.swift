//
//  ContentView.swift
//  TrafficLightV2
//
//  Created by Rustam Cherezbiev on 29.02.2024.
//

import SwiftUI

enum CurrentLight {
    case red, orange, green
}

struct ContentView: View {
    @State private var currentLight = CurrentLight.red
    @State private var redLight = 0.3
    @State private var orangeLight = 0.3
    @State private var greenLight = 0.3
    
    private var lightOn = 1.0
    private let lightOff = 0.3

    @State private var buttonText: String = "START"
    
    var body: some View {
        VStack(spacing: 25) {
            Circle()
                .foregroundColor(.red)
                .opacity(redLight)
                .frame(width: 150, height: 150)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
            
            Circle()
                .foregroundColor(.orange)
                .opacity(orangeLight)
                .frame(width: 150, height: 150)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
            
            Circle()
                .foregroundColor(.green)
                .opacity(greenLight)
                .frame(width: 150, height: 150)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
            
            Button(action: buttonAction) {
                Text(buttonText)
                    .frame(width: 150, height: 50)
                    .background(Capsule().fill(.blue))
                    .overlay(Capsule().stroke(Color.white, lineWidth: 4))
                    .foregroundStyle(.white)
                    .font(.largeTitle)
            }
            .padding(.top, 100)
        }
    }
    
    private func buttonAction() {
        if buttonText == "START" {
            buttonText = "NEXT"
        }
        
        switch currentLight {
        case .red:
            greenLight = lightOff
            redLight = lightOn
            currentLight = .orange
        case .orange:
            redLight = lightOff
            orangeLight = lightOn
            currentLight = .green
        case .green:
            orangeLight = lightOff
            greenLight = lightOn
            currentLight = .red
        }
        
    }
}

#Preview {
    ContentView()
}
