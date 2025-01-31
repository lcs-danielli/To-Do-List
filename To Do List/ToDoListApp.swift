//
//  To_Do_ListApp.swift
//  To Do List
//
//  Created by 李泽宇 on 2025-01-27.
//

import SwiftData
import SwiftUI

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            LandingView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
