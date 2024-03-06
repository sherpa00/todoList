//
//  ListView.swift
//  todoList
//
//  Created by Chhewang Sherpa on 03/03/2024.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [
        ItemModel(name: "This is the first item in todo list.", isCompleted: true),
        ItemModel(name: "This is the second item in todo list.", isCompleted: false),
        ItemModel(name: "This is the third item in todo list.", isCompleted: true),
        ItemModel(name: "This is the fourth item in todo list.", isCompleted: false)
    ]
    var body: some View {
        List {
            ForEach(items) {item in
                ListRowView(item: item)
            }
        }
        .navigationTitle("Todo List 📝")
        .toolbar {
            ToolbarItem(placement: .topBarLeading, content: {
                EditButton()
            })
            ToolbarItem(placement: .topBarTrailing, content: {
                NavigationLink(value: "") {
                    Image(systemName: "plus.circle")
                        .font(.title2)
                }
            })
        }
        .navigationDestination(for: String.self) {value in
            AddNoteView()
        }
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
}
