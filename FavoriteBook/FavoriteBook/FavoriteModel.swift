//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by Pelin Üstünel on 26.08.2023.
//

import Foundation

struct FavoriteModel : Identifiable {
    
    var id = UUID()
    var title : String
    var elements : [FavoriteElements]
}

struct FavoriteElements : Identifiable {
   
    var id = UUID()
    var name : String
    var imagename : String
    var description : String
    
}

//Movies
let simpsons = FavoriteElements(name: "Simpsons", imagename: "simpsons", description: "Simpsons")
let disney = FavoriteElements(name: "Disney", imagename: "disney", description: "Disney")
let thesummer = FavoriteElements(name: "The Summer I Turned Pretty", imagename: "thesummer", description: "The Summer")

let favoriteTV = FavoriteModel(title: "Favorita TV Shows", elements: [simpsons,disney,thesummer])

//Musics
let taylor = FavoriteElements(name: "Taylor Swift", imagename: "taylor", description: "Taylor")
let dualipa = FavoriteElements(name: "Dua Lipa", imagename: "dualipa", description: "Dualipa")
let tom = FavoriteElements(name: "Tom Odell", imagename: "tom", description: "Tom")

let favoriteMusics = FavoriteModel(title: "Favorita Musics", elements: [taylor,dualipa,tom])

let myfavorites = [favoriteTV,favoriteMusics]

