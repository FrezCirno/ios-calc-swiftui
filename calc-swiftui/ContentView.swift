//
//  ContentView.swift
//  calc-swiftui
//
//  Created by frezcirno on 2020/11/13.
//

import SwiftUI


struct ContentView: View {
    @EnvironmentObject var calculatorData: CalculatorData
    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Text(calculatorData.resultLabel)
                        .font(.system(size: 72))
                        .foregroundColor(.black)
                        .lineLimit(1)
                        .minimumScaleFactor(0.6)
                }.padding(10)
                Spacer()
                VStack {
                    HStack {
                        CalculatorButton(text: "^", fg: .gray, bg: .white)
                        CalculatorButton(text: "√", fg: .gray, bg: .white)
                        CalculatorButton(text: "(", fg: .gray, bg: .white)
                        CalculatorButton(text: ")", fg: .gray, bg: .white)
                    }
                    
                    HStack {
                        CalculatorButton(text: "C", fg: .orange, bg: .white)
                        CalculatorButton(text: "CE", fg: .orange, bg: .white)
                        CalculatorButton(text: "%", fg: .orange, bg: .white)
                        CalculatorButton(text: "÷", fg: .orange, bg: .white)
                    }
                    
                    HStack {
                        CalculatorButton(text: "7", fg: .black, bg: .white)
                        CalculatorButton(text: "8", fg: .black, bg: .white)
                        CalculatorButton(text: "9", fg: .black, bg: .white)
                        CalculatorButton(text: "*", fg: .orange, bg: .white)
                    }
                    
                    HStack {
                        CalculatorButton(text: "4", fg: .black, bg: .white)
                        CalculatorButton(text: "5", fg: .black, bg: .white)
                        CalculatorButton(text: "6", fg: .black, bg: .white)
                        CalculatorButton(text: "-", fg: .orange, bg: .white)
                    }
                    
                    HStack {
                        CalculatorButton(text: "1", fg: .black, bg: .white)
                        CalculatorButton(text: "2", fg: .black, bg: .white)
                        CalculatorButton(text: "3", fg: .black, bg: .white)
                        CalculatorButton(text: "+", fg: .orange, bg: .white)
                    }
                    
                    HStack {
                        CalculatorButton(text: "0", fg: .black, bg: .white, gridWidth: 2)
                        CalculatorButton(text: ".", fg: .black, bg: .white)
                        CalculatorButton(text: "=", fg: .white, bg: .orange)
                    }
                }
            }.padding(15)
        }.ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().environmentObject(CalculatorData())
        }
    }
}
