//
//  PokeManImagesView.swift
//  API Handling
//
//  Created by Kaplan2 on 15/06/23.
//

import SwiftUI

struct PokeManImagesView: View {
    let gridItem = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    @ObservedObject var viewModel = PokeManViewModel()
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.green.opacity(0.2),.pink.opacity(0.3)]), startPoint: .topLeading, endPoint: .bottomLeading)
                    .ignoresSafeArea()
                ScrollView {
                    LazyVGrid(columns: gridItem) {
                        ForEach(viewModel.model) { model in
                            NavigationLink {
                                PokimanDetaildView(kfModel: model)
                            } label: {
                                PokiCell(kfModel: model)
                            }
                        }
                    }
                }.padding(.horizontal,10)
                    .navigationTitle("Poki Man")
            }
            
        }
    }
}

struct KingFisherImagesView_Previews: PreviewProvider {
    static var previews: some View {
        PokeManImagesView()
    }
}
