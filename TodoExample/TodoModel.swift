//
//  TodoModel.swift
//  TodoExample
//
//  Created by 김태호 on 2022/06/06.
//

import Foundation

struct TodoModel: Identifiable {
    // In order to use this model in the list.
    let id: String
    
    let isFinished: Bool
    let todoContent: String
    
    // Todo Item should be started with
    // not finished status when it is initially created.
    init(id: String,
         isFinished: Bool = false,
         todoContent: String) {
        self.id = UUID().uuidString
        self.isFinished = isFinished
        self.todoContent = todoContent
    }
    
    // Update Todo
    func updateItem() -> Self {
        return TodoModel(id: self.id,
                         isFinished: !isFinished,
                         todoContent: self.todoContent)
    }
}

