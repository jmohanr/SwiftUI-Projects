//
//  HomeTopNavView.swift
//  CustomTabBar
//
//  Created by Kaplan2 on 16/06/23.
//

import SwiftUI

struct HomeTopNavView: View {
     var name: String
    @Binding var searchText: String
    var body: some View {
        VStack {
            HStack {
                VStack (alignment: .leading) {
                    Text("👋 Hello")
                    Text(name).font(.system(size: 30))
                }
                Spacer()
                ZStack {
                    Button { } label: {
                        Image("profile")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                    }
                    Circle().frame(maxWidth: 10,maxHeight: 10)
                        .offset(x:10,y: -19)
                        .foregroundColor(.red)
                }.frame(maxWidth: 60,maxHeight: 60)
            }
            VStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("Search Text", text: $searchText)
                    NavigationLink {} label: {
                        Image(systemName: "slider.horizontal.3")
                            .foregroundColor(.black)
                    }
                }.padding()
                .background(Color("Search"))
                .cornerRadius(15)
            }
        }
        
    }
}

struct HomeTopNavView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTopNavView(name: "Jagan Mohan", searchText: .constant(""))
    }
}
