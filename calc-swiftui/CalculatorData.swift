//
//  CalculatorData.swift
//  calc-swiftui
//
//  Created by tzx on 2020/11/14.
//

import SwiftUI
import Combine

final class CalculatorData: ObservableObject {
    @Published var resultLabel: String = "0"
    var clear = false

    func handleButtonPress(_ input: String) {
        if input == "=" {
            clear = true
            do {
                let result = try eval(self.resultLabel)
                self.resultLabel = String(result)
            } catch let CalcError.ArithmeticError(reason) {
                self.resultLabel = "Error: "+reason
            } catch let CalcError.SyntaxError(reason) {
                self.resultLabel = "Error: "+reason
            } catch let CalcError.InputError(reason) {
                self.resultLabel = "Error: "+reason
            } catch _ {
                self.resultLabel = "Error"
            }
        } else if input == "C" {
            self.resultLabel.removeAll()
            self.resultLabel.append("0")
        } else if input == "CE" {
            _ = self.resultLabel.popLast()
            if self.resultLabel.isEmpty == true {
                self.resultLabel.append("0")
            }
        } else {
            if clear {
                clear = false
                self.resultLabel = "0"
            }
            if self.resultLabel == "0" {
                self.resultLabel.removeAll()
            }
            self.resultLabel.append(input)
        }
    }
}
