//
//  HomeScreen.swift
//  CustomTabBar
//
//  Created by Kaplan2 on 16/06/23.
//

import SwiftUI

struct HomeScreen: View {
    @State var searchText: String = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HomeTopNavView(name: "Jagan Mohan", searchText: $searchText)
            ServicesView()
            SingleCardView()
            Text("Up Coming Assignments").foregroundColor(.black)
                .font(.title3).fontWeight(.semibold)
            UpComingAppointments()
          
        }.padding(.horizontal)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
