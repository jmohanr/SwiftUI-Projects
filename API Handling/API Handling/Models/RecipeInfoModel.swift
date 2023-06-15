//
// RecipeInfoModel.swift
//  API Handling
//
//  Created by Kaplan2 on 14/06/23.
//

import Foundation



struct InfoModel:Identifiable, Codable {
    var id = UUID()
    var infoId: Int
    var extendedIngredients: [ExtendedIngredients] = []
    
    enum CodingKeys: String,CodingKey {
        case infoId = "id"
        case extendedIngredients = "extendedIngredients"
    }    
}

struct ExtendedIngredients:Identifiable, Codable {
    var id = UUID()
    var infoId: Int
    var aisle: String
    var image: String
    var name: String
    var amount: Float
    var unitShort: String
    var unitLong: String
    var originalString: String
    var metaInformation: [String]
    
    enum CodingKeys: String,CodingKey {
        case infoId = "id"
        case aisle  = "aisle"
        case image  = "image"
        case name  = "name"
        case amount  = "amount"
        case unitShort  = "unitShort"
        case unitLong  = "unitLong"
        case originalString  = "originalString"
        case metaInformation  = "metaInformation"
    }
    
}

