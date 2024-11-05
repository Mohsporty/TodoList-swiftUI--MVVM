//
//  ListView.swift
//  TodoList
//
//  Created by Mohammad  on 04/11/2024.
//

import SwiftUI

struct ListView: View {
    @State var items : [ItemModel] = [
        ItemModel(title: "This is the first title 📝", isCompleted: false),
        ItemModel(title: "this is the secend", isCompleted: true),
        ItemModel(title: "Third!", isCompleted: false)
    ]
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
            //buttom delet her and move item
            .onDelete(perform: deletitem)
            .onMove(perform: moveItem)
            
        }
        
        // add the edit button and add buten in this page
        .listStyle(PlainListStyle())
            .navigationTitle("ToDo List 📝")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                    NavigationLink("Add",
                                   destination: AddView())
            )
        }
    func deletitem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
  // this is for unmove butoon actions we creat functions here
    
    func moveItem(from : IndexSet, to : Int) {
        items.move(fromOffsets: from    , toOffset: to)
    }
    
    }
    
    #Preview {
        NavigationView{
            ListView()
        }
        
    }
    
    

