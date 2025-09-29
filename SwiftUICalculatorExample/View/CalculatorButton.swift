//
//  CalculatorButton.swift
//  SwiftUICalculatorExample
//
//  Created by 한상욱 on 9/29/25.
//

import SwiftUI

struct CalculatorButton: View {
    let key: CalculatorKey
    var action: (CalculatorKey) -> Void

    var body: some View {
        Button(action: { self.action(self.key) }) {
            ZStack {
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
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundColor(key.foregroundColor)
            .background(key.backgroundColor)
        }
    }
}

#Preview {
    CalculatorButton(key: .digit(1), action: { _ in })
        .frame(width: 100, height: 100)
}
