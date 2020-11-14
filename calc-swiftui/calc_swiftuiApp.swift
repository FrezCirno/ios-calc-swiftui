//
//  calc_swiftuiApp.swift
//  calc-swiftui
//
//  Created by frezcirno on 2020/11/13.
//

import SwiftUI

@main
struct calc_swiftuiApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(CalculatorData())
        }
    }
}

struct calc_swiftuiApp_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(CalculatorData())
    }
}
