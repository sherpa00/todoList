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
                .foregroundStyle(.primary)
                .font(.system(size: 60))
            Text("Empty Todos")
                .font(.title)
                .fontWeight(.semibold)
                .padding(5)
            Text("There is nothing added here yet so please add some todos to make your day more productive")
                .font(.subheadline)
                .foregroundStyle(.gray)
                .padding(.bottom, 20)
            NavigationLink(value: "_") {
                Text("Add Something")
                    .padding()
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.white)
                    .background(Color("AccentColor"))
                    .cornerRadius(10)
                    .shadow(color: Color("AccentColor").opacity(0.5), radius: 10)
                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            }
        }
        .frame(maxWidth: 300)
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
