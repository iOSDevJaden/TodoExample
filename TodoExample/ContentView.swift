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
            HStack {
                Image(systemName: "circle")
                Text("Item 1")
                Spacer()
            }
        }
        .navigationTitle("Todo List") // Setting Title
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
