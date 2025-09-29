import SwiftUI

struct ButtonView: View {
    let grid: [[CalculatorKey]] = [
        [.function(.clear), .function(.sign), .function(.percent), .operation(.divide)],
        [.digit(7), .digit(8), .digit(9), .operation(.multiply)],
        [.digit(4), .digit(5), .digit(6), .operation(.subtract)],
        [.digit(1), .digit(2), .digit(3), .operation(.add)],
        [.digit(0), .decimal, .operation(.equals)]
    ]
    
    let spacing: CGFloat = 12

    var body: some View {
        GeometryReader { geometry in
            let widthBasedSize = (geometry.size.width - (spacing * 3)) / 4
            let heightBasedSize = (geometry.size.height - (spacing * 4)) / 5
            let buttonSize = min(widthBasedSize, heightBasedSize)

            VStack(spacing: spacing) {
                ForEach(grid, id: \.self) { row in
                    HStack(spacing: spacing) {
                        ForEach(row) { key in
                            let width = buttonSize * CGFloat(key.columnSpan) + (spacing * CGFloat(key.columnSpan - 1))
                            
                            CalculatorButton(key: key)
                                .frame(width: width, height: buttonSize)
                                .background(key.backgroundColor)
                                .clipShape(RoundedRectangle(cornerRadius: 28))
                        }
                    }
                }
            }
        }
    }
}