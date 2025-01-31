//
//  ToDoItem.swift
//  To Do List
//
//  Created by 李泽宇 on 2025-01-27.
//

import SwiftData

@Model
class TodoItem: Identifiable {
    var title: String
    var done: Bool
    
    init(title: String, done: Bool) {
        self.title = title
        self.done = done
    }
}

let firstItem = TodoItem(title: "Study for Chemistry quiz", done: false)

let secondItem = TodoItem(title: "Finish computer Science assignment", done: true)

let thirdItem = TodoItem(title: "Go for a run around campus", done: false)

let exampleItems = [
    
    firstItem
    ,
    secondItem
    ,
    thirdItem
    
]
