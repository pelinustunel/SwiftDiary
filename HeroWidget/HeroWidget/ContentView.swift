//
//  ContentView.swift
//  HeroWidget
//
//  Created by Pelin Üstünel on 9.09.2023.
//

import SwiftUI
import WidgetKit

let superheroArray = [superman,ironman,wonderwoman,spiderman,deadpool,batman]

struct ContentView: View {
    
    @AppStorage("hero", store: UserDefaults(suiteName: "group.com.pelin.HeroWidget"))
    var heroData : Data = Data()
    
    var body: some View {
        VStack {
            ForEach(superheroArray){ hero in
                HeroView(hero: hero).onTapGesture {
                    saveToDefaults(hero: hero)
                }
            }
        }
    }
    func saveToDefaults(hero: Superhero){
       // print(hero.name)
        
        if let heroData = try? JSONEncoder().encode(hero) {
            self.heroData = heroData
            print(hero.name)
            WidgetCenter.shared.reloadTimelines(ofKind: "WidgetHero")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
