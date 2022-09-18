//
//  ButtonApperiance.swift
//  StateAndDataFlowHM.SwiftUI
//
//  Created by Вадим Гамзаев on 18.09.2022.
//

import SwiftUI

//struct RedButtonViewModifier: ViewModifier  {
//    func body(content: Content) -> some View {
//        content
//            .frame(width: 200, height: 60)
//            .background(.red)
//            .cornerRadius(20)
//            .overlay(RoundedRectangle(cornerRadius: 20).stroke(.black, lineWidth: 4))
//    }
//}
//
//struct BlueButtonViewModifier: ViewModifier  {
//    func body(content: Content) -> some View {
//        content
//            .frame(width: 200, height: 60)
//            .background(.blue)
//            .cornerRadius(20)
//            .overlay(RoundedRectangle(cornerRadius: 20).stroke(.black, lineWidth: 4))
//    }
//}
//
//extension Button {
//    func setRedButtonStyle() -> some View {
//        ModifiedContent(content: self, modifier: RedButtonViewModifier())
//    }
//
//    func setBlueButtonStyle() -> some View {
//        ModifiedContent(content: self, modifier: BlueButtonViewModifier())
//    }
//}

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
