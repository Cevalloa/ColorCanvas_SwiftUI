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
                if !colorsListViewModel.colorsInUse.isEmpty {
                    ForEach(colorsListViewModel.colorsInUse, id: \.self) { element in
                        element
                            .listRowInsets(EdgeInsets())
                    }
                } else {
                    Text("Tap on the top right to add a color!")
                }
            }
            .toolbar {
                Button("Add color", systemImage: "plus") {
                    colorsListViewModel.addRandomColor()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
