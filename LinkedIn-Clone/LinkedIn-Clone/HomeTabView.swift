//
//  HomeTabView.swift
//  LinkedIn-Clone
//
//  Created by Kaplan2 on 11/06/23.
//

import SwiftUI

struct HomeTabView: View {
    var body: some View {
        TabView {
            HomescreenView().tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            MyNetworkView()
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("My network")
                }
        }
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
