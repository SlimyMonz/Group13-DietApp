//
//  SingleRecipeView.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

import SwiftUI

struct SingleRecipeView: View {
    
    let recipe: JSONRecipeResult.Recipe
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        ZStack {
            ScrollView{
                VStack {
                    AsyncImage(url: URL(string: recipe.imageURL),
                               content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: .greatestFiniteMagnitude)
                            .padding(.horizontal)
                    },
                               placeholder: {
                        ProgressView(){
                            Text("Loading Image...")
                        } .progressViewStyle(.circular)
                    }
                    )
                }
                VStack{
                    Text(recipe.description).padding(.horizontal)
                    Spacer()
                    
                    ingredientBox(recipe.ingredients)
                    Text(recipe.instructions)
                }
                .navigationTitle(recipe.title).navigationBarTitleDisplayMode(.inline).padding()
            }
            }
            .background(
                AsyncImage(url: URL(string: recipe.imageURL))
                    .blur(radius: 100)
                    .brightness(colorScheme == .light ? 0.5 : -0.2)

            )
    }
}

struct SingleRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        SingleRecipeView(recipe: JSONRecipeResult.Recipe.exampleRecipes[0])
    }
}


func ingredientBox(_ ingredients: [String]) -> some View {
    return
        VStack {
            Text("Ingredients")
                .font(.title2)
            VStack{
                ForEach(ingredients, id: \.self) { string in
                    Text(string)
                }
            }
            .font(.title2)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(lineWidth: 2)
            )
        }.padding()
}
