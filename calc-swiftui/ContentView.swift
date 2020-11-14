//
//  ContentView.swift
//  calc-swiftui
//
//  Created by frezcirno on 2020/11/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 12) {
                HStack {
                    Spacer()
                    Text("0")
                        .font(.system(size: 72))
                        .foregroundColor(.white)
                        .lineLimit(1)
                        .minimumScaleFactor(0.6)
                }.padding()
                
                HStack(spacing: 12) {
                    CalculatorButton(text: "^", action: <#T##() -> Void#>, bg: .orange, fg: .white)

                    Button(action: {}, label: {
                        Text("√")
                            .font(.system(size: 32))
                    })
                    Button(action: {}, label: {
                        Text("(")
                            .font(.system(size: 32))
                    })
                    Button(action: {}, label: {
                        Text(")")
                            .font(.system(size: 32))
                    })
                }
                
                HStack(spacing: 12) {
                    Button(action: {}, label: {
                        Text("C")
                            .font(.system(size: 32))
                    })
                    Button(action: {}, label: {
                        Text("CE")
                            .font(.system(size: 32))
                    })
                    Button(action: {}, label: {
                        Text("%")
                            .font(.system(size: 32))
                    })
                    Button(action: {}, label: {
                        Text("÷")
                            .font(.system(size: 32))
                    })
                }
                
                HStack(spacing: 12) {
                    Button(action: {}, label: {
                        Text("7")
                            .font(.system(size: 32))
                    })
                    Button(action: {}, label: {
                        Text("8")
                            .font(.system(size: 32))
                    })
                    Button(action: {}, label: {
                        Text("9")
                            .font(.system(size: 32))
                    })
                    Button(action: {}, label: {
                        Text("*")
                            .font(.system(size: 32))
                    })
                }
                
                
                HStack(spacing: 12) {
                    Button(action: {}, label: {
                        Text("4")
                            .font(.system(size: 32))
                    })
                    Button(action: {}, label: {
                        Text("5")
                            .font(.system(size: 32))
                    })
                    Button(action: {}, label: {
                        Text("6")
                            .font(.system(size: 32))
                    })
                    Button(action: {}, label: {
                        Text("-")
                            .font(.system(size: 32))
                    })
                }
                
                
                HStack(spacing: 12) {
                    Button(action: {}, label: {
                        Text("1")
                            .font(.system(size: 32))
                    })
                    Button(action: {}, label: {
                        Text("2")
                            .font(.system(size: 32))
                    })
                    Button(action: {}, label: {
                        Text("3")
                            .font(.system(size: 32))
                    })
                    Button(action: {}, label: {
                        Text("+")
                            .font(.system(size: 32))
                    })
                }
                
                
                HStack(spacing: 12) {
                    Button(action: {}, label: {
                        Text("0")
                            .font(.system(size: 32))
                    })
                    Button(action: {}, label: {
                        Text("0")
                            .font(.system(size: 32))
                    })
                    Button(action: {}, label: {
                        Text(".")
                            .font(.system(size: 32))
                    })
                    Button(action: {}, label: {
                        Text("=")
                            .font(.system(size: 32))
                    })
                }
                
            }.padding(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
