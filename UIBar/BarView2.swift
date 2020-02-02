//
//  BarView2.swift
//  UIBar
//
//  Created by Renan Benatti Dias on 08/09/19.
//  Copyright © 2019 Renan Benatti Dias. All rights reserved.
//

import SwiftUI

struct BarView2: View {
    
    @State var viewModels: [IconView2ViewModel]
    
    var body: some View {
        HStack(spacing: 40) {
            ForEach(viewModels) { viewModel in
                IconView2(viewModel: viewModel)
                    .onTapGesture {
                        self.didTap(viewModel: viewModel)
                    }
            }
        }
        .animation(.easeInOut(duration: 0.2))
    }
    
    func didTap(viewModel: IconView2ViewModel) {
        if !viewModel.selected {
            viewModel.selected = true
            self.viewModels.forEach { vm in
                if vm !== viewModel {
                    vm.selected = false
                }
            }
        }
    }
}

struct BarView2_Previews: PreviewProvider {
    static var previews: some View {
        BarView2(viewModels: [
            IconView2ViewModel(tag: 0, selected: true, icon: Image(systemName: "faceid"), color: .yellow, title: "Home"),
            IconView2ViewModel(tag: 1, selected: false, icon: Image(systemName: "icloud"), color: .blue, title: "Logger"),
            IconView2ViewModel(tag: 2, selected: false, icon: Image(systemName: "message"), color: .purple, title: "Documents"),
            IconView2ViewModel(tag: 3, selected: false, icon: Image(systemName: "safari"), color: .green, title: "Timer")
        ])
    }
}
