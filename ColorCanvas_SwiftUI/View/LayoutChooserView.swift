//
//  LayoutChooserView.swift
//  ColorCanvas_SwiftUI
//
//  Created by Alex Cevallos on 8/4/26.
//

import SwiftUI

struct LayoutChooserView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    ContentView()
                } label: {
                    Text("List view")
                }

                NavigationLink {
                    GridColorView()
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
