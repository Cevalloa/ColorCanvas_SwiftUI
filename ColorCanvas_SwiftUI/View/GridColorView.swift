//
//  GridColorView.swift
//  ColorCanvas_SwiftUI
//
//  Created by Alex Cevallos on 8/4/26.
//

import SwiftUI

struct GridColorView: View {
    @Binding var colorsListViewModel: ColorsListViewModel

    private let columns = [
        GridItem(.adaptive(minimum: 120), spacing: 12)
    ]

    var body: some View {
        Group {
            if colorsListViewModel.colorsInUse.isEmpty {
                ContentUnavailableView(
                    "No Colors",
                    systemImage: "square.grid.2x2",
                    description: Text("Tap the plus to add a color")
                )
            } else {
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(colorsListViewModel.colorsInUse) { colorModel in
                            Rectangle().fill(colorModel.color).aspectRatio(1, contentMode: .fit)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var colorsListViewModel = ColorsListViewModel()
    GridColorView(colorsListViewModel: $colorsListViewModel)
}
