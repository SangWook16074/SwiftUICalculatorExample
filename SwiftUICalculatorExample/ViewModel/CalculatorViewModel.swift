
import Foundation

class CalculatorViewModel: ObservableObject {
    @Published var displayValue = "0"
    
    private var firstOperand: Double?
    private var secondOperand: Double?
    private var operation: CalculatorKey.Operation?
    private var isEnteringDigits = false

    func handleTap(key: CalculatorKey) {
        switch key {
        case .digit(let value):
            if isEnteringDigits {
                if displayValue.count < 9 {
                    displayValue += "\(value)"
                }
            } else {
                displayValue = "\(value)"
                isEnteringDigits = true
            }
        case .decimal:
            if isEnteringDigits {
                if !displayValue.contains(".") {
                    displayValue += "."
                }
            } else {
                displayValue = "0."
                isEnteringDigits = true
            }
        case .operation(let op):
            if op == .equals {
                calculate()
            } else {
                if isEnteringDigits {
                    if firstOperand == nil {
                        firstOperand = Double(displayValue)
                    } else {
                        secondOperand = Double(displayValue)
                        calculate()
                    }
                }
                operation = op
            }
            isEnteringDigits = false
            
        case .function(let funcType):
            switch funcType {
            case .clear:
                displayValue = "0"
                firstOperand = nil
                secondOperand = nil
                operation = nil
                isEnteringDigits = false
            case .sign:
                if displayValue != "0" {
                    if displayValue.hasPrefix("-") {
                        displayValue.removeFirst()
                    } else {
                        displayValue = "-\(displayValue)"
                    }
                }
            case .percent:
                if let value = Double(displayValue) {
                    let result = value / 100
                    displayValue = formatResult(result)
                    firstOperand = result
                }
            }
        }
    }
    
    private func calculate() {
        guard let firstOperand = firstOperand, let operation = operation else { return }
        
        if isEnteringDigits {
            secondOperand = Double(displayValue)
        }
        
        guard let secondOperand = secondOperand else { return }
        
        var result: Double = 0
        
        switch operation {
        case .add:
            result = firstOperand + secondOperand
        case .subtract:
            result = firstOperand - secondOperand
        case .multiply:
            result = firstOperand * secondOperand
        case .divide:
            if secondOperand == 0 {
                displayValue = "Error"
                // Reset after error
                self.firstOperand = nil
                self.operation = nil
                self.isEnteringDigits = false
                return
            }
            result = firstOperand / secondOperand
        case .equals:
            // This case is now handled in the main switch
            return
        }
        
        self.firstOperand = result
        displayValue = formatResult(result)
    }
    
    private func formatResult(_ result: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 8
        formatter.minimumFractionDigits = 0
        
        // Use a large number for the maximum integer digits to avoid scientific notation for large numbers.
        formatter.maximumIntegerDigits = 9

        return formatter.string(from: NSNumber(value: result)) ?? ""
    }
}
