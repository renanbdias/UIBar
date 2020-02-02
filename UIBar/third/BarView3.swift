//
//  BarView3.swift
//  UIBar
//
//  Created by Renan Benatti Dias on 10/09/19.
//  Copyright © 2019 Renan Benatti Dias. All rights reserved.
//

import SwiftUI

struct BarView3: View {
    
    @State var selected: Int = 0
    
    var iconSpacing: CGFloat = 40
    var viewModels: [IconView3ViewModel]
    
    var body: some View {
        HStack(spacing: iconSpacing) {
            ForEach(viewModels) { viewModel in
                IconView3(viewModel: viewModel)
                    .onTapGesture {
                        self.updateViewModels(selectedTag: viewModel.tag)
                        self.selected = viewModel.tag
                    }
            }
        }
        .animation(.easeInOut(duration: 0.2))
//        .animation(.easeInOut)
    }
    
    private func updateViewModels(selectedTag: Int) {
        viewModels.forEach {
            $0.selected = $0.tag == selectedTag
        }
    }
}

struct BarView3_Previews: PreviewProvider {
    static var previews: some View {
        BarView3(viewModels: [
            IconView3ViewModel(tag: 0, selected: true, icon: Image(systemName: "faceid"), color: .yellow, title: "Home"),
            IconView3ViewModel(tag: 1, selected: false, icon: Image(systemName: "icloud"), color: .blue, title: "Logger"),
            IconView3ViewModel(tag: 2, selected: false, icon: Image(systemName: "message"), color: .purple, title: "Documents"),
            IconView3ViewModel(tag: 3, selected: false, icon: Image(systemName: "safari"), color: .green, title: "Timer")
        ])
    }
}
