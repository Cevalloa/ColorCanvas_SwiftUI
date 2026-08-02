//
//  ContentView.swift
//  ColorCanvas_SwiftUI
//
//  Created by Alex Cevallos on 8/1/26.
//

import SwiftUI

struct ContentView: View {
    @State private var colorsListViewModel = ColorsListViewModel()

    var body: some View {
        NavigationStack {
            List {
                ForEach(colorsListViewModel.colorsInUse, id: \.self) { element in
                    element
                        .listRowInsets(EdgeInsets())
                }
            }
            .toolbar {
                Button("", systemImage: "plus") {
                    colorsListViewModel.addRandomColor()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
