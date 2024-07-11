//
//  AppView.swift
//  Avocados
//
//  Created by Ussama Irfan on 10/07/2024.
//

import SwiftUI

struct AppView: View {
    
    init() {
        
        if UITraitCollection.current.userInterfaceStyle == .light {
            UITabBar.appearance().unselectedItemTintColor = .black.withAlphaComponent(0.5)
            UITabBar.appearance().backgroundColor = .white.withAlphaComponent(0.1)
            
        } else {
            UITabBar.appearance().backgroundColor = .black.withAlphaComponent(0.1)
        }
    }
    
    var body: some View {
        
        TabView {
            
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avacado")
                }
            
            ContentView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }
            
            RipeningStagesView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Avacado")
                }
            
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
        }
        .tint(.primary)
    }
}

#Preview {
    AppView()
}
