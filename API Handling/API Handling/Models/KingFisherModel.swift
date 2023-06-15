//
//  KingFisherModel.swift
//  API Handling
//
//  Created by Kaplan2 on 15/06/23.
//

import Foundation

struct KingFisherModel: Codable,Identifiable {
    var id: Int
    var attack: Int
    var defense: Int
    var height: Int
    var weight: Int
    var name: String
    var imageUrl: String
    var description: String
    var type: String
}

struct EvolutionChain: Codable,Identifiable {
    var id: Int
    var name: String
}


