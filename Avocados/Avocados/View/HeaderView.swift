//
//  HeaderView.swift
//  Avocados
//
//  Created by Ussama Irfan on 11/07/2024.
//

import SwiftUI

struct HeaderView: View {
    
    @State private var isAnimating = false
        
    var header: Header
    
    var body: some View {
        
        ZStack {
            Image(header.image)
                .resizable()
                .scaledToFill()
            
            HStack(alignment: .top, spacing: 0) {
                Rectangle()
                    .fill(.colorGreenLight)
                    .frame(width: 4)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(header.headline)
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .shadow(radius: 3)
                    
                    Text(header.subheadline)
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(.white)
                        .shadow(radius: 3)
                }//: VStack
                .padding(.horizontal, 20)
                .frame(width: 280, height: 105)
                .background(.colorBlackTransparentLight)
                
            }//: HStack
            .frame(width: 285, height: 105)
            .offset(x: -66, y: isAnimating ? 75 : 220)
            .onAppear {
                
                withAnimation(.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5).speed(1.0).delay(0.25)) {
                    isAnimating = true
                }
            }

        }//: ZStack
        .frame(width: 480, height: 320, alignment: .center)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    HeaderView(header: headersData[1])
        .padding()
}
