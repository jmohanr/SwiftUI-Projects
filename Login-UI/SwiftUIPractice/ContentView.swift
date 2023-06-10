//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by Kaplan2 on 08/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("bg").resizable()
            Color("bgColor").opacity(0.9)
            VStack (spacing:20){
                Spacer()
                topView
                Spacer()
                centerView
                Spacer()
                Text("Sweaa Apps v1.0")
                    .foregroundColor(Color.white.opacity(0.6))
                    .fontDesign(.monospaced)
                    .padding(.bottom,50)
                
            }
        }.ignoresSafeArea()
    }
    
    func width() -> CGFloat {
        return UIScreen.main.bounds.width*0.9
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ContentView()
        }
    }
}

extension ContentView {
    var centerView: some View {
        VStack(spacing: 20) {
            NavigationLink {
                RegisterView()
            } label: {
                Text("Register").frame(maxWidth: self.width(),maxHeight: 60)
                    .background(Color.white)
                    .cornerRadius(30)
            }

            NavigationLink {
                LoginView()
            } label: {
                Text("Login").frame(maxWidth: self.width(),maxHeight: 60)
                    .background(Color.white)
                    .cornerRadius(30)
            }
        }.foregroundColor(Color("bgColor"))
            .fontWeight(.bold)
            .padding()
    }
    
    var topView: some View {
        HStack {
            Image("logo-login").resizable()
                .frame(width: 100,height: 100)
            VStack {
                Text("SEWAA").font(.system(size: 60))
                Text("Rental Made Easy")
                    .font(.system(size: 18))
                    .fontDesign(.monospaced)
                    .fontWeight(.light)
            }.foregroundColor(.white)
        }
    }
}
