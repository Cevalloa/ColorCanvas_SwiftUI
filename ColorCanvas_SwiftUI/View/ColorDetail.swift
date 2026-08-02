//
//  ColorDetail.swift
//  ColorCanvas_SwiftUI
//
//  Created by Alex Cevallos on 8/2/26.
//

import SwiftUI

struct ColorDetail: View {
    
    let colorsDetailViewModel: ColorsDetailViewModel
    
    var body: some View {
        Text("Welcome to the color detail view!")
    }
}

#Preview {
    let colorsDetailViewModel = ColorsDetailViewModel(color: .cyan)
    ColorDetail(colorsDetailViewModel: colorsDetailViewModel)
}
