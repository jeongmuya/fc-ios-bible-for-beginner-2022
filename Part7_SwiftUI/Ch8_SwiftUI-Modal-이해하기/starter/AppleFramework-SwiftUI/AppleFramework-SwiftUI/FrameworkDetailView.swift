//
//  FrameworkDetailView.swift
//  AppleFramework-SwiftUI
//
//  Created by YangJeongMu on 9/6/25.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @Binding var framework: AppleFramework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
            Text(framework.name)
            Text(framework.description)
            
            Button {
                print(" ----> Tapped")
            } label: {
                Text("Button")
            }
        }
    }
}

#Preview {
    FrameworkDetailView(framework:
            .constant(AppleFramework.list[0]))
}
