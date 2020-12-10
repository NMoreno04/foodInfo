//
//  MealDetail.swift
//  foodInfo
//
//  Created by Natalia Moreno on 2020-12-10.
//

import SwiftUI

struct MealDetail: View {
    
    var meal: MealType
    
    
    var body: some View {
        
        VStack {
            Text("What did you have for \(meal.name.lowercased())?")
            
            
            Spacer()
        }
        .navigationTitle(meal.name)
    }
    
    
    
}

struct MealDetail_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            
            MealDetail(meal: definedMeals[1])
        }
    }
}
