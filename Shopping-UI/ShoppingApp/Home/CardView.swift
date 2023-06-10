//
//  CardView.swift
//  ShoppingApp
//
//  Created by Kaplan2 on 10/06/23.
//

import SwiftUI

struct CardView: View {
    var data: FruitModel = FruitModel(id: 1, title: .watermelon , image: FruitTitle.watermelon.rawValue, price: 200, color: "1")
    
    var body: some View {
        ZStack {
            card
            image
        }.frame(maxHeight: 350)
      
    }
}
extension CardView {
    
    
    var card: some View {
        VStack(alignment: .leading,spacing: 5) {
            Text(data.title.rawValue)
                .font(.system(size: 30))
                .fontWeight(.bold)
                .fontDesign(.monospaced)
            Text("$ \(data.price.formatValue())")
                .fontDesign(.serif)
            Spacer()
        }.padding()
            .frame(maxWidth: 250,maxHeight: 150)
            .foregroundColor(.black)
            .background(Color(data.color))
            .cornerRadius(20)
            .shadow(color: .black.opacity(0.3), radius: 5,x: 5,y: 5)
           
        
    }
    
    var image : some View {
           Image(data.image).resizable()
               .aspectRatio(contentMode: .fit)
               .frame(width: 150,height: 110)
               .offset(y:60)
               .shadow(color: .black.opacity(0.3), radius: 5,x: 5,y: 5)
               .padding()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}

extension Double {
    func formatValue() -> String {
        let formatter = NumberFormatter()
           formatter.minimumFractionDigits = 0
           formatter.maximumFractionDigits = 2
        if let price = formatter.string(from: self as NSNumber) {
            return price
        }
          return ""
    }
}
