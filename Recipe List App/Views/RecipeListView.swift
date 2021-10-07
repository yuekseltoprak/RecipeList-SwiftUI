//
//  ContentView.swift
//  Recipe List App
//
//  Created by Yüksel Toprak on 01.10.21.
//

import SwiftUI

struct RecipeListView: View {
    
    //Reference the ViewModel
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        NavigationView {
        List(model.recipes) { r in
            NavigationLink(destination: RecipeDetailView(recipe: r),
                           label: {
                HStack(spacing: 20) {
                    Image(r.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50, alignment: .center)
                        .clipped()
                        .cornerRadius(5)
                    Text(r.name)
                }
            })
            
        }
        .navigationBarTitle("All Recipes")
    }
}
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
