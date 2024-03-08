//
//  ItemModel.swift
//  todoList
//
//  Created by Chhewang Sherpa on 06/03/2024.
//

import Foundation

// model for todo list items
struct ItemModel: Identifiable {
    let id: String
    let text: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, text: String, isCompleted: Bool) {
        self.id = id
        self.text = text
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, text: text, isCompleted: !isCompleted)
    }
}
