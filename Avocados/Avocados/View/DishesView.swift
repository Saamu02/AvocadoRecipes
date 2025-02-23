//
//  DishesView.swift
//  Avocados
//
//  Created by Ussama Irfan on 11/07/2024.
//

import SwiftUI

struct DishesView: View {

    var body: some View {
            
        HStack(alignment: .center, spacing: 4) {
            
            VStack(alignment: .leading, spacing: 4) {
                
                HStack {
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifier())

                    Spacer()
                    
                    Text("Toasts")
                }
                
                Divider()
                
                HStack {
                    Image("icon-tacos")
                        .resizable()
                        .modifier(IconModifier())

                    Spacer()
                    
                    Text("Tacos")
                }
                
                Divider()

                HStack {
                    Image("icon-salads")
                        .resizable()
                        .modifier(IconModifier())

                    Spacer()
                    
                    Text("Salads")
                }
                
                Divider()

                HStack {
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(IconModifier())

                    Spacer()
                    
                    Text("Spreads")
                }
            }//: VStack
            
            VStack(alignment: .center, spacing: 16) {
                
                HStack {
                    Divider()
                }
                
                Image(systemName: "heart.circle")
                    .font(.title)
                    .fontWeight(.ultraLight )
                    .imageScale(.large )
                
                HStack {
                    Divider()
                }
                
            }//: VStack
            
            VStack(alignment: .trailing, spacing: 4) {
                
                HStack {
                    Text("Guacamole")
                    
                    Spacer()
                    
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifier())
                }
                
                Divider()

                HStack {
                    Text("Sandwiches")
                    
                    Spacer()
                    
                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(IconModifier())
                }

                Divider()

                HStack {
                    Text("Soup")
                    
                    Spacer()
                    
                    Image("icon-soup")
                        .resizable()
                        .modifier(IconModifier())
                }

                Divider()

                HStack {
                    Text("Smoothies")
                    
                    Spacer()
                    
                    Image("icon-smoothies")
                        .resizable()
                        .modifier(IconModifier())
                }
            }//: VStack
        }
        .font(.system(.callout, design: .serif))
        .foregroundStyle(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct IconModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}

#Preview(traits: .fixedLayout(width: 414, height: 280)) {
    DishesView()
}
