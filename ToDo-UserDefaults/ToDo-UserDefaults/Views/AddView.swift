//
//  AddView.swift
//  ToDo-UserDefaults
//
//  Created by Kaplan2 on 13/06/23.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listModel: ListViewModel
    @State var title: String = ""
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        
        ScrollView {
            VStack(spacing: 20) {
                TextField("Enter your Title", text: $title)
                    .padding()
                    .font(.title3)
                    .background(Color.gray.opacity(0.6))
                    .frame(maxWidth: .infinity,maxHeight: 60)
                    .cornerRadius(10)
                Button {
                    saveTodo()
                } label: {
                   Text("Save")
                        .padding()
                        .frame(maxWidth: .infinity,maxHeight: 60)
                        .background(Color.blue)
                        .cornerRadius(10)
                        
                }
            }.foregroundColor(.white)

        }.padding()
        .navigationTitle("Add Item")
        .alert(isPresented: $showAlert, content: {
            alertView()
        })
    }
    
    func saveTodo() {
        if textValid() {
            listModel.addItem(title: title)
            presentationMode.wrappedValue.dismiss()
        } else {
            showAlert = true
        }
    }
    func textValid() -> Bool {
        if title.count < 3 {
            alertTitle = "Todo Tile should be more than 3 characters 😀"
            showAlert = true
            return false
        }
        return true
    }
    
    func alertView() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
