//
//  ListOfBeerView.swift
//  ApiPracticeswiftUI
//
//  Created by Julien Ficerai on 16/03/2022.
//

import SwiftUI

struct ListOfBeersView: View {
    
    @ObservedObject private var beersViewModel = BeerViewModel()
    
    var body: some View {
        ZStack {
            Color(hex: 0xE7E7E7).ignoresSafeArea(.all)
            List(beersViewModel.beers) { beer in
                NavigationLink(beer.name ?? "") {
                    BeerDetailsView(beer: beer)
                }
            }.navigationTitle("List of beers")
        }
    }
}

struct ListOfBeersView_Previews: PreviewProvider {
    static var previews: some View {
        ListOfBeersView()
    }
}
