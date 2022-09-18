//
//  ButtonApperiance.swift
//  StateAndDataFlowHM.SwiftUI
//
//  Created by Вадим Гамзаев on 18.09.2022.
//

import SwiftUI

struct ColorButtonStyle: ButtonStyle {
    let color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        let pressColor = color.opacity(0.5)
        
        return configuration.label
            .font(.largeTitle)
            .foregroundColor(.white)
            .frame(width: 200, height: 50)
            .background(configuration.isPressed ? pressColor : color)
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 4))
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}
