//
//  ColorsListViewModel.swift
//  ColorCanvas_SwiftUI
//
//  Created by Alex Cevallos on 8/2/26.
//

import SwiftUI

struct ColorsListViewModel {
    
    private let colorsDataBase: [Color] = [.red, .green, .blue, .yellow, .purple, .brown, .orange, .mint, .pink, .indigo, .cyan]
    
    var colorsInUse: [Color] = [.green, .cyan]
}
