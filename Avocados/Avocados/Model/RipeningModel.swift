//
//  RipeningModel.swift
//  Avocados
//
//  Created by Ussama Irfan on 11/07/2024.
//

import Foundation

struct Ripening: Identifiable {
  var id = UUID()
  var image: String
  var stage: String
  var title: String
  var description: String
  var ripeness: String
  var instruction: String
}
