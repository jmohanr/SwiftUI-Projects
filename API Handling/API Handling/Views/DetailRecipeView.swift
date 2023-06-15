//
//  DetailRecipeView.swift
//  API Handling
//
//  Created by Kaplan2 on 15/06/23.
//

import SwiftUI
import Kingfisher

struct DetailRecipeView: View {
    let data: ExtendedIngredients
    var body: some View {
        KFImage(URL(string: data.image))
            .resizable()
    }
}

struct DetailRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        DetailRecipeView(data: ExtendedIngredients(infoId: 1, aisle: "2", image: "https://spoonacular.com/cdn/ingredients_100x100/olive-oil.jpg", name: "", amount: 2, unitShort: "", unitLong: "", originalString: "", metaInformation: []))
    }
}
