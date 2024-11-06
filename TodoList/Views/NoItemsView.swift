//
//  NoItemsView.swift
//  TodoList
//
//  Created by Mohammad  on 06/11/2024.
//

import SwiftUI

struct NoItemsView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 10){
                Text("There are no items!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you Productive person? ithink you should click the add button and add items to your to do list ")
                NavigationLink(destination: AddView(), label: {
                    Text("Add Some Missions")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                    
                })
            }
            .multilineTextAlignment(.center)
            .padding(40)
        }
        .frame(maxWidth:.infinity,  maxHeight:.infinity)
    }
}

#Preview {
    NavigationView {
        NoItemsView()
            .navigationTitle("Title")
    }
  
}
