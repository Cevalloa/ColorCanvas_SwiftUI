//
//  LayoutChooserView.swift
//  ColorCanvas_SwiftUI
//
//  Created by Alex Cevallos on 8/4/26.
//

import SwiftUI

struct LayoutChooserView: View {
    @State private var colorsListViewModel = ColorsListViewModel()

    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    ContentView(colorsListViewModel: $colorsListViewModel)
                } label: {
                    Text("List view")
                }

                NavigationLink {
                    GridColorView(colorsListViewModel: $colorsListViewModel)
                } label: {
                    Text("Grid View")
                }
            }
        }
    }
}

#Preview {
    LayoutChooserView()
}
