//
//  ListOfBeerView.swift
//  ApiPracticeswiftUI
//
//  Created by Julien Ficerai on 16/03/2022.
//

import SwiftUI
import BeersPackage

struct ListOfBeersView: View {
    
    @ObservedObject private var beersViewModel = BeerViewModel()
    
    var body: some View {
        ZStack {
            Color(hex: 0x6AA84F).ignoresSafeArea(.all)
            List(beersViewModel.beers) { beer in
                NavigationLink(beer.name ?? "") {
                    withAnimation(.easeInOut(duration: 4)) {
                        BeerDetailsView(beer: beer)
                    }
                    
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
