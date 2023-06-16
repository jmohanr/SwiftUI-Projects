//
//  UpComingAppointments.swift
//  CustomTabBar
//
//  Created by Kaplan2 on 16/06/23.
//

import SwiftUI
import UIKit
struct ComingAppointments {
    var date: String
    var time: String
    var doctorsName: String
    var specialization: String
    var bgColor: String
}

struct UpComingAppointments: View {
    let appoinments: [ComingAppointments] = [
        ComingAppointments(date: "12 Tue", time: "11:00 am", doctorsName: "Dr. Nim Aster", specialization: "Consultant", bgColor: "44"),
        ComingAppointments(date: "13 Wed", time: "12:30 Pm", doctorsName: "Dr. Zim Akther", specialization: "Consultant", bgColor: "11"),
        ComingAppointments(date: "14 Mon", time: "03:00 Pm", doctorsName: "Dr. Kim Zhom", specialization: "Consultant", bgColor: "22"),
        ComingAppointments(date: "10 Sun", time: "12:30 Pm", doctorsName: "Dr. Ching Chang", specialization: "Consultant", bgColor: "33")
    ]
    @State var contentSize: CGSize = .zero
    var body: some View {
        ScrollView(.horizontal,showsIndicators: true) {
            HStack{
                ForEach(appoinments, id: \.bgColor) { item in
                    AppointMentsCard(appointMent: item)
                }
            }
        }.background(Color.red)
       
    }
}

struct UpComingAppointments_Previews: PreviewProvider {
    static var previews: some View {
        UpComingAppointments()
    }
}

struct AppointMentsCard: View {
    let appointMent: ComingAppointments
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .frame(maxWidth: 80,maxHeight: 100)
                        .foregroundColor(.white.opacity(0.1))
                        .border(.white.opacity(0.1),width: 5)
                        .cornerRadius(8)
                    .overlay {
                        Text(appointMent.date)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                VStack (alignment: .leading,spacing: 10){
                    Text(appointMent.time).opacity(0.4)
                    Text(appointMent.doctorsName).font(.system(size: 30.0))
                        .fontWeight(.semibold)
                    Text(appointMent.specialization).opacity(0.4)
                }.padding(.horizontal)
                    .foregroundColor(.white)
               Spacer()
            } .padding()
               
        }
        .background(Color(appointMent.bgColor))
        .cornerRadius(15)
        .padding(.horizontal,5)
        .frame(maxHeight: 200)
    }
    
}


