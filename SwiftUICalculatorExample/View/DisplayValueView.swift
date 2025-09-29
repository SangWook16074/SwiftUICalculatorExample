//
//  DisplayValueView.swift
//  SwiftUICalculatorExample
//
//  Created by 한상욱 on 9/29/25.
//

import SwiftUI

struct DisplayValueView: View {
    @ObservedObject var viewModel: CalculatorViewModel

    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text(viewModel.displayValue)
                    .font(.system(size: 80, weight: .light))
                    .foregroundColor(.buttonForeground)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
}

#Preview {
    let viewModel = CalculatorViewModel()
    viewModel.displayValue = "12345"
    return DisplayValueView(viewModel: viewModel)
        .background(Color.globalBackground)
}
