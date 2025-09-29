//
//  ContentView.swift
//  SwiftUICalculatorExample
//
//  Created by 한상욱 on 9/29/25.
//

import SwiftUI

struct ContentView: View {
    private let spacing: CGFloat = 22
    private let buttonViewInternalSpacing: CGFloat = 12

    var body: some View {
        ZStack {
            Color.globalBackground.ignoresSafeArea()
                
            GeometryReader { proxy in
                let buttonViewWidth = proxy.size.width - (spacing * 2)
                let buttonSize = (buttonViewWidth - (buttonViewInternalSpacing * 3)) / 4
                let buttonViewHeight = buttonSize * 5 + (buttonViewInternalSpacing * 4)
                
                VStack {
                    
                    DisplayValueView()
                    
                    ButtonView()
                        .frame(height: buttonViewHeight)
                        
                }
                .padding(spacing)
            }
        }
    }
}


#Preview {
    ContentView()
}