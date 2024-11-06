//
//  ListView.swift
//  TodoList
//
//  Created by Mohammad  on 04/11/2024.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel : ListViewModel

    var body: some View {
        ZStack{
            if listViewModel.items.isEmpty { 
                          Text("No Items")
                    .font(.largeTitle)
                    
                    
            } else {
                List {
                    ForEach(listViewModel.items) { item in
                        ListRowView(item: item)
                            .onTapGesture {
                                withAnimation(.linear) {
                                    listViewModel.updateItem(item: item)
                                }
                            }
                    }
                    //buttom delet her and move item
                    .onDelete(perform: listViewModel.deletitem)
                    .onMove(perform: listViewModel.moveItem)
                    
                }
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
        .environmentObject(ListViewModel())
    }
    
    

