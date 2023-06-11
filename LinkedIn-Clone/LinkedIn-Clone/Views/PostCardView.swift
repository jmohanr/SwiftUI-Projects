//
//  PostCardView.swift
//  LinkedIn-Clone
//
//  Created by Kaplan2 on 11/06/23.
//

import SwiftUI
struct SocialMedia {
    var id: Int
    var name: String
    var image: String
    var color:Color?
}

struct PostCardView: View {
    let social = [SocialMedia(id: 1, name: "Like", image: "hand.thumbsup")
                  ,SocialMedia(id: 2, name: "Comment", image: "ellipsis.bubble"),
                  SocialMedia(id: 3, name: "Share", image: "arrow.turn.up.right"),
                  SocialMedia(id: 4, name: "Send", image: "location.fill")]
    let card: PostData
    var body: some View {
        VStack {
            headerView
            Text("Looking for iOS-15 online course? Learn Swift UI with iOS-15 now at Udemy").font(.title3)
            Image(card.Image).resizable()
                .aspectRatio(contentMode: .fit)
             Divider()
            socialView
            Rectangle().frame(height: 5)
                .foregroundColor(.gray.opacity(0.3))
        }.frame(maxWidth: .infinity,maxHeight: .infinity)
        
    }
}
extension PostCardView {
    var socialView: some View {
        HStack() {
            ForEach(social, id: \.id) { item in
                Spacer()
                Button {
                    print(item.name)
                } label: {
                    VStack {
                        Image(systemName: item.image)
                        Text(item.name)
                    }
                }
                Spacer()
            }
        }.foregroundColor(.black)
    }
    
    var headerView: some View {
        HStack {
            Image(card.profileImage)
                .resizable()
                .frame(width: 70,height: 70,alignment: .leading)
                .clipShape(Circle())
            VStack(alignment:.leading) {
                Text(card.title).font(.title)
                Text("\(card.followers) followers").font(.title2)
                    .foregroundColor(.gray.opacity(0.9))
                Text("8m").font(.headline)
                    .foregroundColor(.gray.opacity(0.9))
            }.padding(.horizontal)
            
            Spacer()
            Button { } label: {
                Image(systemName: "ellipsis")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                 
            }
        }.padding(.horizontal)
    }
}
struct PostCardView_Previews: PreviewProvider {
    static var previews: some View {
        PostCardView(card: PostData(id: 1, Image: "02", title: "JungleWorks", followers: 12, profileImage: "demo2", desc: "Looking for iOS-15 online course? Learn Swift UI with iOS-15 now at Udemy"))
    }
}
