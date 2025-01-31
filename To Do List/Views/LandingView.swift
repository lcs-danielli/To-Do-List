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
    
    // Mark: Computed Properties
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                List {
                    
                    ItemView(
                        title: "Study for Chemistry quiz",
                        done: false
                    )
                    
                    ItemView(
                        title: "Finish Computer Science assignment",
                        done: true
                    )
                    
                    ItemView(
                        title: "Go for a run around campus",
                        done: false
                    )
                }
                .searchable(text: $searchText)
                
                HStack {
                    TextField("Enter a to-do item", text: $newItemDescirption)
                    
                    Button("ADD") {
                        // Add the new to-do Item
                    }
                    .font(.caption)
                }
                .padding(20)
            }
            .navigationTitle("TO DO LIST")
        }
    }
}

#Preview {
    LandingView()
}

struct ItemView: View {
    
    let title: String
    let done: Bool
    
    var body: some View {
        Label(
            title: {
                Text(title)
            }, icon: {
                Image(systemName: done == true ? "checkmark.circle" : "circle ")
                
            }
        )
    }
}
