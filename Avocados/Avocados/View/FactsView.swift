//
//  FactsView.swift
//  Avocados
//
//  Created by Ussama Irfan on 11/07/2024.
//

import SwiftUI

struct FactsView: View {
    
    var fact: Fact
    
    var body: some View {
        
        ZStack {
            
            Text(fact.content)
                .padding(.leading, 55)
                .padding(.trailing, 10)
                .padding(.vertical, 3)
                .frame(width: 300, height: 135)
                .background(
                    LinearGradient(colors: [.colorGreenMedium, .colorGreenLight], startPoint: .leading, endPoint: .trailing)
                )
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .font(.footnote)
                .foregroundStyle(.white)
            
            Image(fact.image)
                .resizable()
                .frame(width: 65, height: 65, alignment: .center)
                .clipShape(
                    Circle()
                )
                .background(
                    Circle()
                        .fill(.white)
                        .frame(width: 73, height: 73, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(
                            LinearGradient(colors: [.colorGreenMedium, .colorGreenLight], startPoint: .leading, endPoint: .trailing)
                        )
                        .frame(width: 80, height: 80, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(.colorAppearanceAdaptive)
                        .frame(width: 90, height: 90, alignment: .center)
                )
                .offset(x: -150)
        }
    }
}

#Preview(traits: .fixedLayout(width: 400, height: 220)) {
    FactsView(fact: factsData[2])
        .padding()
}

