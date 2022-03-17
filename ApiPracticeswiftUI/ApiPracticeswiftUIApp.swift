//
//  ApiPracticeswiftUIApp.swift
//  ApiPracticeswiftUI
//
//  Created by Julien Ficerai on 16/03/2022.
//

import SwiftUI

@main
struct ApiPracticeswiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView().background(Color(hex: 0xc7c7c7))
        }
    }
}


extension Color {
    init(hex: Int, opacity: Double = 1.0) {
        let red = Double((hex & 0xff0000) >> 16) / 255.0
        let green = Double((hex & 0xff00) >> 8) / 255.0
        let blue = Double((hex & 0xff) >> 0) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}
