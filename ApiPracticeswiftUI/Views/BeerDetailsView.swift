//
//  BeerDetailsView.swift
//  ApiPracticeswiftUI
//
//  Created by Julien Ficerai on 16/03/2022.
//

import SwiftUI

struct BeerDetailsView: View {
    var beer : Beer?
    
    var body: some View {
        Text(beer?.name ?? "")
        Text(beer?.image_url ?? "")
    }
}
