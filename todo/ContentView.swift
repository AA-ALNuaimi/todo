//
//  ContentView.swift
//  todo
//
//  Created by Abdulaziz AL Nuaimi on 27/07/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var todos = [Todo( title: "UNit 8"),
                                Todo( title: "UNit 9"),
                                Todo( title: "Adding feature ",subTitle: "calculating" , isCompleted: true )]
    
    @State private var showSheet = false
    
    var body: some View {
        NavigationStack{
            
            List($todos, editActions: [.all ]) { $todo in
                NavigationLink{
                    todoDetailView(todo: $todo)
                } label: {
                    HStack{
                        Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
                            .onTapGesture {
                                todo.isCompleted.toggle()
                            }
                        VStack(alignment: .leading){
                            Text(todo.title)
                                .strikethrough(todo.isCompleted)
                            if !todo.subTitle.isEmpty{
                                Text(todo.subTitle)
                                    .font(.footnote)
                                    .foregroundColor(.gray)
                                    .strikethrough(todo.isCompleted)
                            }
                        }
                    }
                }
                
                
            }
            .navigationTitle("Todos")
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    EditButton()
                    
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        showSheet = true
                    }label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $showSheet){
                newToDo(sourceArray: $todos)
                    .presentationDetents([.medium])
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
