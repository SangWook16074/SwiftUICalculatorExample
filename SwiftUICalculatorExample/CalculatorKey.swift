//
//  CalculatorKey.swift
//  SwiftUICalculatorExample
//
//  Created by 한상욱 on 9/29/25.
//

import SwiftUI

enum CalculatorKey: Hashable, Identifiable {
    var id: Self { self }

    case digit(Int)
    case decimal
    case operation(Operation)
    case function(Function)

    enum Operation: String, Hashable {
        case add = "plus"
        case subtract = "minus"
        case multiply = "multiply"
        case divide = "divide"
        case equals = "equal"
    }
    
    enum Function: String, Hashable {
        case clear = "AC"
        case sign = "plus.forwardslash.minus"
        case percent = "percent"
    }

    var label: String {
        switch self {
        case .digit(let int): return "\(int)"
        case .decimal: return "."
        case .operation(let op): return op.rawValue
        case .function(let fn): return fn.rawValue
        }
    }
    
    var isSymbol: Bool {
        switch self {
        case .operation, .function(.sign), .function(.percent): return true
        default: return false
        }
    }

    var backgroundColor: Color {
        switch self {
        case .digit, .decimal: return .buttonBackground
        case .operation: return .optionButtonBackground
        case .function: return .functionButtonBackground
        }
    }
    
    var foregroundColor: Color {
        switch self {
        case .digit, .decimal, .function: return .buttonForeground
        case .operation: return .white
        }
    }
    
    var columnSpan: Int {
        if case .digit(0) = self {
            return 2
        }
        return 1
    }
}
