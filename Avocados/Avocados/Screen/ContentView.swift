//
//  ContentView.swift
//  Avocados
//
//  Created by Ussama Irfan on 10/07/2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ScrollView(.vertical) {
            
            VStack(alignment: .center, spacing: 20) {
                
                ScrollView(.horizontal) {
                    
                    HStack(alignment: .top, spacing: 10) {
                        
                        ForEach(headersData) { data in
                            HeaderView(header: data)
                        }
                    }
                }//: ScrollView
                .scrollIndicators(.hidden)
                
                
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())

                DishesView()
                    .frame(maxWidth: 640)
                
                
                Text("Avocado Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                ScrollView(.horizontal) {
                    
                    HStack(alignment: .top, spacing: 60) {
                        
                        ForEach(factsData) { fact in
                            FactsView(fact: fact)
                                .padding()
                        }
                    }
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                }//: ScrollView
                .scrollIndicators(.hidden)
            
                Text("Avocado Recipes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                VStack(alignment: .center, spacing: 20) {
                        
                    ForEach(recipesData) { recipe in
                        RecipeCardView(recipe: recipe)
                    }
                }
                .frame(maxWidth: 640)
                .padding(.horizontal)
                
                VStack(alignment: .center, spacing: 20) {
                    Text("All about Avocados")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.gray)
                        .frame(minHeight: 60)
                }//: VStack
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
                
            }//: VStack
        }//: ScrollView
        .scrollIndicators(.hidden)
        .ignoresSafeArea(.all)
    }
}

struct TitleModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundStyle(.colorGreenAdaptive)
            .padding(8)
    }
}

#Preview {
    ContentView()
}
