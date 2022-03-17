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
    let food_pairing: [String]
}
