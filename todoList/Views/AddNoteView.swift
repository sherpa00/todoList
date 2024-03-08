//
//  AddNoteView.swift
//  todoList
//
//  Created by Chhewang Sherpa on 05/03/2024.
//

import SwiftUI

struct AddNoteView: View {
    @Environment(\.dismiss) var dissmissScreen
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    @State private var noteText: String = "";
    
    @State private var showAlert: Bool = false
    @State private var alertTitle: String = ""
    
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
                addNewNote()
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
        .alert(isPresented: $showAlert) {
            getAlert()
        }
    }
    
    func addNewNote() {
        if (isValidated()) {
            listViewModel.addItem(text: noteText)
            dissmissScreen()
        }
    }
    
    func isValidated() -> Bool {
        if (noteText.count >= 3) {
            return true
        }
        alertTitle = "Note text should be greater than 3 characters long."
        showAlert = true
        return false;
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }

}

#Preview {
    NavigationStack {
        AddNoteView()
    }
    .environmentObject(ListViewModel())
}
