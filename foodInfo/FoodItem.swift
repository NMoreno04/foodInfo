//
//  FoodItem.swift
//  foodInfo
//
//  Created by Natalia Moreno on 2020-12-08.
//

import Foundation

struct FoodItem: Identifiable {
    var id = UUID() // A UUID is a universally unique identifier the system will generate for us
    var name: String
    var calories: Double
    var protein: Double
    var carbohydrates: Double
}

// Define some test data
let testData = [
    FoodItem(name: "Cereal", calories: 30, protein: 50, carbohydrates: 200),
    FoodItem(name: "Milk", calories: 15, protein: 20, carbohydrates: 119),
]
