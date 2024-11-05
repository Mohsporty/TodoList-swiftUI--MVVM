//
//  ListRowView.swift
//  TodoList
//
//  Created by Mohammad  on 04/11/2024.
//

import SwiftUI

struct ListRowView: View {
    
    let item  : ItemModel
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

#Preview {
    
    var item1 = ItemModel(title: " this is the First Title", iscompleted: false)
    var item2 = ItemModel(title: "Secend item", iscompleted: true)
    
    Group {
        ListRowView(item: item1)
        ListRowView(item: item2)
    }
    .previewLayout(.sizeThatFits)
    
}
    
