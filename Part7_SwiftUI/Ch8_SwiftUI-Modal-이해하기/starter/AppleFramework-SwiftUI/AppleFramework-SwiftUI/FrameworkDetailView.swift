//
//  FrameworkDetailView.swift
//  AppleFramework-SwiftUI
//
//  Created by YangJeongMu on 9/6/25.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @Binding var framework: AppleFramework?
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            if let framework = framework {
                Image(framework.imageName)
                Text(framework.name)
                Text(framework.description)
                
            } else {
                Text("noting selected")
            }
           
            Button {
                print(" ----> Tapped")
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Button")
            }
        }
        .onAppear {
            print("Detail View - on appear \(presentationMode.wrappedValue.isPresented)")
        }
        .onDisappear {
            print("Detail View - on Disappear\(presentationMode.wrappedValue.isPresented)")
            
        }
    }
}

#Preview {
    FrameworkDetailView(framework:
            .constant(AppleFramework.list[0]))
}
