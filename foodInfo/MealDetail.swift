//
//  MealDetail.swift
//  foodInfo
//
//  Created by Natalia Moreno on 2020-12-10.
//

import SwiftUI

struct MealDetail: View {
    
    var meal: MealType
    
    @State var selectedItem = 0
    
    var body: some View {
        
        VStack {
            Text("What did you have for \(meal.name.lowercased())?")
            
            Form {
                Picker(selection: $selectedItem,
                       label: Text("I ate..."),
                       content: {
                        ForEach(0 ..< meal.items.count) { index in
                            Text(meal.items[index].name)
                        }
                })
            }
            
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
