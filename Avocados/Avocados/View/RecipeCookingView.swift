//
//  RecipeCookingView.swift
//  Avocados
//
//  Created by Ussama Irfan on 11/07/2024.
//

import SwiftUI

struct RecipeCookingView: View {
    var recipe: Recipe
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 12) {
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            }
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            }
        }
        .font(.footnote)
        .foregroundColor(Color.gray)
    }
}

#Preview(traits: .fixedLayout(width: 320, height: 60)) {
    RecipeCookingView(recipe: recipesData[0])
}
