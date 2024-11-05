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
    }
    
    #Preview {
        NavigationView{
            ListView()
        }
        
    }
    
    

