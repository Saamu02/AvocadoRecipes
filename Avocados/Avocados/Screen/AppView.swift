//
//  AppView.swift
//  Avocados
//
//  Created by Ussama Irfan on 10/07/2024.
//

import SwiftUI

struct AppView: View {
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
