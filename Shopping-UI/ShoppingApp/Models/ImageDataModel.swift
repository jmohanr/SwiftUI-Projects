//
//  ImageDataModel.swift
//  ShoppingApp
//
//  Created by Kaplan2 on 10/06/23.
//

import Foundation

struct FruitModel {
    var id: Int
    var title: FruitTitle
    var image: String
    var price: Double
    var color: String
}

enum FruitTitle: String {
    case apple, apricot, avocado, banana,blackberry, cherry, dragonfruit, fig, grapes, kiwi, lemon, mango, muskmelon, orange,papaya, pear, pineapple, plum,raspberry, strawbery, watermelon
}
