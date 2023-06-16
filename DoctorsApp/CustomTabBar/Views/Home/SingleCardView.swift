//
//  SingleCardView.swift
//  CustomTabBar
//
//  Created by Kaplan2 on 16/06/23.
//

import SwiftUI

struct SingleCard {
    var headline: String
    var subHeadLine: String
    var icon: String
}

struct SingleCardView: View {
    let card: SingleCard = SingleCard(headline: "Get the best Medical service", subHeadLine: "Show some love to Antoni Shkraba by giving them a small donation", icon: "Doctor-Female")
    var body: some View {
        NavigationLink { } label: {
            HStack {
                VStack(alignment:.leading,spacing: 15) {
                    Text(card.headline)
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    Text(card.subHeadLine)
                        .font(.subheadline)
                        .foregroundColor(.black.opacity(0.6))
                }.multilineTextAlignment(.leading)
                Image(card.icon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 100)
            }.padding()
                .background(Color("4"))
                .cornerRadius(15)
        }

    }
}

struct SingleCardView_Previews: PreviewProvider {
    static var previews: some View {
        SingleCardView()
    }
}
