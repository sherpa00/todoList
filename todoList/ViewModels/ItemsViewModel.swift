//
//  ItemsViewModel.swift
//  todoList
//
//  Created by Chhewang Sherpa on 08/03/2024.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems: [ItemModel] = [
            ItemModel(text: "This is the first item in todo list.", isCompleted: true),
            ItemModel(text: "This is the second item in todo list.", isCompleted: false),
            ItemModel(text: "This is the third item in todo list.", isCompleted: true),
            ItemModel(text: "This is the fourth item in todo list.", isCompleted: false)
        ]
        items.append(contentsOf: newItems)
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
}
