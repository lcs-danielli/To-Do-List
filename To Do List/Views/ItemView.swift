//
//  ItemView.swift
//  To Do List
//
//  Created by 李泽宇 on 2025-01-27.
//

import SwiftUI

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

#Preview {
    List{
        ItemView(title: "Have a nap", done: false)
        ItemView(title: "Eat luunch", done: true)
    }
}
