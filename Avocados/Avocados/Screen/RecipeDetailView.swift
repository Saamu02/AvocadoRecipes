//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by Ussama Irfan on 11/07/2024.
//

import SwiftUI

struct RecipeDetailView: View {
    
    @State private var isAnimating = false
    @Environment(\.dismiss) private var dismiss
    
    var recipe: Recipe
    
    var body: some View {
        
        ScrollView(.vertical) {
            
            VStack(alignment: .center, spacing: 0) {

                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Group {

                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.colorGreenAdaptive)
                        .padding(.top, 10)
                    

                    RecipeRatingView(recipe: recipe)
                    
                    RecipeCookingView(recipe: recipe)
                    
                    Text("Ingredients")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    VStack(alignment: .leading, spacing: 5) {
                        
                        ForEach(recipe.ingredients, id: \.self) { ingredient in
                            
                            VStack(alignment: .leading, spacing: 5) {
                                Text(ingredient)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            }
                        }
                    }
                                        
                    Text("Instructions")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    ForEach(recipe.instructions, id: \.self) { instruction in
                        
                        VStack(alignment: .center, spacing: 5) {
                            
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundStyle(.colorGreenAdaptive)
                            
                            Text(instruction)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight: 100)
                        } //: VStack
                    } //: Loop
                } //: Group
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            } //: VStack
        } //: Scroll View
        .ignoresSafeArea()
        .scrollIndicators(.hidden)
        .overlay(
            
            HStack {
                Spacer()
                
                VStack {
                    
                    Button(action: {
                        dismiss()
                        
                    }, label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundStyle(Color.white)
                            .shadow(radius: 4)
                            .opacity(self.isAnimating ? 1 : 0.6)
                            .scaleEffect(self.isAnimating ? 1.2 : 0.8, anchor: .center)
                            .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: isAnimating)
                    })
                    .padding(.trailing, 20)
                    .padding(.top, 24)
                    Spacer()
                } //: VStack
            } //: HStack
        ) //: Overlay
        .onAppear() {
            self.isAnimating.toggle()
        }
    }
}

#Preview {
    RecipeDetailView(recipe: recipesData[0])
}
