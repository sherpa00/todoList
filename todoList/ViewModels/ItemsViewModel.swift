//
//  ItemsViewModel.swift
//  todoList
//
//  Created by Chhewang Sherpa on 08/03/2024.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = [] {
        didSet {
            saveItems()
        }
    }
    
    init() {
        getItems()
    }
    
    func getItems() {
        guard
            let data = UserDefaults.standard.data(forKey: "encoded_items"),
            let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else { return }
        
        self.items = savedItems
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(text: String) {
        let newNote: ItemModel = ItemModel(text: text, isCompleted: false)
        items.append(newNote)
    }
    
    func updateNoteCompletion(item: ItemModel) {
        if let index = items.firstIndex(where: {$0.id ==  item.id}) {
            items[index] = item.updateCompletion()
        }
    }
    
    func saveItems() {
        if let encodeItems = try?JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodeItems, forKey: "encoded_items")
        }
    }
}
