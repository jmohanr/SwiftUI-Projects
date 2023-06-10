//
//  ContentView.swift
//  ShoppingApp
//
//  Created by Kaplan2 on 10/06/23.
//

import SwiftUI

struct ContentView: View {
    @State var searchText: String = ""
    var body: some View {
        
//        ScrollView {
            VStack(spacing:20) {
                HStack {
                    Image(systemName: "line.3.horizontal")
                    Spacer()
                    Image(systemName: "cart.badge.plus")
                }
                VStack(alignment: .leading,spacing: 10) {
                    Text("Hey,").font(.title).fontWeight(.semibold)
                    Text("Find fresh fruits that you want")
                    HStack {
                        Image(systemName: "magnifyingglass").padding(.leading)
                        TextField("Search for your fruit", text: $searchText)
                    }.frame(height: 50)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(10)
                }
                VStack(alignment: .leading) {
                    Text("TopSelling").font(.largeTitle).fontWeight(.semibold)
                    HomeScreenView()
                    Text("Near To You").font(.largeTitle).fontWeight(.semibold)
                    NearToYouView()
                }
            }.padding(.horizontal)
//        }
        .navigationBarBackButtonHidden()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
