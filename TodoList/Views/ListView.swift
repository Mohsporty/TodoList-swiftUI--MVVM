//
//  ListView.swift
//  TodoList
//
//  Created by Mohammad  on 04/11/2024.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List{
            Text("Hi")
        }
        .navigationTitle("ToDo List")
    }
}

#Preview {
    NavigationView{
        ListView()
    }
    
}
