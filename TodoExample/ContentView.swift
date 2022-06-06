//
//  ContentView.swift
//  TodoExample
//
//  Created by 김태호 on 2022/06/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // Todo List Cell
            List {
                TodoListCell(isFinished: .constant(true), todoContent: "Item 1")
                TodoListCell(isFinished: .constant(false), todoContent: "Item 2")
                TodoListCell(isFinished: .constant(false), todoContent: "Item 3")
            }
        }
        .navigationTitle("Todo List") // Setting Title
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
