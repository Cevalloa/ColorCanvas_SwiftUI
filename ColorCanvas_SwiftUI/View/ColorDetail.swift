//
//  ColorDetail.swift
//  ColorCanvas_SwiftUI
//
//  Created by Alex Cevallos on 8/2/26.
//

import SwiftUI

struct ColorDetail: View {
    
    let colorsDetailViewModel: ColorsDetailViewModel
    @Binding var colorsListViewModel: ColorsListViewModel
    
    var body: some View {
        
        VStack {
            Text("Welcome to the color detail view!")
            HStack {
                Text("Here is your color:")
                Rectangle().foregroundStyle(colorsDetailViewModel.color)
                    .frame(width:50, height:50)
            }
            Text("This is one color out of \(colorsListViewModel.colorsInUse.count)")
            HStack {
                Button("Delete all colors!", role: .destructive) {
                    colorsListViewModel.clearAllColors()
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var colorsListViewModel = ColorsListViewModel()
    let colorsDetailViewModel = ColorsDetailViewModel(color: .cyan)
    ColorDetail(colorsDetailViewModel: colorsDetailViewModel, colorsListViewModel: $colorsListViewModel)
}
