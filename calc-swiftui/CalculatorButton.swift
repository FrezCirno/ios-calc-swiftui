//
//  ButtonView.swift
//  calc-swiftui
//
//  Created by frezcirno on 2020/11/14.
//

import SwiftUI

struct CalculatorButton: View {
    let text: String
    let action: ()->Void
    let bg: Color
    let fg: Color
    
    var body: some View {
        Button(action: self.action, label: {
            Text(self.text)
                .font(.system(size: 32))
                .modifier(ButtonStyleModifier(fg: fg))
        })
    }
}
