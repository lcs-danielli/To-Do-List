//
//  ContentView.swift
//  To Do List
//
//  Created by 李泽宇 on 2025-01-27.
//

import SwiftUI

struct LandingView: View {
    
    // Mark: Stored Properties
    
    //The item currently being added
    @State var newItemDescirption: String = ""
    
    //The search Text
    @State var searchText = ""
    
    @State var todos: [ToDoItem] = exampleItems
    
    // Mark: Computed Properties
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                List($todos) { $todo in
                    
                    ItemView(currentItem: $todo)
                    // Delete a to-do Item
                        .swipeActions {
                            Button(
                                "Delete",
                                role: .destructive,
                                action: {
                                    delete(todo)
                                }
                            )
                        }
                }
                .searchable(text: $searchText)
                
                HStack {
                    TextField("Enter a to-do item", text: $newItemDescirption)
                    
                    Button("ADD") {
                        // Add the new to-do Item
                        createToDo(withTitle: newItemDescirption)
                    }
                    .font(.caption)
                    .disabled(newItemDescirption.isEmpty == true)
                }
                .padding(20)
            }
            .navigationTitle("TO DO LIST")
        }
    }

    //Mark: Functions
    func createToDo(withTitle title: String) {
        
        //Create the new to-do Item instance
        let todo = ToDoItem (
            title: title,
            done: false
        )
        
        todos
            .append(
                todo
            )
    }
     
    func delete(_ todo: ToDoItem) {
        
        //Remove the provided To-do item from the array
        todos.removeAll { currentItem in
            currentItem.id == todo.id
        }
    }
    
    
    
}

//#Preview {
//    LandingView()
//}


