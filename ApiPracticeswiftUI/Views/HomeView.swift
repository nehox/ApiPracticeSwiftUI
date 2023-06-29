//
//  ContentView.swift
//  ApiPracticeswiftUI


import SwiftUI
import BeersPackage

struct HomeView: View {
    
    private var beerViewModel: BeerViewModel = BeerViewModel()
     
    var body: some View {
        NavigationView {
            ZStack {
                Color(hex: 0x6AA84F).ignoresSafeArea(.all)
                VStack {
                    NavigationLink(destination: ListOfBeersView(), label: {
                        Text("Beer list")
                    })
                    .padding()
                    .background(Color(hex: 0x4f6aa8))
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    NavigationLink(destination: RandomBeerView(), label: {
                        Text("Random beer")
                    })
                    .padding()
                    .background(Color(hex: 0x4f6aa8))
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
