//
//  itemModel.swift
//  TodoList
//
//  Created by Mohammad  on 05/11/2024.
//

import Foundation

// immutable Struct 


struct ItemModel: Identifiable { // Conform to Identifiable
    let id: String
    let title: String
    let isCompleted: Bool
    
    
    init (id: String = UUID().uuidString, title: String, iscompleted: Bool){
        self.id = UUID().uuidString
        self.title = title
        self.isCompleted = iscompleted
    }
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, iscompleted: !isCompleted)
    }
}

