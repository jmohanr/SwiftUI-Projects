//
//  PostScreenView.swift
//  LinkedIn-Clone
//
//  Created by Kaplan2 on 11/06/23.
//

import SwiftUI

struct PostScreenView: View {
    
    var postData: [PostData] = [
        .init(id: 0, Image: "0", title: "iNeuron", followers: 4066, profileImage: "00"),
        .init(id: 1, Image: "1", title: "Learnyst", followers: 2345, profileImage: "01"),
        .init(id: 2, Image: "2", title: "Synopsys inc", followers: 1235, profileImage: "02"),
        .init(id: 3, Image: "3", title: "Skill-Lync", followers: 908, profileImage: "03"),
        .init(id: 4, Image: "4", title: "Intel", followers: 1234, profileImage: "04"),
        .init(id: 5, Image: "5", title: "HP", followers: 567, profileImage: "05"),
        .init(id: 6, Image: "6", title: "JungleWorks", followers: 346, profileImage: "00")
        
        ]
    
    var body: some View {
        ScrollView {
            ForEach(postData, id: \.id) { post in
                PostCardView(card: post)
            }
        }
    }
}

struct PostScreenView_Previews: PreviewProvider {
    static var previews: some View {
        PostScreenView()
    }
}
