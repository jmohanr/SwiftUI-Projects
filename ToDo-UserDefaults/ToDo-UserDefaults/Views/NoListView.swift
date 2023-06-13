//
//  NoListView.swift
//  ToDo-UserDefaults
//
//  Created by Kaplan2 on 13/06/23.
//

import SwiftUI

struct NoListView: View {
    @State var animate: Bool = false
    var body: some View {
 
            ScrollView {
                VStack(alignment: .center,spacing: 20) {
                    Text("There are no Items!!")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                    
                    Text("Be more productive and add some todo's to complete on time !!")
                        .padding(.bottom,20)
                    
                    NavigationLink {
                        AddView()
                    } label: {
                        Text("Add Something 😀").padding()
                            .frame(maxWidth: .infinity)
                            .font(.title2)
                            .foregroundColor(.white)
                            .background(animate ? Color.accentColor : Color("NewColor"))
                            .cornerRadius(20)
                            
                    }.padding(.horizontal,animate ? 20:30)
                        .shadow(color: animate ? Color("NewColor").opacity(0.5) : .black.opacity(0.5), radius: animate ? 30:50,x:0,y: animate ? 30 : 50)
                        .offset(y: animate ? -7:0)
                    
                }.multilineTextAlignment(.center)
                    .padding(40)
                    .onAppear(perform: addAnimation)
                    
            }.frame(maxWidth: .infinity,maxHeight: .infinity)


                
    }
    
    func addAnimation() {
        guard !animate else {return}
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            withAnimation(Animation.easeIn(duration: 2.0).repeatForever()) {
                animate.toggle()
            }
        }
    }
}

struct NoListView_Previews: PreviewProvider {
    static var previews: some View {
        NoListView()
    }
}
