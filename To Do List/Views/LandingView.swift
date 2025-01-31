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
                    
                    Label(
                        title: {
                            Text("Study for Chemistry quiz")
                        }, icon: {
                            Image(systemName: "circle")
                        }
                    )
                    Label(
                        title: {
                            Text("Finish Computer Science Assignment")
                        }, icon: {
                            Image(systemName: "circle")
                        }
                    )
                    Label(
                        title: {
                            Text("Go on a run around campus")
                        }, icon: {
                            Image(systemName: "circle")
                        }
                    )
                    Text("Go for a run around campus")
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
