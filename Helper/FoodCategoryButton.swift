//
//  FoodCategoryButton.swift
//  FooDApp
//
//  Created by RANA  on 14/6/24.
//

import SwiftUI

struct FoodCategoryButton: View {
    var category : AllFoodsCategory
    var isSelected: Bool
    var body: some View {

            Text(category.rawValue)
                .fontWeight(.semibold)
                .padding(.vertical, 10)
                .padding(.horizontal, 20)
                .background(isSelected ? Color.red : Color.gray.opacity(0.2))
                .foregroundStyle(isSelected ? Color.white : Color.black)
                .clipShape(RoundedRectangle(cornerRadius: 20))
        
    }
}

#Preview {
    FoodCategoryButton(category: .Burger, isSelected: true)
}
