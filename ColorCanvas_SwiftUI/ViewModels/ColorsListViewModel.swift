//
//  ColorsListViewModel.swift
//  ColorCanvas_SwiftUI
//
//  Created by Alex Cevallos on 8/2/26.
//

import SwiftUI

struct ColorsListViewModel {
    
    // MARK: - Properties

    private let colorsDataBase: [Color] = [.red, .green, .blue, .yellow, .purple, .brown, .orange, .mint, .pink, .indigo, .cyan, .teal]
    
    private(set) var colorsInUse: [Color] = []

    // MARK: - Methods

    mutating func addRandomColor() {
        let colorToUse = colorsDataBase[Int.random(in: 0..<colorsDataBase.count)]
        colorsInUse.append(colorToUse)
    }
    
    mutating func clearAllColors() {
        colorsInUse = []
    }
}
