//
//  ContentView.swift
//  ApiPracticeSwiftUIWatch Watch App
//
//  Created by julien ficerai on 29/06/2023.
//

import SwiftUI
import BeersPackage

struct ContentView: View {
    @ObservedObject private var beersViewModel = BeerViewModel()
    
    @State var currentBeer: Beer? = nil
    @State var secondsRemaining = 2.0
    
    var body: some View {
        
        GeometryReader {
            proxy in
            ZStack {
                //Color(hex: 0xE7E7E7).ignoresSafeArea(.all)
                ScrollView {
                    VStack{
                        Text(currentBeer?.name ?? "")
                            .font(.system(size: proxy.size.height / 10))
                            .padding()
                            .foregroundColor(Color(hex: 0x6A7A8E))
                            .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        
                        if let urlStr = currentBeer?.image_url,
                           let url = URL(string: urlStr),
                           let data = try? Data(contentsOf: url),
                           let uiimage = UIImage(data: data){
                            Image(uiImage: uiimage).resizable().frame(width: proxy.size.width / 8, height: proxy.size.height / 3 ).padding()
                        }
                        
                        Button("Drink !") {
                            randomizer()
                        }
                        .padding()
                        .cornerRadius(5)
                        .foregroundColor(Color.black)
                        
                    }.onAppear {
                        currentBeer = getRandomBeer(beers: beersViewModel.beers)
                        randomizer()
                    }
                }
            }
        }
    }
    
    /// loop with duration
    func randomizer() {
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (Timer) in
            if self.secondsRemaining > 0 {
                currentBeer = getRandomBeer(beers: beersViewModel.beers)
                self.secondsRemaining -= 0.1
            } else {
                Timer.invalidate()
                self.secondsRemaining = 2
            }
        }
    }
}

#Preview {
    ContentView()
}
