//
//  NearToYouView.swift
//  ShoppingApp
//
//  Created by Kaplan2 on 10/06/23.
//

import SwiftUI

struct NearToYouView: View {
    let dataArray: [PlacesModel] = [
        .init(id: 0, name: "Food 365 Valley", time: "9:00 - 10:00", rating: "★ 4.7 |📍 1.5 km", image: "1"),
        .init(id: 1, name: "Super Store", time: "8:00 - 10:00", rating: "★ 4.5 |📍 1.7 km", image: "2"),
        .init(id: 2, name: "Organic Farm", time: "6:00 - 11:00", rating: "★ 4.9 |📍 2.0 km", image: "3"),
        .init(id: 3, name: "Big Basket", time: "9:00 - 10:00", rating: "★ 3.7 |📍 2.2 km", image: "4"),
        .init(id: 4, name: "Easy Mart", time: "8:00 - 12:00", rating: "★ 4.7 |📍 2.7 km", image: "5"),
        .init(id: 5, name: "Let's Shop", time: "7:00 - 11:00", rating: "★ 4.0 |📍 3.0 km", image: "6")
    ]
    var body: some View {
        ScrollView {
            VStack(alignment:.leading) {
                ForEach(dataArray, id: \.id) { place in
                    NavigationLink {
                        DetailPlace()
                    } label: {
                        HStack {
                            Image(place.image)
                                .resizable()
                                .frame(width: 80,height: 80)
                                .padding()
                                .background(Color("5"))
                                .cornerRadius(15)
                            VStack(alignment:.leading) {
                                Text(place.name)
                                Text(place.time)
                                Text(place.rating)
                            }
                            Spacer()
                        }.padding(.leading)
                            .foregroundColor(.black)
                    }
    
                }
            }.padding(.top)
        }
    }
}

struct NearToYouView_Previews: PreviewProvider {
    static var previews: some View {
        NearToYouView()
    }
}
