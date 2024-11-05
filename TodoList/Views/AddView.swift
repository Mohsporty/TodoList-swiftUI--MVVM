//
//  AddView.swift
//  TodoList
//
//  Created by Mohammad  on 04/11/2024.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel : ListViewModel
    @State var textFieldText : String = ""
    @State var alertTitle : String = ""
    @State var showAlert : Bool = false
    
    
    
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)))
                    .cornerRadius(10)
                
                Button(action: saveButtonPressed,  label: {
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
        .alert(isPresented: $showAlert, content: getAlert )
    }
    func saveButtonPressed(){
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
      
    }
    // thid functions for text in the bar should be how to saved
    func textIsAppropriate() -> Bool{
        if textFieldText.count < 3 {
            alertTitle = "Your new todo item must be at least 3 characters long ❌ "
            showAlert.toggle()
            return false
        }
        return true
    }
    func getAlert() -> Alert{
        return Alert(title: Text(alertTitle))
    }
    
}

struct  AddView_previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
        
}
