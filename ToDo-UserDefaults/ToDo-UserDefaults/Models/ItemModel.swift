//
//  ItemModel.swift
//  ToDo-UserDefaults
//
//  Created by Kaplan2 on 13/06/23.
//

import Foundation

struct ItemModel:Identifiable,Codable {
    var id: String
    var name: String
    var isCompleted: Bool
    
    init(id: String = UUID().uuidString, name: String,isCompleted: Bool) {
        self.id = id
        self.name = name
        self.isCompleted = isCompleted
    }
    
    func updateCompleted() -> ItemModel {
        return ItemModel(name: name, isCompleted: !isCompleted)
    }
}
