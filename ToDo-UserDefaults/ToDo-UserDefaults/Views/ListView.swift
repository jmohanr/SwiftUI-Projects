//
//  ListView.swift
//  ToDo-UserDefaults
//
//  Created by Kaplan2 on 13/06/23.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var listModel: ListViewModel
    @State var isHideToolBar: Bool = false
    var body: some View {
        ZStack {
            if listModel.items.isEmpty {
                NoListView()
            } else {
                List {
                    ForEach(listModel.items, id: \.id) { item in
                        ListItemRowView(item: item)
                            .onTapGesture {
                                print(item)
                                listModel.updateItem(item: item)
                            }
                    }.onDelete(perform: listModel.deleteItem)
                        .onMove(perform: listModel.moveItems)
                }
            }
        }.navigationTitle("ToDoList")
            .toolbar {
                ToolbarItem {
                    NavigationLink {
                        AddView()
                    } label: {
                        Text("Add")
                    }
                    .isHiden(isHiden: listModel.items.isEmpty ? true : false)
                }
            }
    }
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }.environmentObject(ListViewModel())
    }
}

extension View {
     func isHiden(isHiden: Bool) ->  some View {
         opacity(isHiden ? 0 : 1)
    }
}
