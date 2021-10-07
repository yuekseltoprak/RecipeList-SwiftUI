//
//  DataService.swift
//  Recipe List App
//
//  Created by Yüksel Toprak on 01.10.21.
//

import Foundation


class DataService {
    
    
    static func getLocalData() -> [Recipe] {
        
        //Parse local json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        //check if pathString is not nil, otherwise...
        guard pathString != nil else {
            return [Recipe]()
        }
            
        
        //Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        
        do {
            
            //Create a data object
            let data = try Data(contentsOf: url)
            //Decode the data with a json decoder
            let decoder = JSONDecoder()
            
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                // add the unique ids
                for r in recipeData {
                    r.id = UUID()
                }
                
                //Return the recipes
                return recipeData
            }catch {
                print(error)
            }
        } catch {
            //Error with getting Data
            print(error)
        }
        
        return [Recipe]()
    }
    
}
