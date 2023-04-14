//
//  ContentView.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

import SwiftUI

// urlBase + urlAPI + diet + diet_parameter + resultNumber + integer

let urlBase = "https://api.spoonacular.com/recipes/complexSearch"
let urlAPI = "?apiKey=d0cdfe10172549139f290c322a14702f"
let urlDiet = "&diet=" // ketogenic, etc
let urlResult = "&number=25" // 25 for 25 recipes; set due to API limitation

let urlSingle = "https://api.spoonacular.com/recipes/"
let urlNutritionInfo = "&includeNutrition=false"

struct ContentView: View {
    
    var body: some View {
        VStack {
            DietListView(diets: DietModel.array)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
