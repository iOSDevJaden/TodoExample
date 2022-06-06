//
//  TodoListCell.swift
//  TodoExample
//
//  Created by 김태호 on 2022/06/06.
//

import SwiftUI

struct TodoListCell: View {
    let todoItem: TodoModel
    
    init(todoItem: TodoModel) {
        self.todoItem = todoItem
    }
    
    var body: some View {
        HStack(spacing: 0) {
            // If todo task is finished, icon color set blue otherwise red.
            Image(systemName: todoItem.isFinished ? "checkmark.circle" : "circle")
                .foregroundColor(todoItem.isFinished ? .blue : .red)
                .padding(.trailing)
            Text(todoItem.todoContent)
                .font(.title2)
            Spacer()
        }
    }
}

struct TodoListCell_Previews: PreviewProvider {
    static let todoItem1 = TodoModel(isFinished: true, todoContent: "Item 1")
    static let todoItem2 = TodoModel(todoContent: "Item 2")
    static let todoItem3 = TodoModel(todoContent: "Item 3")
    static let todoItem4 = TodoModel(isFinished: true, todoContent: "Item 4")
    
    static var previews: some View {
        Group {
            TodoListCell(todoItem: todoItem1)
            TodoListCell(todoItem: todoItem2)
            TodoListCell(todoItem: todoItem3)
            TodoListCell(todoItem: todoItem4)
        }
        // Preview shows the cell 
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
