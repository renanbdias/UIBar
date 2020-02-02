//
//  IconView.swift
//  UIBar
//
//  Created by Renan Benatti Dias on 08/09/19.
//  Copyright © 2019 Renan Benatti Dias. All rights reserved.
//

import SwiftUI

struct IconView: View {
    
    var selected: Bool
    var iconName: String
    var color: Color
    var title: String
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
            if selected {
                Text(title)
            }
        }
        .padding(8)
        .background(
            color
                .opacity(selected ? 0.2 : 0.0)
                .cornerRadius(50)
        )
    }
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            IconView(selected: true, iconName: "faceid", color: Color.yellow, title: "Home")
            IconView(selected: true, iconName: "faceid", color: Color.blue, title: "Documents")
            IconView(selected: false, iconName: "faceid", color: Color.blue, title: "Logger")
        }
        .previewLayout(.sizeThatFits)
    }
}
