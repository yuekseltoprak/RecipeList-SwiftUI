//
//  Recipe.swift
//  Recipe List App
//
//  Created by Yüksel Toprak on 01.10.21.
//

import Foundation


class Recipe:Identifiable, Decodable {
    
    var id:UUID?
    var name: String = ""
    var featured: Bool = false
    var image: String = ""
    var description: String = ""
    var prepTime: String = ""
    var cookTime: String = ""
    var totalTime = ""
    var servings: Int
    var ingredients: [String]
    var directions: [String]
}
