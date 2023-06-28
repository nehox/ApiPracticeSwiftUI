//
//  BeerViewModel.swift
//  ApiPracticeswiftUI
//
//  Created by Julien Ficerai on 16/03/2022.
//

import Foundation
import Combine
import Alamofire
import BeersPackage

class BeerViewModel: ObservableObject {
    
    @Published var beers: [Beer] = [Beer]()
    
    init () {
        geetBeers()
    }
    
    func geetBeers() {
        AF.request("https://api.punkapi.com/v2/beers").response { response in
            self.beers = try! JSONDecoder().decode([Beer].self, from: response.data!)
        }
    }
    
}
