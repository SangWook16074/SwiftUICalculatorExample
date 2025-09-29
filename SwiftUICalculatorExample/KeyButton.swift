//
//  KeyButton.swift
//  SwiftUICalculatorExample
//
//  Created by 한상욱 on 9/29/25.
//

import SwiftUI

protocol KeypadButton: View {
    var action: () -> Void { get }
    var backgroundColor: Color { get }
    var foregroundColor: Color { get }
    
    associatedtype Content: View
    @ViewBuilder var content: Content { get }
}

extension KeypadButton {
    var body: some View {
        Button(action: action) {
            content
                .foregroundColor(foregroundColor)
        }
    }
}
