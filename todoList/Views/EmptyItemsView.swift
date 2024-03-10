//
//  EmptyItemsView.swift
//  todoList
//
//  Created by Chhewang Sherpa on 10/03/2024.
//

import SwiftUI

struct EmptyItemsView: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .foregroundStyle(.gray)
                .font(.system(size: 60))
            Text("Empty Todos")
                .font(.title)
                .bold()
                .padding(5)
            Text("There is nothing added here yet so please add some todos to make your day more productive")
                .font(.subheadline)
                .foregroundStyle(.gray)
                .padding(.horizontal, 50)
                .padding(.bottom, 20)
            NavigationLink(value: "_") {
                Text("Add Something")
                    .padding()
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.white)
                    .background(.blue)
                    .padding(.horizontal, 60)
                    .cornerRadius(10)
                    .shadow(color: Color.blue.opacity(0.5), radius: 10)
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            }
        }
        .navigationTitle("Todos")
        .navigationDestination(for: String.self) {value in
            AddNoteView()
        }
        .multilineTextAlignment(.center)
    }
}

#Preview {
    NavigationStack {
        EmptyItemsView()
    }
}
