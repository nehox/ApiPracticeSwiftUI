//
//  RandomBeerView.swift
//  ApiPracticeswiftUI
//
//  Created by Julien Ficerai on 17/03/2022.
//

import SwiftUI

struct RandomBeerView: View {

    @ObservedObject private var beersViewModel = BeerViewModel()
    
    @State var currentBeer: Beer? = nil
    @State var secondsRemaining = 2.0
    
    var body: some View {
        ZStack {
            Color(hex: 0xE7E7E7).ignoresSafeArea(.all)
            
            VStack{
                
                Text(currentBeer?.name ?? "")
                    .font(.title)
                    .foregroundColor(Color(hex: 0x6A7A8E))
                    .padding()
                
                if let urlStr = currentBeer?.image_url,
                let url = URL(string: urlStr),
                let data = try? Data(contentsOf: url),
                let uiimage = UIImage(data: data){
                    Image(uiImage: uiimage).resizable().frame(width: 75, height: 225).padding()
                }
                
                Button("Drink !") {
                    randomizer()
                }
                .padding()
                .background(Color(hex: 0x46A2B7))
                .cornerRadius(5)
                .foregroundColor(Color.black)

            }.onAppear {
                currentBeer = getRandomBeer()
                randomizer()
            }
        }
    }
    

    func randomizer() {
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (Timer) in
            if self.secondsRemaining > 0 {
                currentBeer = self.getRandomBeer()
                self.secondsRemaining -= 0.1
            } else {
                Timer.invalidate()
            }
        }
    }
    
    /// Get one random beer
    /// - Returns: random beer
    private func getRandomBeer() -> Beer? {
        
        if beersViewModel.beers.isEmpty {
            return nil
        } else {
            let randomIndex = Int.random(in: 0...(beersViewModel.beers.count - 1))
            return beersViewModel.beers[randomIndex]
        }
    }
}

struct RandomBeerView_Previews: PreviewProvider {
    static var previews: some View {
        RandomBeerView(currentBeer: Beer(id: 1, name: "Buzz", tagline: "A Real Bitter Experience.", first_brewed: "09/2007", image_url: "https://images.punkapi.com/v2/keg.png", description: "A light, crisp and bitter IPA brewed with English and American hops. A small batch brewed only once.", abv: 4.5, ibu: 60, ebc: 20, srm: 10, ph: 4.4, attenuation_level: 75, food_pairing: ["Spicy chicken tikka masala","Grilled chicken quesadilla","Caramel toffee cake"]))
    }
}

