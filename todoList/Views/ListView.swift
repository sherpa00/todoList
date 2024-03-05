//
//  ListView.swift
//  todoList
//
//  Created by Chhewang Sherpa on 03/03/2024.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
        "This is the first item",
        "This is the second item",
        "third!!!"
    ]
    var body: some View {
        List {
            ForEach(items, id: \.self) {item in
                    ListRowView(text: item)
            }
        }
        .navigationTitle("Todo List 📝")
        .toolbar {
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
