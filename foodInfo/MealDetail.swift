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
                    //  List only consumed items that were consumed at this meal type 
                    List(consumedItems.filter({ (value: Consumed) -> Bool in
                                            return value.mealType == meal.name
                                        }))
                    { consumed in
                        VStack {
                            HStack {
                                Text(consumed.item.name)
                                    .fontWeight(.semibold)
                                Spacer()
                            }
                            
                            
                            HStack {
                                Text("C: \(consumed.item.calories, specifier: "%.1f")")
                                Spacer()

                            }

                        }
                    }
                }
                
                
            }
            
            Spacer()
        }
        .navigationTitle(meal.name)
    }
    
    
    
}

