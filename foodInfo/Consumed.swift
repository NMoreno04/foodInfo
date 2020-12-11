//
//  Consumed.swift
//  foodInfo
//
//  Created by Natalia Moreno on 2020-12-11.
//

import Foundation

struct Consumed: Identifiable {
    
    var id = UUID()
    var item: FoodItem
    var mealType: String
    
}
