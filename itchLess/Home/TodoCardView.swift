//
//  TodoCardView.swift
//  itchLess
//
//  Created by Amy Hsiao on 2024/7/18.
//

import SwiftUI

struct TodoItem: Identifiable {
    let id = UUID()
    let title: String
    var isCompleted: Bool
}

struct TodoCardView: View {
    @Binding var item: TodoItem
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.square.fill" : "square")
                .foregroundColor(item.isCompleted ? .green : .gray)
                .onTapGesture {
                    item.isCompleted.toggle()
                }
            
            Text(item.title)
                .strikethrough(item.isCompleted)
            
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 2)
    }
}
