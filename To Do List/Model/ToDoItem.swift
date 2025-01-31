//
//  ToDoItem.swift
//  To Do List
//
//  Created by 李泽宇 on 2025-01-27.
//

import Foundation

struct ToDoItem: Identifiable {
    let id = UUID()
    var title: String
    var done: Bool
}

let firstItem = ToDoItem(title: "Study for Chemistry quiz", done: false)

let secondItem = ToDoItem(title: "Finish computer Science assignment", done: true)

let thirdItem = ToDoItem(title: "Go for a run around campus", done: false)

let exampleItems = [
    
    firstItem
    ,
    secondItem
    ,
    thirdItem
    
]
