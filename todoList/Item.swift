//
//  Item.swift
//  todoList
//
//  Created by Chhewang Sherpa on 03/03/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
