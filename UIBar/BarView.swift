//
//  BarView.swift
//  UIBar
//
//  Created by Renan Benatti Dias on 08/09/19.
//  Copyright © 2019 Renan Benatti Dias. All rights reserved.
//

import SwiftUI

struct BarView: View {
    
    @State var first = true
    @State var second = false
    @State var third = false
    @State var fourth = false
    
    var body: some View {
//        HStack(alignment: .bottom)
//        HStack(spacing: 40)
        HStack(spacing: 40) {
            IconView(selected: first, iconName: "faceid", color: .yellow, title: "Home")
                .onTapGesture {
                    if !self.first {
                        self.first.toggle()
                        if self.second {
                            self.second.toggle()
                        }
                        if self.third {
                            self.third.toggle()
                        }
                        if self.fourth {
                            self.fourth.toggle()
                        }
                    }
                }
            IconView(selected: second, iconName: "icloud", color: .blue, title: "Logger")
                .onTapGesture {
                    if !self.second {
                        self.second.toggle()
                        if self.first {
                            self.first.toggle()
                        }
                        if self.third {
                            self.third.toggle()
                        }
                        if self.fourth {
                            self.fourth.toggle()
                        }
                    }
                }
            IconView(selected: third, iconName: "message", color: .purple, title: "Documents")
                .onTapGesture {
                    if !self.third {
                        self.third.toggle()
                        if self.first {
                            self.first.toggle()
                        }
                        if self.second {
                            self.second.toggle()
                        }
                        if self.fourth {
                            self.fourth.toggle()
                        }
                    }
                }
            
            IconView(selected: fourth, iconName: "safari", color: .green, title: "Timer")
                .onTapGesture {
                    if !self.fourth {
                        self.fourth.toggle()
                        if self.first {
                            self.first.toggle()
                        }
                        if self.second {
                            self.second.toggle()
                        }
                        if self.third {
                            self.third.toggle()
                        }
                    }
                }
        }
        .animation(.easeInOut(duration: 0.2))
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView()
    }
}
