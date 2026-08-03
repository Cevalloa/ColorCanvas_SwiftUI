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
    
    private(set) var colorsInUse: [ColorModel] = []

    // MARK: - Methods

    mutating func addRandomColor() {
        let colorToUse = colorsDataBase[Int.random(in: 0..<colorsDataBase.count)]
        let colorModel = ColorModel(color: colorToUse)
        colorsInUse.append(colorModel)
    }
    
    mutating func clearAllColors() {
        colorsInUse = []
    }
    
    mutating func updateColor(index: Int, color: Color) {
        guard index < colorsInUse.count else {
            return
        }
        
        colorsInUse[index] = ColorModel(color: color)
    }
}
