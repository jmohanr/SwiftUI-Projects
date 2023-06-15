//
//  PokimanDetaildView.swift
//  API Handling
//
//  Created by Kaplan2 on 15/06/23.
//

import SwiftUI
import Kingfisher

struct PokimanDetaildView: View {
    var kfModel: KingFisherModel

    var body: some View {
        KFImage(URL(string: kfModel.imageUrl))
            .resizable()
    }
}

struct PokimanDetaildView_Previews: PreviewProvider {
    static var previews: some View {
        PokimanDetaildView(kfModel: KingFisherModel(id: 1, attack: 2, defense: 3, height: 3, weight: 45, name: "Jagan", imageUrl: "https://firebasestorage.googleapis.com/v0/b/pokedex-bb36f.appspot.com/o/pokemon_images%2F2CF15848-AAF9-49C0-90E4-28DC78F60A78?alt=media&token=15ecd49b-89ff-46d6-be0f-1812c948e334", description: "API Handling", type: "fire"))
    }
}
