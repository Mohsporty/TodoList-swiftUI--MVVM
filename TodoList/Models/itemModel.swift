//
//  itemModel.swift
//  TodoList
//
//  Created by Mohammad  on 05/11/2024.
//

import Foundation

struct ItemModel: Identifiable { // Conform to Identifiable
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
