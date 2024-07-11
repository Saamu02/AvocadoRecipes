//
//  HeaderModel.swift
//  Avocados
//
//  Created by Ussama Irfan on 11/07/2024.
//

import Foundation

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
