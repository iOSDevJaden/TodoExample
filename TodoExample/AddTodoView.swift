//
//  AddTodoView.swift
//  TodoExample
//
//  Created by 김태호 on 2022/06/06.
//

import SwiftUI

struct AddTodoView: View {
    @State private var text: String = ""
    @EnvironmentObject private var vm: ViewModel
    
    @Environment(\.presentationMode)
    var presentationMode
    
    var body: some View {
        VStack(alignment: .center) {
            TextField("Input Todo Item", text: $text)
                .padding()
                .border(.blue, width: 2)
                .font(.title)
            
            Button(
                action: onClickAddTodoItem,
                label: getAddTodoBtnLabel)
            .padding()
        }
        .navigationTitle("Add Todo Item")
        .padding(.horizontal)
    }
    
    private func getAddTodoBtnLabel() -> some View {
        Text("Add Todo")
    }
    
    private func onClickAddTodoItem() {
        vm.addTodoItem(TodoModel(todoContent: text))
        presentationMode.wrappedValue.dismiss()
    }
}

struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddTodoView()
                .environmentObject(ViewModel())
        }
    }
}
