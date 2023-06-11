//
//  HomescreenView.swift
//  LinkedIn-Clone
//
//  Created by Kaplan2 on 11/06/23.
//

import SwiftUI

struct HomescreenView: View {
    var body: some View {
        VStack {
           StartPostView()
            Rectangle().frame(height: 5)
                .foregroundColor(.gray.opacity(0.3))
            PostScreenView()
        }
    }
}

struct HomescreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomescreenView()
    }
}
