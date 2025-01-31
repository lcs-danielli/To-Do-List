//
//  ItemView.swift
//  To Do List
//
//  Created by 李泽宇 on 2025-01-27.
//

import SwiftUI

struct ItemView: View {
    
    @Binding var currentItem: ToDoItem
    
    var body: some View {
        Label(
            title: {
                Text(currentItem.title)
            },
            icon: {
                Image(
                    systemName: currentItem.done == true ? "checkmark.circle" : "circle"
                )
                // Tap to mark as done
                    .onTapGesture {
                        currentItem.done.toggle()
                    }
                
            }
        )
    }
}

#Preview {
    List{
        ItemView(currentItem: Binding.constant(firstItem))
        ItemView(currentItem: Binding.constant(secondItem))
    }
}
