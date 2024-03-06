//
//  ItemModel.swift
//  todoList
//
//  Created by Chhewang Sherpa on 06/03/2024.
//

import Foundation

// model for todo list items
struct ItemModel: Identifiable {
    let id = UUID().uuidString
    let name: String
    let isCompleted: Bool
}
