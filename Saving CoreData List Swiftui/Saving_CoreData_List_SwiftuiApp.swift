//
//  Saving_CoreData_List_SwiftuiApp.swift
//  Saving CoreData List Swiftui
//
//  Created by Paulo Orquillo on 14/11/22.
//

import SwiftUI

@main
struct Saving_CoreData_List_SwiftuiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
