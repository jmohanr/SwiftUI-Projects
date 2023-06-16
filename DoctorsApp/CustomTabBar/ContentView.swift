//
//  ContentView.swift
//  CustomTabBar
//
//  Created by Kaplan2 on 16/06/23.
//

import SwiftUI

struct ContentView: View {
   

    var body: some View {
        
        TabView {
            HomeScreen().tabItem {
                VStack {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
