//
//  ButtonStyleModifer.swift
//  calc-swiftui
//
//  Created by frezcirno on 2020/11/14.
//

import SwiftUI

struct ButtonStyleModifier: ViewModifier {
    let fg: Color
    
    var buttonSize: (width: CGFloat, height: CGFloat) {
        let numberOfButtonPerRow = 4
        let spacing = 12

        let screenWidth = UIScreen.main.bounds.width
        let height = (screenWidth - CGFloat((numberOfButtonPerRow + 1) * spacing)) / CGFloat(numberOfButtonPerRow)
        let width = height * 4
        return (width, height)
    }
    
    func body(content: Content) -> some View {
        content
            .frame(width: self.buttonSize.width, height: self.buttonSize.height)
            .foregroundColor(self.fg)
            .cornerRadius(self.buttonSize.width / 2)
    }

}

