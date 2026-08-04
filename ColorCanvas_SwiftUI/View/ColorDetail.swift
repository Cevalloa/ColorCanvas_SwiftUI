//
//  ColorDetail.swift
//  ColorCanvas_SwiftUI
//
//  Created by Alex Cevallos on 8/2/26.
//

import SwiftUI

struct ColorDetail: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var colorsDetailViewModel: ColorsDetailViewModel
    @Binding var colorsListViewModel: ColorsListViewModel

    @State private var isShowingSheet = false
    @State private var selectedColor: Color = .blue

    var body: some View {
        VStack {
            Text("Welcome to the color detail view!")
            HStack {
                Text("Here is your color:")
                Rectangle().foregroundStyle(colorsListViewModel.color(at: colorsDetailViewModel.currentIndex) ?? .clear)
                    .frame(width: 50, height: 50)
            }
            Text(
                "This is one color out of \(colorsListViewModel.colorsInUse.count)"
            )
            HStack {
                Button("Change this color") {
                    self.selectedColor = colorsDetailViewModel.color.color
                    isShowingSheet = true
                }.sheet(isPresented: $isShowingSheet) {
                    addColorView()
                        .presentationDetents([.medium])
                }
                Button("Delete all colors!", role: .destructive) {
                    colorsListViewModel.clearAllColors()
                    dismiss()
                }
            }
        }
    }

    func addColorView() -> some View {
        NavigationStack {
            VStack {
                ColorPicker(
                    "Add a color",
                    selection: $selectedColor,
                    supportsOpacity: false
                ).padding()
                Circle().foregroundStyle(selectedColor)
            }.toolbar {
                Button("Confirm") {
                    colorsListViewModel.updateColor(
                        index: colorsDetailViewModel.currentIndex,
                        color: selectedColor
                    )
                    isShowingSheet = false
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var colorsListViewModel = ColorsListViewModel()
    let colorsDetailViewModel = ColorsDetailViewModel(
        color: ColorModel(color: .cyan),
        currentIndex: 0
    )
    ColorDetail(
        colorsDetailViewModel: colorsDetailViewModel,
        colorsListViewModel: $colorsListViewModel
    )
}
