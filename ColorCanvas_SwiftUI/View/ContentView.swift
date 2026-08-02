//
//  ContentView.swift
//  ColorCanvas_SwiftUI
//
//  Created by Alex Cevallos on 8/1/26.
//

import SwiftUI

struct ContentView: View {
    @State private var colorsListViewModel = ColorsListViewModel()
    @State private var isShowingHelloAlert = false

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
                            color in
                            NavigationLink {
                                ColorDetail()
                            } label: {
                                Color.clear
                            }.listRowInsets(EdgeInsets())
                                .transition(
                                    .move(edge: .top)
                                        .combined(with: .opacity)
                                )
                                .listRowBackground(color)

                        }
                    }
                }
            }.toolbar {
                Button("Alert", systemImage: "bell") {
                    isShowingHelloAlert = true
                }
                Button("Add color", systemImage: "plus") {
                    withAnimation(.easeInOut) {
                        colorsListViewModel.addRandomColor()
                    }
                }
            }
            .navigationTitle("Colors")
            .alert("Hello", isPresented: $isShowingHelloAlert) {
                Button("Okay") {}
            } message: {
                Text("Hope you have a great day!")
            }
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    ContentView()
}
