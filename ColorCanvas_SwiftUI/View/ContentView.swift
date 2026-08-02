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
            Group {
                if colorsListViewModel.colorsInUse.isEmpty {
                    ContentUnavailableView(
                        "No Colors",
                        systemImage: "paintpalette",
                        description: Text("Tap the plus button to add a color")
                    )
                } else {
                    List {
                        ForEach(colorsListViewModel.colorsInUse, id: \.self) {
                            element in
                            element
                                .listRowInsets(EdgeInsets())
                        }
                    }
                }
            }.toolbar {
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
