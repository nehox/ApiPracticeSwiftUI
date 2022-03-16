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
        
        List(beersViewModel.beers) { beer in
            NavigationLink(beer.name ?? "") {
                BeerDetailsView(beer: beer)
            }
        }.onAppear {
            beersViewModel.geetBeers()
        }
    }
}
