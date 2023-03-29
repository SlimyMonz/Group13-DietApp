//
//  DietView.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

import SwiftUI

struct DietListView: View {
    let diets: [DietModel.staticDiets]
    var body: some View {
        NavigationView {
            List {
                ForEach(diets, id: \.id) { diet in
                    // DietCell(diet: diet)
                }
            }
            .listStyle(.inset)
            .navigationTitle("Diets")
        }
    }
}

struct DietListView_Previews: PreviewProvider {
    static var previews: some View {
        DietListView(diets: DietModel.staticDiets.array)
    }
}
