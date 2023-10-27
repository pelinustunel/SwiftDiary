//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Pelin Üstünel on 26.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            
            List{
                
                ForEach(myfavorites){ favorite in
                    Section(header: Text(favorite.title)) {
                        ForEach(favorite.elements){ element in
                            NavigationLink(destination: DetailsView(choosenFavoriteElement: element)) {
                                
                                Text(element.name)
                            }
                            
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Favorite Book"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
