//
//  Color+Extension.swift
//  SwiftUICalculatorExample
//
//  Created by 한상욱 on 9/29/25.
//

import SwiftUI

extension Color {
    static let buttonBackground = Color(UIColor { traitCollection in
        traitCollection.userInterfaceStyle == .dark ?
            UIColor(red: 0x40/255.0, green: 0x40/255.0, blue: 0x40/255.0, alpha: 1.0) :
            UIColor.white
    })
    
    static let buttonForeground = Color(UIColor { traitCollection in
        traitCollection.userInterfaceStyle == .dark ?
            UIColor.white :
            UIColor.black
    })
    
    static let globalBackground = Color(UIColor { traitCollection in
        traitCollection.userInterfaceStyle == .dark ?
            UIColor(red: 0x1e/255.0, green: 0x1e/255.0, blue: 0x1e/255.0, alpha: 1.0) :
            UIColor(red: 0xf0/255.0, green: 0xf0/255.0, blue: 0xf0/255.0, alpha: 1.0)
    })
    
    static let optionButtonBackground = Color(red: 100/255, green: 87/255, blue: 252/255)
    
    static let functionButtonBackground = Color(UIColor { traitCollection in
        traitCollection.userInterfaceStyle == .dark ?
            UIColor(white: 0x33/255.0, alpha: 1.0) :
            UIColor(white: 0xa5/255.0, alpha: 1.0)
    })
}