//
//  DetailsView.swift
//  FavoriteBook
//
//  Created by Pelin Üstünel on 26.08.2023.
//

import SwiftUI

struct DetailsView: View {
    
    var choosenFavoriteElement : FavoriteElements
    
    var body: some View {
        
        VStack{
            Image(choosenFavoriteElement.imagename)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(choosenFavoriteElement.name)
                .font(.largeTitle)
                .foregroundColor(Color.purple)
                .padding()
            Text(choosenFavoriteElement.description)
        }
        
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(choosenFavoriteElement: thesummer)
    }
}
