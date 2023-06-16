//
//  ServicesView.swift
//  CustomTabBar
//
//  Created by Kaplan2 on 16/06/23.
//

import SwiftUI

struct Services {
    var icon: String
    var color: String
    var iconColor: String
    
   static func data() -> [Services] {
        return [Services(icon: "brain.head.profile", color: "3", iconColor: "11"),
                Services(icon: "pills", color: "5", iconColor: "22"),
                Services(icon: "list.bullet.clipboard.fill", color: "4", iconColor: "33"),
                Services(icon: "allergens.fill", color: "1", iconColor: "44")]
    }
}
struct ServicesView: View {
    var services: [Services] = Services.data()
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            VStack(alignment:.leading) {
                Text("Services").font(.headline)
                HStack (spacing: 15){
                    ForEach(services, id: \.icon) { item in
                        HStack {
                            NavigationLink {} label: {
                                Image(systemName: item.icon)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 50,height: 50)
                                    .foregroundColor(Color(item.iconColor))
                            }
                        }.padding()
                            .background(Color(item.color))
                            .cornerRadius(10)
                    }
                }
            }
          
        }
       
    }
}

struct ServicesView_Previews: PreviewProvider {
    static var previews: some View {
        ServicesView()
    }
}
