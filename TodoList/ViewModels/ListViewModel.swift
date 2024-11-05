//
//  ListViewModel.swift
//  TodoList
//
//  Created by Mohammad  on 05/11/2024.
//

import Foundation

class ListViewModel: ObservableObject{
    
    @Published var items : [ItemModel] = []
    
    init(){
        getItems()
    }
    func getItems(){
        let newItems = [
            ItemModel(title: "This is the first title 📝", isCompleted: false),
            ItemModel(title: "this is the secend", isCompleted: true),
            ItemModel(title: "Third!", isCompleted: false)
        ]
        items.append(contentsOf: newItems)
    }
    func deletitem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
  // this is for unmove butoon actions we creat functions here
    
    func moveItem(from : IndexSet, to : Int) {
        items.move(fromOffsets: from    , toOffset: to)
    }
    
}
