//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Ussama Irfan on 11/07/2024.
//

import SwiftUI

struct RecipeRatingView: View {
    
    var recipe: Recipe
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 5) {
            
            ForEach(1...(recipe.rating), id: \.self) { _ in
                
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundStyle(Color.yellow)
            }
        }
    }
}

#Preview(traits: .fixedLayout(width: 320, height: 60)) {
    RecipeRatingView(recipe: recipesData[0])
}
