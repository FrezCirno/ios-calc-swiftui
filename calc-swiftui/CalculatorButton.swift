//
//  ButtonView.swift
//  calc-swiftui
//
//  Created by frezcirno on 2020/11/14.
//

import SwiftUI

struct CalculatorButton: View {
    @EnvironmentObject var calculatorData: CalculatorData
    
    var text: String
    var fg = Color.black
    var bg = Color.white
    var gridWidth = 1

    let numberOfButtonPerRow = 4
    let spacing = 12
    
    var buttonSize: (width: CGFloat, height: CGFloat) {
        
        let screenWidth = UIScreen.main.bounds.width
        
        let height = (screenWidth - CGFloat((numberOfButtonPerRow + 1) * spacing)) / CGFloat(numberOfButtonPerRow)
        let width = height * CGFloat(gridWidth) + CGFloat(spacing * (gridWidth - 1))
        
        return (width, height)
    }
    
    var body: some View {
        Button(action: {
            self.calculatorData.handleButtonPress(text)
        }, label: {
            Text(self.text)
                .font(.system(size: 32))
                .frame(width: self.buttonSize.width, height: self.buttonSize.height)
                .foregroundColor(self.fg)
                .background(self.bg)
                .cornerRadius(self.buttonSize.width / 2)
        })
    }
}

struct CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButton(text: "0", gridWidth: 2)
    }
}
