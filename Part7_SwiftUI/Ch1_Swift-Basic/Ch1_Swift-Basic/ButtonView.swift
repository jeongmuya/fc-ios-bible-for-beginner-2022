//
//  ButtonView.swift
//  Ch1_Swift-Basic
//
//  Created by YangJeongMu on 8/23/25.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button{
            print("Button tapped")
        } label: {
            Text("Click Me")
        }
    }
}

#Preview {
    ButtonView()
}
