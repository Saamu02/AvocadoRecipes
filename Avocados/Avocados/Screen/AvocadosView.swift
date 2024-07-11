//
//  AvocadosView.swift
//  Avocados
//
//  Created by Ussama Irfan on 10/07/2024.
//

import SwiftUI

struct AvocadosView: View {
    
    @State private var isAnimating = false
    
    var body: some View {
        
        VStack {
            Spacer()
            Image("avocado")
                .resizable()
                .scaledToFit()
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: .colorBlackTransparentDark, radius: 12, x: 0, y: 8)
                .scaleEffect(isAnimating ? 1 : 0.9)
                .opacity(isAnimating ? 1 : 0.9)
                .animation(.easeOut(duration: 1).repeatForever(autoreverses: true), value: isAnimating)
            
            VStack {
                
                Text("Avacados".uppercased())
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundStyle(.white)
                    .padding()
                .shadow(color: .colorBlackTransparentDark, radius: 4, x: 0, y: 4)
                
                Text("Creamy, green, and full of nutrients!\nAvocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!")
                    .lineLimit(nil)
                    .font(.system(.headline, design: .serif))
                    .foregroundStyle(.colorGreenLight)
                    .multilineTextAlignment(.center)
                    .lineSpacing(2)
                    .frame(maxWidth: 640, minHeight: 120)
            }
            .padding()

            Spacer()
        }
        .background(
            Image("background")
                .resizable()
                .scaledToFill()
        )
        .ignoresSafeArea()
        .onAppear {
            isAnimating = true
        }
    }
}

#Preview {
    AvocadosView()
        .environment(\.colorScheme, .dark)
}
