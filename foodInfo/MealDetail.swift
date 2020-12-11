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
    
    @Binding var consumedItems: [Consumed]
    
    var body: some View {
        
        VStack {
            Text("What did you have for \(meal.name.lowercased())?")
            
            Form {
                
                Section {
                    
                    Picker(selection: $selectedItem,
                           label: Text("I ate..."),
                           content: {
                            ForEach(0 ..< meal.items.count) { index in
                                Text(meal.items[index].name)
                            }
                    })
                    
                    
                    Button(action: {
                        consumedItems.append(Consumed(item: meal.items[selectedItem],
                                                      mealType: meal.name))
                        print(consumedItems)
                    }, label: {
                        Text("Add item")
                    })

                }
                
                
                Section {
                    List(consumedItems) { consumed in
                        Text(consumed.item.name)
                    }
                }
                
                
            }
            
            Spacer()
        }
        .navigationTitle(meal.name)
    }
    
    
    
}

