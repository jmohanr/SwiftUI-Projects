//
//  ContentView.swift
//  API Handling
//
//  Created by Kaplan2 on 14/06/23.
//

import SwiftUI
//62f63efa28msh8c2a9d7ccc4e400p12288cjsn3a31e5d4f7ff
//https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/informationBulk

struct ContentView: View {
    
    var body: some View {
        TabView {
            RecipeView()
                .tabItem {
                    Text("Recipe")
                }
            PokeManImagesView()
                .tabItem {
                    Text("Images")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
