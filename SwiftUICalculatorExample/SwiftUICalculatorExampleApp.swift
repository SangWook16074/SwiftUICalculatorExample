//
//  SwiftUICalculatorExampleApp.swift
//  SwiftUICalculatorExample
//
//  Created by 한상욱 on 9/29/25.
//

import SwiftUI

@main
struct SwiftUICalculatorExampleApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
