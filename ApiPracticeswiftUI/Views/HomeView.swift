//
//  ContentView.swift
//  ApiPracticeswiftUI
//
//  Created by Julien Ficerai on 16/03/2022.
//

import SwiftUI

struct HomeView: View {
    
    var beerViewModel: BeerViewModel = BeerViewModel()
    
    var body: some View {
        ZStack {
            Color(hex: 0xE7E7E7).ignoresSafeArea(.all)
            NavigationView {
                VStack {
                    NavigationLink(destination: ListOfBeersView(), label: {
                        Text("Beer list")
                    })
                    .padding()
                    .background(.gray)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    NavigationLink(destination: RandomBeerView(), label: {
                        Text("Random beer")
                    })
                    .padding()
                        .background(.gray)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
