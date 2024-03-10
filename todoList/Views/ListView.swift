//
//  ListView.swift
//  todoList
//
//  Created by Chhewang Sherpa on 03/03/2024.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        ZStack {
            if listViewModel.items.isEmpty {
                EmptyItemsView()
            } else {
                List {
                    ForEach(listViewModel.items) {item in
                        ListRowView(item: item)
                            .onTapGesture {
                                withAnimation(.linear) {
                                    listViewModel.updateNoteCompletion(item: item)
                                }
                            }
                    }
                    .onDelete(perform: listViewModel.deleteItem)
                    .onMove(perform: listViewModel.moveItem)
                }
                .listStyle(.plain)
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
    .environmentObject(ListViewModel())
}

