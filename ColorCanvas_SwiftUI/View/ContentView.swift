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
                        ForEach(colorsListViewModel.colorsInUse.enumerated(), id:\.element.id) {
                            index, colorModel in
                            NavigationLink {
                                let colorsDetailViewModel =
                                ColorsDetailViewModel(color: colorModel, currentIndex: index)
                                ColorDetail(
                                    colorsDetailViewModel: colorsDetailViewModel,
                                    colorsListViewModel: $colorsListViewModel
                                )
                            } label: {
                                Color.clear
                            }.listRowInsets(EdgeInsets())
                                .transition(
                                    .move(edge: .top)
                                        .combined(with: .opacity)
                                )
                                .listRowBackground(colorModel.color)
                        }
                    }
                }
            }.toolbar {
                Button("Alert", systemImage: "bell") {
                    isShowingHelloAlert = true
                }
                Button("Delete all", systemImage: "trash", role: .destructive) {
                    colorsListViewModel.clearAllColors()
                }
                Button("Add color", systemImage: "plus") {
                    withAnimation(.easeInOut) {
                        colorsListViewModel.addRandomColor()
                    }
                }
            }
            .navigationTitle("Colors")
            .alert("Good day!", isPresented: $isShowingHelloAlert) {
                Button("Okay") {}
            } message: {
                Text("Hope you have a great day!")
            }
        }
    }
}

#Preview {
    ContentView()
}
