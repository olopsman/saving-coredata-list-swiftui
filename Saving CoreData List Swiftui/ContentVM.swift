//
//  ContentVM.swift
//  Saving CoreData List Swiftui
//
//  Created by Paulo Orquillo on 14/11/22.
//

import Foundation

class ContentVM: ObservableObject {
    @Published var items: [Item] = []
    
    init() {
        loadItems()
    }
    
    func loadItems() {
        items = PersistenceController.shared.fetchItems(predicate: nil)
    }
}
