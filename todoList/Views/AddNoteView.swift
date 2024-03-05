//
//  AddNoteView.swift
//  todoList
//
//  Created by Chhewang Sherpa on 05/03/2024.
//

import SwiftUI

struct AddNoteView: View {
    @State private var noteText: String = "";
    
    var body: some View {
        VStack {
            TextField(
                "type something...",
                text: $noteText
            )
            .padding()
            .background(.gray.opacity(0.3))
            .foregroundStyle(.black)
            .font(.headline)
            .padding()
            
            Button(action: {
                noteText = ""
            }, label: {
                Text("Add Note")
                    .foregroundStyle(.white)
            })
            .background(.blue)
            .buttonStyle(.borderedProminent)
            .controlSize(.extraLarge)
            Spacer()
        }
        .navigationTitle("Add Note 📇")
    }
}

#Preview {
    NavigationStack {
        AddNoteView()
    }
}
