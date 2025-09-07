//
//  FrameworkDetailViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by YangJeongMu on 9/7/25.
//

import Foundation
import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
    @Published var framework: AppleFramework
    @Published var isSafariPresented: Bool = false
    
    init(framework: AppleFramework) {
        self.framework = framework
    }
}
