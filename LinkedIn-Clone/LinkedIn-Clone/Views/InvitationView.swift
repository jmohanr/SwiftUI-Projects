//
//  InvitationView.swift
//  LinkedIn-Clone
//
//  Created by Kaplan2 on 11/06/23.
//

import SwiftUI

struct InvitationView: View {
    
    let sampleData:NetworkModel
  
    var body: some View {
        HStack {
            Image(sampleData.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 60,height: 60,alignment: .leading)
            VStack(alignment:.leading,spacing: 2) {
                Text(sampleData.name).foregroundColor(.black)
                    .font(.title2)
                Text(sampleData.position)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text("⚭ \(sampleData.mutual) mutual connections")
                    .font(.caption)
                    .foregroundColor(.gray)
            }.frame(width: 150, height: 20, alignment: .leading)
                
            actionView
            
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
    }
}

extension InvitationView {
    var actionView: some View {
        HStack(spacing:15) {
            Button {
                print(sampleData.id)
            } label: {
                Image(systemName: "multiply.circle").resizable()
                    .frame(width: 30,height: 30)
            }
            Button {
                print(sampleData.name)
            } label: {
                Image(systemName: "checkmark.circle").resizable()
                    .frame(width: 30,height: 30).foregroundColor(.gray)
            }
        }.padding(.horizontal)
    }
}

struct InvitationView_Previews: PreviewProvider {
    static var previews: some View {
        InvitationView(sampleData: NetworkModel(id: 1, name: "Rahul Singh", position: "SDE at Amazon", mutual: 12, image: "01"))
    }
}


