//
//  RecipeView.swift
//  API Handling
//
//  Created by Kaplan2 on 15/06/23.
//

import SwiftUI
import Kingfisher

struct RecipeView: View {
    @ObservedObject  var viewModel = RecipeInfoViewModel()

    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.data(),id: \.id) { info in
                    NavigationLink {
                        DetailRecipeView(data: info)
                    } label: {
                        HStack(spacing: 20) {
                            KFImage(URL(string: info.image))
                                .resizable()
                                .frame(maxWidth: 60,maxHeight: 60)
                                .clipShape(Circle())
                            Text(info.name)
                        }
                    }
                }
            }
            .background(Color.red)
            .navigationTitle("Recipe details")
        }
        
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RecipeView()
        }
       
    }
}
