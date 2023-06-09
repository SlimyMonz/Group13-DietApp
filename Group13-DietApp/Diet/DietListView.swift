//
//  DietView.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

import SwiftUI

struct DietListView: View {
    
    var singleColumnGrid = [GridItem(.flexible())]
    
    let diets: [DietModel]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid (columns: singleColumnGrid){
                    ForEach(diets, id: \.type) { diet in
                        DietCellModel(model: diet)
                            .padding()
                    }
                }
            }
            .listStyle(.inset)
            .navigationTitle("Diets")
        }
    }
} 

struct DietListView_Previews: PreviewProvider {
    static var previews: some View {
        DietListView(diets: DietModel.array)
    }
}

