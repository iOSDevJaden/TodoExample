//
//  ViewModel.swift
//  TodoExample
//
//  Created by 김태호 on 2022/06/06.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var todoItems: [TodoModel] = [
        TodoModel(todoContent: "Item1"),
        TodoModel(todoContent: "Item2"),
        TodoModel(todoContent: "Item3"),
        TodoModel(todoContent: "Item4"),
        TodoModel(todoContent: "Item5"),
    ]
    
    func addTodoItem(_ item: TodoModel) {
        todoItems.append(item)
    }
    
    func updateTodoItem(_ item: TodoModel) {
        // Find Todo Item Index
        guard let targetItemIndex = todoItems.firstIndex(where: { $0.id == item.id }) else {
            return
        }
        
        // Update Todo Item status
        todoItems[targetItemIndex] = item.updateItem()
    }
    
    func deleteTodoItem(_ indexSet: IndexSet) {
        todoItems.remove(atOffsets: indexSet)
    }
    
    func moveTodoItem(from: IndexSet, to: Int) {
        todoItems.move(fromOffsets: from, toOffset: to)
    }
}
