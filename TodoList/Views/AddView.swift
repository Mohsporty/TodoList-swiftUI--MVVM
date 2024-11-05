//
//  AddView.swift
//  TodoList
//
//  Created by Mohammad  on 04/11/2024.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText : String = ""
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)))
                    .cornerRadius(10)
                
                Button(action: {
                    
                }, label: {
                    Text("save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                         .frame(height: 55)
                         .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                })
            }
            .padding(14)
        }
        .navigationTitle("Add an Item 🖋️ ")
    }
}

struct  AddView_previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            AddView()
        }
    }
}
