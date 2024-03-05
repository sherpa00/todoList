//
//  ListRowView.swift
//  todoList
//
//  Created by Chhewang Sherpa on 03/03/2024.
//

import SwiftUI

struct ListRowView: View {
    
    let text: String
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(text)
            Spacer()
        }
    }
}

#Preview {
    ListRowView(text: "Hello")
}
