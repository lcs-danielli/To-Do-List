//
//  ContentView.swift
//  To Do List
//
//  Created by 李泽宇 on 2025-01-27.
//
import SwiftData
import SwiftUI

struct LandingView: View {
    
    // Mark: Stored Properties
    
    //The item currently being added
    @State var newItemDescirption: String = ""
    
    //The search Text
    @State var searchText = ""
    
    //Access the model Text
    @Environment(\.modelContext) var modelContext
    
    @Query var todos: [TodoItem]
    
    // Mark: Computed Properties
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                List {
                    ForEach(todos) { todo in
                        
                        ItemView(currentItem: todo)
                 
                    }
                    .onDelete(perform: removeRows)
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
            .onAppear {
                printCommandToOpenDatabaseFile()
            }
        }
    }

    //Mark: Functions
    func createToDo(withTitle title: String) {
        
        //Create the new to-do Item instance
        let todo = TodoItem (
            title: title,
            done: false
        )
        
        // Use the model context to insert the new to-do
        modelContext.insert(todo)
    }
     
    func removeRows(at offsets: IndexSet) {
        
        // Accept the offset within the list
        // (the position of the item being deleted)
        //
        // Then ask the model context to delete this
        // for us, from the 'todos' array
        for offset in offsets {
            modelContext.delete(todos[offset])
        }
    }
     
    
    
}

//#Preview {
//    LandingView()
//}


