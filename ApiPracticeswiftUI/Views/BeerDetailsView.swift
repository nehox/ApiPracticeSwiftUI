//
//  BeerDetailsView.swift
//  ApiPracticeswiftUI
//
//  Created by Julien Ficerai on 16/03/2022.
//

import SwiftUI

struct BeerDetailsView: View {
    var beer : Beer
    
    var body: some View {
        ZStack {
            Color(hex: 0xE7E7E7).ignoresSafeArea(.all)
            VStack {
                
                Text(beer.name ?? "").foregroundColor(Color(hex: 0x6A7A8E))
                
                
                if let urlStr = beer.image_url,
                let url = URL(string: urlStr),
                let data = try? Data(contentsOf: url),
                let uiimage = UIImage(data: data){
                    Image(uiImage: uiimage).resizable().frame(width: 75, height: 225).padding()
                }
                
                Text(beer.description ?? "").foregroundColor(Color(hex: 0x6A7A8E)).padding()
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(beer.food_pairing, id: \.self) { food in
                            Spacer()
                            Text(food)
                                .padding(10)
                                .background(Color(hex: 0x46A2B7))
                                .cornerRadius(5)
                                .foregroundColor(Color(hex: 0xE7E7E7))
                        }
                    }
                }
            }
        }
    }
}

struct BeerDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BeerDetailsView(beer: Beer(id: 1, name: "Buzz", tagline: "A Real Bitter Experience.", first_brewed: "09/2007", image_url: "https://images.punkapi.com/v2/keg.png", description: "A light, crisp and bitter IPA brewed with English and American hops. A small batch brewed only once.", abv: 4.5, ibu: 60, ebc: 20, srm: 10, ph: 4.4, attenuation_level: 75, food_pairing: ["Spicy chicken tikka masala","Grilled chicken quesadilla","Caramel toffee cake"]))
    }
}
