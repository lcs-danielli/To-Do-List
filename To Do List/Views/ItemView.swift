//
//  ItemView.swift
//  To Do List
//
//  Created by 李泽宇 on 2025-01-27.
//

import SwiftUI

struct ItemView: View {
    
    let currentItem: ToDoItem
    
    var body: some View {
        Label(
            title: {
                Text(currentItem.title)
            },
            icon: {
                Image(
                    systemName: currentItem.done == true ? "checkmark.circle" : "circle "
                )
                
            }
        )
    }
}

#Preview {
    List{
        ItemView(currentItem: firstItem)
        ItemView(currentItem: secondItem)
    }
}
