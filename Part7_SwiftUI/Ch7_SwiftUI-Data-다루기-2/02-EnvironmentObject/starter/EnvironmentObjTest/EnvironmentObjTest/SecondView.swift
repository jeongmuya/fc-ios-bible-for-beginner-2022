//
//  SecondView.swift
//  EnvironmentObjTest
//
//  Created by YangJeongMu on 9/5/25.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack(spacing: 30) {
    
            NavigationLink {
                ThirdView()
            } label: {
                Text("Third View")
            }
        }
        .navigationTitle("Second View")
    }
}

#Preview {
    SecondView()
}
