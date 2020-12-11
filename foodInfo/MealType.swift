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
    var items: [FoodItem] = []
}

var definedMeals: [MealType] = [
    MealType(name: "Water"),
    MealType(name: "Breakfast", items: [
        FoodItem(name: "Eggs", calories: 155, protein: 13, carbohydrates: 1.1),
        FoodItem(name: "Cereal with milk", calories: 182 , protein: 13.2, carbohydrates: 82.5),
        FoodItem(name: "Yogurt", calories: 59, protein: 10, carbohydrates: 3.6),
        FoodItem(name: "Potatoes", calories: 77, protein: 2, carbohydrates: 17),
        
        
    ]),
    MealType(name: "Lunch", items:[
        FoodItem(name: "Vegtable soup", calories: 82, protein: 3, carbohydrates: 13.52),
        FoodItem(name: "Sandwich", calories: 82, protein: 16 , carbohydrates: 27.2),
        FoodItem(name: "Beef", calories: 250, protein: 26 , carbohydrates: 0),
        FoodItem(name: "Quesadilla", calories: 293, protein: 15 , carbohydrates: 24),
    ]),
    MealType(name: "Dinner", items: [
        FoodItem(name: "Pizza", calories: 266, protein: 11, carbohydrates: 33),
        FoodItem(name: "chicken", calories: 239, protein: 27 , carbohydrates: 0),
        FoodItem(name: "Beef", calories: 250, protein: 26 , carbohydrates: 0),
        FoodItem(name: "Spring Rolls", calories: 154, protein: 16 , carbohydrates: 4.3),
    ]),
    MealType(name: "Snacks", items: [
        FoodItem(name: "Chips", calories: 536, protein: 7, carbohydrates: 53),
        FoodItem(name: "Oranges", calories: 47, protein: 0.9 , carbohydrates: 12),
        FoodItem(name: "Protein bar", calories: 414, protein: 25 , carbohydrates: 51),
        FoodItem(name: "Popcorn", calories: 381.9, protein: 11 , carbohydrates: 74),
    ]),
]

