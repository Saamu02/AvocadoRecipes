//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Ussama Irfan on 11/07/2024.
//

import SwiftUI

struct RecipeCardView: View {
    
    var recipe: Recipe
    @State private var showDetails: Bool = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0 ) {
            
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    Image(systemName: "bookmark")
                        .font(.title.weight(.light))
                        .foregroundStyle(.white)
                        .shadow(color: .colorBlackTransparentLight, radius: 2)
                        .padding(.trailing, 20)
                        .padding(.top, 20)
                    , alignment: .topTrailing) //: Overlay
            
            VStack(alignment: .leading, spacing: 12) {
                Text(recipe.title)
                  .font(.system(.title, design: .serif))
                  .fontWeight(.bold)
                  .foregroundStyle(Color("ColorGreenMedium"))
                  .lineLimit(1)
                
                Text(recipe.headline)
                  .font(.system(.body, design: .serif))
                  .foregroundStyle (Color.gray)
                  .italic()
                
                RecipeRatingView(recipe: recipe)
                
                RecipeCookingView(recipe: recipe)
                
            }//: VStack
            .padding()
            .padding(.bottom, 12 )
        }//: VStack
        .background(.white)
        .clipShape(
            RoundedRectangle(cornerRadius: 12)
        )
        .shadow(color: .colorBlackTransparentLight, radius: 8)
        .onTapGesture {
            showDetails.toggle()
        }
        .sheet(isPresented: $showDetails, content: {
            RecipeDetailView(recipe: recipe)
        })
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    RecipeCardView(recipe: recipesData[0])
        .padding()
}
