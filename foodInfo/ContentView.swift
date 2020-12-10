//
//  ContentView.swift
//  foodInfo
//
//  Created by Natalia Moreno on 2020-12-03.
//

import SwiftUI

struct ContentView: View {
    
    @State private var meals = definedMeals
    
    //The body property at the top level, must contain ONE and only ONE view.
    var body: some View {
        NavigationView {
            
            List(meals) { meal in
                Text(meal.name)
                
            }
            .navigationTitle("foodInfo")
            
        }
        
        
        
        
        
//        NavigationView{
//
//            List{
//                NavigationLink(destination:Water()) {
//                    // Provide the lable for the navigation link
//                    Text("Water")
//                }
//                NavigationLink(destination:Breakfast()) {
//                    // Provide the lable for the navigation link
//                    Text("Breakfast")
//                }
//                NavigationLink(destination:Snacks()) {
//                    // Provide the lable for the navigation link
//                    Text("Snacks")
//                }
//                NavigationLink(destination:Lunch()) {
//                    // Provide the lable for the navigation link
//                    Text("Lunch")
//                }
//                NavigationLink(destination:Dinner()) {
//                    // Provide the lable for the navigation link
//                    Text("Dinner")
//                }
//            }
//            .navigationBarTitle("foodInfo")
//
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}

