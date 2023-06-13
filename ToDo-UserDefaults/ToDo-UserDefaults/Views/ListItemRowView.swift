//
//  ListItemRowView.swift
//  ToDo-UserDefaults
//
//  Created by Kaplan2 on 13/06/23.
//

import SwiftUI

struct ListItemRowView: View {
    let item: ItemModel
    var body: some View {
      
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green:.red)
            Text(item.name).foregroundColor(.black)
                .font(.title3)
                .fontWeight(.medium)
            Spacer()
        }.padding(.horizontal)
        
    }
}

struct ListItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 30) {
            Group {
                ListItemRowView(item: ItemModel(name: "WakesUpEarly", isCompleted: true))
                ListItemRowView(item: ItemModel(name: "WakesUpEarly", isCompleted: false))
            }
        }
       
    }
}
