//
//  AllFoodsCategory.swift
//  FooDApp
//
//  Created by RANA  on 14/6/24.
//

import Foundation

enum AllFoodsCategory: String, CaseIterable, Identifiable {
    
    var id: String { self.rawValue }
    
  case All =    "All"
  case Burger = "Burger"
  case Drink =  "Drink"
  case Roll =   "Roll"
}

enum Destination: Hashable {
    case home, profile, message, love, add
}
