//
//  DetaildView.swift
//  ShoppingApp
//
//  Created by Kaplan2 on 10/06/23.
//

import SwiftUI
struct RoundedRect: Shape {
    var corners: UIRectCorner
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}


struct DetaildView: View {
    @State var fruit: FruitModel
    @State var count = 1
    @State var price:Double = 0.0
    var body: some View {
        VStack {
            topView
            ScrollView(.vertical,showsIndicators: false) {
                detailsView
                timeView
                HStack {
                    Text("$ \(price.formatValue())")
                        .font(.title)
                        .fontWeight(.semibold)
                    Spacer()
                    stepper
                }.padding(.horizontal)
                cartButton
            }
        }
        .onAppear() {
            DispatchQueue.main.asyncAfter(deadline: .now()+0.3){
                price = fruit.price
            }
        }
        
    }
}


extension DetaildView {
    
    var stepper: some View {
        HStack (spacing:20){
            Button {
                count += 1
                price += fruit.price
            } label: {
                Text("+")
                
            }
            Text("\(count)")
            Button {
                if count > 1 {
                    price -= fruit.price
                    count -= 1
                } else {
                    count = 1
                    price = fruit.price
                }
                
            } label: {
                Text("-")
            }
            
        }
        .padding()
        .frame(height: 40)
        .background(Color("2"))
        .foregroundColor(.black)
        .font(.title2)
        .fontWeight(.semibold)
        .cornerRadius(10)
    }
    
    var detailsView: some View {
        VStack(alignment: .leading,spacing: 30) {
            Text(fruit.title.rawValue)
                .foregroundColor(.black)
                .font(.system(size: 50))
                .textCase(.uppercase)
            Text("Each (500g - 700g)")
            Text("Organic agriculture is intended to produce high quality, nutritious food that contributes to preventive health care and well-being. In view of this, it avoids the use of fertilizers, pesticides, animal drugs and food additives")
        }.padding(.horizontal)
        
    }
    
    var topView: some View {
        Image("bg")
            .resizable()
            .edgesIgnoringSafeArea(.top)
            .clipShape(RoundedRect(corners: [.bottomLeft,.bottomRight], radius: 60))
            .edgesIgnoringSafeArea(.top)
            .overlay {
                Image(fruit.image)
                    .resizable()
                    .frame(width: 250,height: 250)
                    .offset(y:70)
            }.padding(.bottom,30)
            .shadow(color: .black.opacity(0.2), radius: 5,x: 5,y: 5)
    }
    var timeView: some View {
        HStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color("2"))
                .frame(width: 80,height: 80)
                .overlay {
                    Image(systemName: "hourglass")
                        .resizable()
                        .frame(width: 40,height: 50)
                }
            VStack(alignment: .leading,spacing: 10) {
                Text("Delivery Time").font(.title2)
                    .fontWeight(.semibold)
                Text("25 - 30 Min")
            }
            Spacer()
        }.padding()
    }
    var cartButton: some View {
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(.clear)
            .frame(height: 60)
            .overlay {
                Button {
                    
                } label: {
                    ZStack {
                        Image("bg")
                            .resizable()
                            .cornerRadius(20)
                        Text("Add to cart")
                            .foregroundColor(.black)
                            .font(.title)
                    }
                }
            }.padding(.horizontal)
    }
}

struct DetaildView_Previews: PreviewProvider {
    static var previews: some View {
        DetaildView(fruit: FruitModel(id: 1, title: .watermelon , image: FruitTitle.watermelon.rawValue, price: 1.99, color: "1"))
    }
}
