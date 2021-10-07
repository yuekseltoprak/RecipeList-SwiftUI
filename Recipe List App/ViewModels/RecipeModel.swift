//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Yüksel Toprak on 01.10.21.
//

import Foundation


class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    
    init() {
        
        //Create an instance of data service and get the Data
        self.recipes = DataService.getLocalData()

        //Set the recipes property
        
        
        
    }
    
}
