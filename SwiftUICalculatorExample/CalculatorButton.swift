//
//  CalculatorButton.swift
//  SwiftUICalculatorExample
//
//  Created by 한상욱 on 9/29/25.
//

import SwiftUI

struct CalculatorButton: KeypadButton {
    let key: CalculatorKey
    let action: () -> Void = {} // Dummy action

    var backgroundColor: Color { key.backgroundColor }
    var foregroundColor: Color { key.foregroundColor }

    @ViewBuilder
    var content: some View {
        if key.isSymbol {
            Image(systemName: key.label)
                .font(.title)
                .bold()
        } else {
            Text(key.label)
                .font(.largeTitle)
                .bold()
        }
    }
}

#Preview {
    CalculatorButton(key: .digit(1))
}
