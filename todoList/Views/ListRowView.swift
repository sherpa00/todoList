//
//  ListRowView.swift
//  todoList
//
//  Created by Chhewang Sherpa on 03/03/2024.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isCompleted ? Color.green : Color.red)
            Text(item.text)
                .strikethrough(item.isCompleted, color: .black)
            Spacer()
        }
        .padding(10)
        .font(.title2)
    }
}

#Preview {
    ListRowView(item: ItemModel(text: "Hello this is a test item", isCompleted: true))
}
