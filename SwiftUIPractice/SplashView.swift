//
//  SplashView.swift
//  SwiftUIPractice
//
//  Created by Kaplan2 on 09/06/23.
//

import SwiftUI

struct SplashView: View {
    @State var isActive: Bool = false
    @State var opacity = 0.4
    @State var size = 0.4
    
    var body: some View {
        VStack {
            Image("logo-login")
            Text("Sweaa")
                .font(.system(size: 60))
                .foregroundColor(Color("bgColor"))
        }.scaleEffect(size)
            .opacity(opacity)
            .onAppear {
                withAnimation(.linear(duration: 2.0)) {
                    self.size = 1.0
                    self.opacity = 1.0
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                        self.isActive = true
                    }
                }
            }
            .fullScreenCover(isPresented: $isActive) {
                NavigationStack {
                    ContentView()
                }
            }
        
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
        
    }
}
