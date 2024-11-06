//
//  ListViewModel.swift
//  TodoList
//
//  Created by Mohammad  on 05/11/2024.
//

import Foundation
/*
 CRUD FUNCTIONS
 
 Creat
 Read
 Update
 Delet
 
 
 */
class ListViewModel: ObservableObject{
    
    @Published var items : [ItemModel] = []{
        didSet{
            saveItems()
        }
    }
    
    let itemsKey : String = "items_list"
    
    init(){
        getItems()
    }
    func getItems(){
  //      let newItems = [
  //          ItemModel(title: "This is the first title 📝", iscompleted: false),
  //          ItemModel(title: "this is the secend", iscompleted: true),
 //           ItemModel(title: "Third!", iscompleted: false)
 //       ]
//        items.append(contentsOf: newItems)
        
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else { return }
    
        
        self.items = savedItems
    }
    func deletitem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
        
        
        
        // we can add this code in the euch funcation ut best way wan we change any thing in array will be save this better way to be clean arrechatic we creat in up the didSet functions for save item =    saveItems()
    }
  // this is for unmove butoon actions we creat functions here
    
    func moveItem(from : IndexSet, to : Int) {
        items.move(fromOffsets: from    , toOffset: to)
    }
    func addItem(title: String){
        let newItem = ItemModel(title: title, iscompleted: false)
        items.append(newItem)
    }
    func updateItem(item: ItemModel){
        
//        let index = items.firstIndex { (existingItem) -> Bool in
//            return existingItem.id == item.id
            
 //       } {
            // run this code
 //       }
        
        // this actions will be created new id for euch iteam is created 
        if let index = items.firstIndex(where: { $0.id == item.id}){
            items[index] = item.updateCompletion()
            
        }
    }
    
    func saveItems(){
        if let encodedData = try? JSONEncoder().encode(items){
            UserDefaults.standard.set(encodedData, forKey: itemsKey)
        }
    }
}
