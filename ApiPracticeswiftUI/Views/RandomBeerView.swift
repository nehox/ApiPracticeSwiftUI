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
            }.position(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height/3)
        }
    }
    

    
    /// loop with duration
    func randomizer() {
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (Timer) in
            if self.secondsRemaining > 0 {
                currentBeer = self.getRandomBeer()
                self.secondsRemaining -= 0.1
            } else {
                Timer.invalidate()
                self.secondsRemaining = 2
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
        RandomBeerView()
    }
}

