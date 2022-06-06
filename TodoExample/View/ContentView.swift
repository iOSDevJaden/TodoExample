//
//  ContentView.swift
//  TodoExample
//
//  Created by 김태호 on 2022/06/06.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var vm = ViewModel()
    
    var body: some View {
        VStack {
            // Todo List Cell
            List {
                ForEach(vm.todoItems) { item in
                    TodoListCell(todoItem: item)
                        .onTapGesture(perform: {
                            /* Update TodoItem isFinished Property */
                            vm.updateTodoItem(item)
                        })
                }
                .onMove(perform: vm.moveTodoItem)
                .onDelete(perform: vm.deleteTodoItem)
            }
        }
        .navigationTitle("Todo List") // Setting Title
        .toolbar(content: getLeadingToolBar)
        .toolbar(content: getTrailingToolbar)
    }
    
    private func getLeadingToolBar() -> some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading, content: {
            EditButton()
        })
    }
    
    private func getTrailingToolbar() -> some ToolbarContent {
        ToolbarItem(placement: .navigationBarTrailing) {
            NavigationLink("Add Todo", destination: {
                AddTodoView()
                    .environmentObject(vm)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // Preview does not show how ContentView would look like.
        NavigationView {
            ContentView()
        }
    }
}
