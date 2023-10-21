//
//  todo.swift
//  todo
//
//  Created by Abdulaziz AL Nuaimi on 27/07/2023.
//

import Foundation

struct Todo : Identifiable{
    var id = UUID()
    var title: String
    var subTitle = " "
    var isCompleted = false
}
