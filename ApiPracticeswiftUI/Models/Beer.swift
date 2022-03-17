//
//  Beer.swift
//  ApiPracticeswiftUI
//
//  Created by Julien Ficerai on 16/03/2022.
//

struct Beer: Codable, Identifiable {
    let id: Int?
    let name, tagline, first_brewed : String?
    let image_url, description: String?
    let abv: Float?
    let ibu, ebc: Float?
    let srm: Float?
    let ph: Double?
    let attenuation_level: Float?
    //let volume, boilVolume: BoilVolume
    //let method: Method
    //let ingredients: Ingredients
    let food_pairing: [String]
    //let brewers_tips, contributedBy: String
}

// MARK: - BoilVolume
struct BoilVolume: Codable {
   let value: Double
   let unit: String
}

// MARK: - Ingredients
struct Ingredients: Codable {
   let malt: [Malt]
   let hops: [Hop]
   let yeast: String
}

// MARK: - Hop
struct Hop: Codable {
   let name: String
   let amount: BoilVolume
   let add, attribute: String
}

// MARK: - Malt
struct Malt: Codable {
   let name: String
   let amount: BoilVolume
}

// MARK: - Method
struct Method: Codable {
   let mashTemp: [MashTemp]
   let fermentation: Fermentation
}

// MARK: - Fermentation
struct Fermentation: Codable {
   let temp: BoilVolume
}

// MARK: - MashTemp
struct MashTemp: Codable {
   let temp: BoilVolume
   let duration: Int
}
