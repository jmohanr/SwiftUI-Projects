//
//  ListViewModel.swift
//  ToDo-UserDefaults
//
//  Created by Kaplan2 on 13/06/23.
//

import Foundation

class ListViewModel: ObservableObject {
    let itemKey = "item_List"
    @Published var items: [ItemModel] = [] {
        didSet {
            saveItems()
        }
    }
    
    init() {
        getData()
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(name: title,isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
        if let index = items.firstIndex(where: {$0.id == item.id}) {
            items[index] = item.updateCompleted()
        }
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    
    func moveItems(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func getData() {
        guard let data = UserDefaults.standard.value(forKey: itemKey) as? Data else { return  }
        guard let savedValues = try? JSONDecoder().decode([ItemModel].self, from: data) else { return }
        self.items = savedValues
        print(savedValues)
    }
    
    func saveItems() {
        if let encodeData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodeData, forKey: itemKey)
        }
    }
}
