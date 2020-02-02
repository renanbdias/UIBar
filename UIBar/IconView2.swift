//
//  IconView2.swift
//  UIBar
//
//  Created by Renan Benatti Dias on 08/09/19.
//  Copyright © 2019 Renan Benatti Dias. All rights reserved.
//

import SwiftUI

final class IconView2ViewModel: Identifiable, ObservableObject {
    
    var tag: Int
    
    var id: Int {
        return tag
    }
    
    var selected: Bool
    var icon: Image
    var color: Color
    var title: String
    
    init(tag: Int, selected: Bool, icon: Image, color: Color, title: String) {
        self.tag = tag
        self.selected = selected
        self.icon = icon
        self.color = color
        self.title = title
    }
}

struct IconView2: View {
    
    var viewModel: IconView2ViewModel
    
    var body: some View {
        HStack {
            viewModel.icon
            if viewModel.selected {
                Text(viewModel.title)
            }
        }
        .padding(8)
        .background(
            viewModel.color
                .opacity(viewModel.selected ? 0.2 : 0.0)    // MARK: - Leave to the viewModel?
                .cornerRadius(50)
        )
    }
}

struct IconView2_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            IconView2(viewModel: IconView2ViewModel(tag: 0, selected: true, icon: Image(systemName: "faceid"), color: .yellow, title: "Home"))
            IconView2(viewModel: IconView2ViewModel(tag: 1, selected: true, icon: Image(systemName: "faceid"), color: .blue, title: "Documents"))
            IconView2(viewModel: IconView2ViewModel(tag: 2, selected: true, icon: Image(systemName: "faceid"), color: .purple, title: "Logger"))
            IconView2(viewModel: IconView2ViewModel(tag: 3, selected: false, icon: Image(systemName: "faceid"), color: .yellow, title: "Logger"))
        }
        .previewLayout(.sizeThatFits)
    }
}
