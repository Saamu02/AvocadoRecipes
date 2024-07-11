//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Ussama Irfan on 10/07/2024.
//

import SwiftUI

struct RipeningStagesView: View {
    
    var body: some View {
        
        ScrollView(.horizontal) {
            
            VStack {
                Spacer()
                
                HStack(alignment: .center, spacing: 25) {
                    
                    ForEach(ripeningData) { data in
                        RipeningView(ripening: data)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }
        .ignoresSafeArea()
        .scrollIndicators(.hidden)
    }
}

#Preview {
    RipeningStagesView()
}
