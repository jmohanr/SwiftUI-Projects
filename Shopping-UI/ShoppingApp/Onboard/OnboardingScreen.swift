//
//  OnboardingScreen.swift
//  ShoppingApp
//
//  Created by Kaplan2 on 10/06/23.
//

import SwiftUI

struct OnboardingScreen: View {
    var body: some View {
        NavigationStack {
            VStack {
                topIllustration
                nextButton
            }
        }
        
    }
}

struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
    }
}

extension OnboardingScreen {
    var topIllustration: some View {
        VStack {
            Image("img")
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                VStack (alignment: .leading, spacing:10) {
                    Text("Order your Favorite Fruits")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text("Eat Fruits try to be healthy")
                        .font(.system(size: 22))
                        .foregroundColor(.secondary)
                }.padding()
                Spacer()
            }.padding()
        }
    }
    
    var nextButton: some View {
        
        NavigationLink {
            ContentView()
        } label: {
            Rectangle()
                .fill(Color("bttonBG"))
                .frame(height: 60)
                .overlay {
                    HStack {
                        Text("Next")
                            .font(.system(size: 30))
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                        Image(systemName: "chevron.forward")
                            .font(.system(size: 25))
                            .foregroundColor(.black)
                    }
                }
                .cornerRadius(10)
        }.padding()
    }
}
