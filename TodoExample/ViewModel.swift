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
}
