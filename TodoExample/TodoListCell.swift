//
//  TodoListCell.swift
//  TodoExample
//
//  Created by 김태호 on 2022/06/06.
//

import SwiftUI

struct TodoListCell: View {
    @Binding var isFinished: Bool
    private let todoContent: String
    
    init(isFinished: Binding<Bool>,
         todoContent: String) {
        self._isFinished = isFinished
        self.todoContent = todoContent
    }
    
    var body: some View {
        HStack(spacing: 0) {
            // If todo task is finished, icon color set blue otherwise red.
            Image(systemName: isFinished ? "checkmark.circle" : "circle")
                .foregroundColor(isFinished ? .blue : .red)
                .padding(.trailing)
            Text(todoContent)
                .font(.title2)
            Spacer()
        }
    }
}

struct TodoListCell_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TodoListCell(isFinished: .constant(true), todoContent: "Item 1")
            TodoListCell(isFinished: .constant(true), todoContent: "Item 2")
            TodoListCell(isFinished: .constant(false), todoContent: "Item 3")
            TodoListCell(isFinished: .constant(false), todoContent: "Item 4")
        }
        // Preview shows the cell 
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
