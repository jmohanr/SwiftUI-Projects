//
//  Search BarView.swift
//  LinkedIn-Clone
//
//  Created by Kaplan2 on 11/06/23.
//

import SwiftUI

struct Search_BarView: View {
    @Binding var searchText: String
    var body: some View {
        VStack {
            searchView
        }        
    }
}

extension Search_BarView {
    var searchView: some View {
        HStack(spacing:15) {
            Image("demo").resizable()
                .clipShape(Circle())
                .frame(width: 40,height: 40)
            RoundedRectangle(cornerRadius: 10)
                .fill(Color("bg"))
                .frame(height: 40)
                .overlay {
                    HStack(spacing:10) {
                        Image(systemName: "magnifyingglass")
                        TextField("Search", text: $searchText)
                    }.padding(.horizontal)
                }
                Image(systemName: "ellipsis.bubble.fill")
                .resizable()
                .frame(width: 30,height: 30)
                .foregroundColor(.gray.opacity(0.6))
            
        }.padding(.horizontal)
    }
}
struct Search_BarView_Previews: PreviewProvider {
    static var previews: some View {
        Search_BarView(searchText: .constant(""))
    }
}
