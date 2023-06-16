//
//  StartPostView.swift
//  LinkedIn-Clone
//
//  Created by Kaplan2 on 11/06/23.
//

import SwiftUI

struct StartPostView: View {
    let social = [SocialMedia(id: 1, name: "Photo", image: "photo.artframe",color: .blue)
                  ,SocialMedia(id: 2, name: "Video", image: "video.fill",color: .green),
                  SocialMedia(id: 3, name: "Event", image: "calendar",color: .yellow)
               ]
    @Binding var searchText: String

    var body: some View {
        VStack {
            Search_BarView(searchText: $searchText)
            Divider()
            Button { } label: {
                HStack {
                    Image(systemName: "square.and.pencil")
                    Text("Start a post")
                    Spacer()
                }.padding(.horizontal)
            }.foregroundColor(.black)
          Divider()
            HStack {
                ForEach(social, id: \.id) { item in
                    Button { } label: {
                        HStack {
                            Image(systemName: item.image).foregroundColor(item.color)
                            Text(item.name).foregroundColor(.black)
                        }
                        Spacer()
                    }
                }
            }.padding(.horizontal)
        }
    }
}

struct StartPostView_Previews: PreviewProvider {
    static var previews: some View {
        StartPostView(searchText:.constant(""))
    }
}
