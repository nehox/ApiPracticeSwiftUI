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
        NavigationView {
            VStack {
                NavigationLink(destination: ListOfBeersView(), label: {
                    Text("List de bières")
                })
                .padding()
                .background(.gray)
                .foregroundColor(.white)
                .cornerRadius(8)
                NavigationLink(destination: RandomBeerView(), label: {
                    Text("random beer")
                })
                .padding()
                    .background(.gray)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
