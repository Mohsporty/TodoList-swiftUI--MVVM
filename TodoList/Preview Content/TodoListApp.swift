//
//  TodoListApp.swift
//  TodoList
//
//  Created by Mohammad  on 03/11/2024.
//

import SwiftUI




@main
struct TodoListApp: App {
    
    @StateObject  var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
                
            
            .environmentObject(listViewModel)
        }
    }
}
