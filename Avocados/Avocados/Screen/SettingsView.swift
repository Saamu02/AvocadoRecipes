//
//  SettingsView.swift
//  Avocados
//
//  Created by Ussama Irfan on 10/07/2024.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 0) {
            
            VStack(alignment: .center, spacing: 5) {
                
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: .colorBlackTransparentLight, radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(.colorGreenAdaptive)
            } //: VStack
            .padding()
            
            Form {

                Section(header: Text("General Settings")) {
                    
                    Toggle(isOn: $enableNotification) {
                        Text("Enable notifiacation")
                    }
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background refresh")
                    }
                } //: Section
                
                 Section(header: Text("Application")) {
                    
                    if enableNotification {
                        
                        HStack {
                            
                            Text("Product")
                                .foregroundStyle(.gray)
                            
                            Spacer()
                            
                            Text("Avocado Recipes")
                        }
                        
                        HStack {
                            
                            Text("Compatibility")
                                .foregroundStyle(.gray)
                            
                            Spacer()
                            
                            Text("iPhone & iPad")
                        }
                        
                        HStack {
                            
                            Text("Developer")
                                .foregroundStyle(.gray)
                            
                            Spacer()
                            
                            Text("Ussama")
                        }
                        
                        HStack {
                            
                            Text("Designer")
                                .foregroundStyle(.gray)
                            
                            Spacer()
                            
                            Text("Robert Petras")
                        }
                        
                        HStack {
                            
                            Text("Website")
                                .foregroundStyle(.gray)
                            
                            Spacer()
                            
                            Text("https://github.com/Saamu02")
                        }
                        
                        HStack {
                            
                            Text("Version")
                                .foregroundStyle(Color.gray)
                            
                            Spacer()
                            
                            Text("1.5.0")
                        }
                        
                    } else {
                        
                        HStack {
                            
                            Text("Personal message")
                                .foregroundStyle(Color.gray)
                            
                            Spacer()
                            
                            Text("👍 Happy Coding!")
                        }
                    }
                } //: Section
            } //: Form
        } //: VStack
        .frame(maxWidth: 640)
    }
}

#Preview {
    SettingsView()
}
