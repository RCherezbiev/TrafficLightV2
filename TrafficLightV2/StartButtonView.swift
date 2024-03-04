//
//  StartButtonView.swift
//  TrafficLightV2
//
//  Created by Rustam Cherezbiev on 03.03.2024.
//

import SwiftUI

struct StartButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
        }
        .frame(minWidth: 200, minHeight: 60)
        .background(.blue)
        .clipShape(.rect(cornerRadius: 20))
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.white, lineWidth: 4)
        )
    }
}

#Preview {
    StartButtonView(title: "Start", action: {})
}
