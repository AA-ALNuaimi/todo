//
//  newToDo.swift
//  todo
//
//  Created by Abdulaziz AL Nuaimi on 19/10/2023.
//

import SwiftUI


struct newToDo: View {
    
    @State private var title = ""
    @State private var subtitle = ""
    @Binding var sourceArray: [Todo]
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form  {
            Section{
                TextField( "Title" , text: $title)
                TextField( "Subtitle" , text: $subtitle)
            }
            Section{
                Button("Save"){
                    let todo = Todo(title: title, subTitle: subtitle )
                    sourceArray.append(todo)
                    dismiss() 
                }
                Button("Cancel", role: .destructive ){
                    dismiss()  
                }
            }
        }
    }
}

struct newToDo_Previews: PreviewProvider {
    static var previews: some View {
        newToDo(sourceArray:  .constant([]))
    }
}
 
