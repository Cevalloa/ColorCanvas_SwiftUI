//
//  ContentView.swift
//  ColorCanvas_SwiftUI
//
//  Created by Alex Cevallos on 8/1/26.
//

import SwiftUI

let colorsListViewModel = ColorsListViewModel()

struct ContentView: View {
    var body: some View {
        List {
            ForEach(colorsListViewModel.colorsInUse, id: \.self) { element in
                RoundedRectangle(cornerRadius: 12).fill(element)
            }
        }
    }
}

#Preview {
    ContentView()
}
