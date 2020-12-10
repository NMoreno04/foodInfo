//
//  MealType.swift
//  foodInfo
//
//  Created by Natalia Moreno on 2020-12-10.
//

import Foundation

struct MealType: Identifiable {
    
    var id = UUID () // to uniquely identify each instance of this type
    var name: String
    
}
var definedMeals: [MealType] = [
   MealType(name: "Water"),
    MealType(name: "Breakfast"),
    MealType(name: "Lunch"),
    MealType(name: "Dinner"),
    MealType(name: "Snacks"),
]

