//
//  FactModel.swift
//  Avocados
//
//  Created by Ussama Irfan on 11/07/2024.
//

import Foundation

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
