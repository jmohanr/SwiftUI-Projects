//
//  HomescreenView.swift
//  LinkedIn-Clone
//
//  Created by Kaplan2 on 11/06/23.
//

import SwiftUI

struct HomescreenView: View {
    @State var searchText: String = ""
    var body: some View {
        VStack {
            StartPostView(searchText: $searchText)
            Rectangle().frame(height: 5)
                .foregroundColor(.gray.opacity(0.3))
            PostScreenView(searchText: $searchText)
        }
    }
}

struct HomescreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomescreenView()
    }
}
