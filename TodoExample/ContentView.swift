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
                        })
                }
            }
        }
        .navigationTitle("Todo List") // Setting Title
        .toolbar(content: getTrailingToolbar)
    }
    
    private func getTrailingToolbar() -> some ToolbarContent {
        ToolbarItem(placement: .navigationBarTrailing) {
            Button(
                action: {},
                label: {
                    Text("Add Todo")
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
