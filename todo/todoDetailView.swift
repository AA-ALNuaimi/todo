//
//  todoDetailView.swift
//  todo
//
//  Created by Abdulaziz AL Nuaimi on 27/07/2023.
//

import SwiftUI

struct todoDetailView: View {
    
    @Binding var todo : Todo
    
    
    var body: some View {
        Form{
            TextField("Title", text: $todo.title)
            TextField("subtitle", text: $todo.subTitle)
            Toggle("Completed?", isOn: $todo.isCompleted)
        }
        .navigationTitle("Todo Detail")
    }
}

struct todoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        todoDetailView(todo: .constant(Todo(title: "some title")))
    }
}
