//
//  Superhero.swift
//  HeroWidget
//
//  Created by Pelin Üstünel on 9.09.2023.
//

import Foundation

struct Superhero : Identifiable, Codable{
    
    let image : String
    let name : String
    let realName : String
    var id : String {image}
    
}

let superman = Superhero(image: "superman", name: "Superman", realName: "Clark Kent")
let batman = Superhero(image: "batman", name: "Batman", realName: "Bruce Wayne")
let ironman = Superhero(image: "ironman", name: "İronman", realName: "Tony Stark")
let deadpool = Superhero(image: "deadpool", name: "Deadpool", realName: "Wade Wilson")
let wonderwoman = Superhero(image: "wonderwoman", name: "Wonderwoman", realName: "Diana Prince")
let spiderman = Superhero(image: "spiderman", name: "Spiderman", realName: "Peter Parker")

